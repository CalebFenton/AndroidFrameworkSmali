.class final Lcom/android/server/DeviceIdleController$Constants;
.super Landroid/database/ContentObserver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Constants"
.end annotation


# static fields
.field private static final KEY_IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "idle_after_inactive_to"

.field private static final KEY_IDLE_FACTOR:Ljava/lang/String; = "idle_factor"

.field private static final KEY_IDLE_PENDING_FACTOR:Ljava/lang/String; = "idle_pending_factor"

.field private static final KEY_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "idle_pending_to"

.field private static final KEY_IDLE_TIMEOUT:Ljava/lang/String; = "idle_to"

.field private static final KEY_INACTIVE_TIMEOUT:Ljava/lang/String; = "inactive_to"

.field private static final KEY_MAX_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "max_idle_pending_to"

.field private static final KEY_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "max_idle_to"

.field private static final KEY_MAX_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "max_temp_app_whitelist_duration"

.field private static final KEY_MIN_TIME_TO_ALARM:Ljava/lang/String; = "min_time_to_alarm"

.field private static final KEY_MMS_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "mms_temp_app_whitelist_duration"

.field private static final KEY_MOTION_INACTIVE_TIMEOUT:Ljava/lang/String; = "motion_inactive_to"

.field private static final KEY_SENSING_TIMEOUT:Ljava/lang/String; = "sensing_to"

.field private static final KEY_SMS_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "sms_temp_app_whitelist_duration"


# instance fields
.field public IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public IDLE_FACTOR:F

.field public IDLE_PENDING_FACTOR:F

.field public IDLE_PENDING_TIMEOUT:J

.field public IDLE_TIMEOUT:J

.field public INACTIVE_TIMEOUT:J

.field public MAX_IDLE_PENDING_TIMEOUT:J

.field public MAX_IDLE_TIMEOUT:J

.field public MAX_TEMP_APP_WHITELIST_DURATION:J

.field public MIN_TIME_TO_ALARM:J

.field public MMS_TEMP_APP_WHITELIST_DURATION:J

.field public MOTION_INACTIVE_TIMEOUT:J

.field public SENSING_TIMEOUT:J

.field public SMS_TEMP_APP_WHITELIST_DURATION:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "resolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    .line 400
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 397
    new-instance v0, Landroid/util/KeyValueListParser;

    #@7
    const/16 v1, 0x2c

    #@9
    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    #@c
    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@e
    .line 401
    iput-object p3, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    #@10
    .line 402
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    #@12
    .line 403
    const-string/jumbo v1, "device_idle_constants"

    #@15
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x0

    #@1a
    .line 402
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1d
    .line 404
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V

    #@20
    .line 399
    return-void
.end method

.method private updateConstants()V
    .locals 6

    #@0
    .prologue
    .line 413
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    monitor-enter v2

    #@3
    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@5
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    #@7
    .line 416
    const-string/jumbo v4, "device_idle_constants"

    #@a
    .line 415
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v1, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 423
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@13
    const-string/jumbo v3, "inactive_to"

    #@16
    .line 424
    const-wide/32 v4, 0x1b7740

    #@19
    .line 423
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@1c
    move-result-wide v4

    #@1d
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    #@1f
    .line 425
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@21
    const-string/jumbo v3, "sensing_to"

    #@24
    .line 426
    const-wide/32 v4, 0x493e0

    #@27
    .line 425
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@2a
    move-result-wide v4

    #@2b
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    #@2d
    .line 427
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@2f
    const-string/jumbo v3, "motion_inactive_to"

    #@32
    .line 428
    const-wide/32 v4, 0x927c0

    #@35
    .line 427
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@38
    move-result-wide v4

    #@39
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    #@3b
    .line 429
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@3d
    const-string/jumbo v3, "idle_after_inactive_to"

    #@40
    .line 430
    const-wide/32 v4, 0x1b7740

    #@43
    .line 429
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@46
    move-result-wide v4

    #@47
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    #@49
    .line 431
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@4b
    const-string/jumbo v3, "idle_pending_to"

    #@4e
    .line 432
    const-wide/32 v4, 0x493e0

    #@51
    .line 431
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@54
    move-result-wide v4

    #@55
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    #@57
    .line 433
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@59
    const-string/jumbo v3, "max_idle_pending_to"

    #@5c
    .line 434
    const-wide/32 v4, 0x927c0

    #@5f
    .line 433
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@62
    move-result-wide v4

    #@63
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    #@65
    .line 435
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@67
    const-string/jumbo v3, "idle_pending_factor"

    #@6a
    .line 436
    const/high16 v4, 0x40000000    # 2.0f

    #@6c
    .line 435
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    #@6f
    move-result v1

    #@70
    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    #@72
    .line 437
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@74
    const-string/jumbo v3, "idle_to"

    #@77
    .line 438
    const-wide/32 v4, 0x36ee80

    #@7a
    .line 437
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@7d
    move-result-wide v4

    #@7e
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    #@80
    .line 439
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@82
    const-string/jumbo v3, "max_idle_to"

    #@85
    .line 440
    const-wide/32 v4, 0x1499700

    #@88
    .line 439
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@8b
    move-result-wide v4

    #@8c
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    #@8e
    .line 441
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@90
    const-string/jumbo v3, "idle_factor"

    #@93
    .line 442
    const/high16 v4, 0x40000000    # 2.0f

    #@95
    .line 441
    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    #@98
    move-result v1

    #@99
    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    #@9b
    .line 443
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@9d
    const-string/jumbo v3, "min_time_to_alarm"

    #@a0
    .line 444
    const-wide/32 v4, 0x36ee80

    #@a3
    .line 443
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@a6
    move-result-wide v4

    #@a7
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    #@a9
    .line 445
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@ab
    .line 446
    const-string/jumbo v3, "max_temp_app_whitelist_duration"

    #@ae
    const-wide/32 v4, 0x493e0

    #@b1
    .line 445
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@b4
    move-result-wide v4

    #@b5
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    #@b7
    .line 447
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@b9
    .line 448
    const-string/jumbo v3, "mms_temp_app_whitelist_duration"

    #@bc
    const-wide/32 v4, 0xea60

    #@bf
    .line 447
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@c2
    move-result-wide v4

    #@c3
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    #@c5
    .line 449
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@c7
    .line 450
    const-string/jumbo v3, "sms_temp_app_whitelist_duration"

    #@ca
    const-wide/16 v4, 0x4e20

    #@cc
    .line 449
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@cf
    move-result-wide v4

    #@d0
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d2
    monitor-exit v2

    #@d3
    .line 412
    return-void

    #@d4
    .line 417
    :catch_0
    move-exception v0

    #@d5
    .line 420
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string/jumbo v1, "DeviceIdleController"

    #@d8
    const-string/jumbo v3, "Bad device idle settings"

    #@db
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@de
    goto/16 :goto_0

    #@e0
    .line 413
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    #@e1
    monitor-exit v2

    #@e2
    throw v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 455
    const-string/jumbo v0, "  Settings:"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 457
    const-string/jumbo v0, "    "

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    const-string/jumbo v0, "inactive_to"

    #@f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    const-string/jumbo v0, "="

    #@15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 458
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    #@1a
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1d
    .line 459
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@20
    .line 461
    const-string/jumbo v0, "    "

    #@23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    const-string/jumbo v0, "sensing_to"

    #@29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    const-string/jumbo v0, "="

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    .line 462
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    #@34
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@37
    .line 463
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3a
    .line 465
    const-string/jumbo v0, "    "

    #@3d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    const-string/jumbo v0, "motion_inactive_to"

    #@43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    const-string/jumbo v0, "="

    #@49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    .line 466
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    #@4e
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@51
    .line 467
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@54
    .line 469
    const-string/jumbo v0, "    "

    #@57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    const-string/jumbo v0, "idle_after_inactive_to"

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    const-string/jumbo v0, "="

    #@63
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    .line 470
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    #@68
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@6b
    .line 471
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6e
    .line 473
    const-string/jumbo v0, "    "

    #@71
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    const-string/jumbo v0, "idle_pending_to"

    #@77
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    const-string/jumbo v0, "="

    #@7d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@80
    .line 474
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    #@82
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@85
    .line 475
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@88
    .line 477
    const-string/jumbo v0, "    "

    #@8b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    const-string/jumbo v0, "max_idle_pending_to"

    #@91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    const-string/jumbo v0, "="

    #@97
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    .line 478
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    #@9c
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@9f
    .line 479
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@a2
    .line 481
    const-string/jumbo v0, "    "

    #@a5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    const-string/jumbo v0, "idle_pending_factor"

    #@ab
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    const-string/jumbo v0, "="

    #@b1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b4
    .line 482
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    #@b6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    #@b9
    .line 484
    const-string/jumbo v0, "    "

    #@bc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bf
    const-string/jumbo v0, "idle_to"

    #@c2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c5
    const-string/jumbo v0, "="

    #@c8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cb
    .line 485
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    #@cd
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@d0
    .line 486
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@d3
    .line 488
    const-string/jumbo v0, "    "

    #@d6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d9
    const-string/jumbo v0, "max_idle_to"

    #@dc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@df
    const-string/jumbo v0, "="

    #@e2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e5
    .line 489
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    #@e7
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@ea
    .line 490
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@ed
    .line 492
    const-string/jumbo v0, "    "

    #@f0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f3
    const-string/jumbo v0, "idle_factor"

    #@f6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f9
    const-string/jumbo v0, "="

    #@fc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ff
    .line 493
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    #@101
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    #@104
    .line 495
    const-string/jumbo v0, "    "

    #@107
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10a
    const-string/jumbo v0, "min_time_to_alarm"

    #@10d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@110
    const-string/jumbo v0, "="

    #@113
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@116
    .line 496
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    #@118
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@11b
    .line 497
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@11e
    .line 499
    const-string/jumbo v0, "    "

    #@121
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@124
    const-string/jumbo v0, "max_temp_app_whitelist_duration"

    #@127
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12a
    const-string/jumbo v0, "="

    #@12d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@130
    .line 500
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    #@132
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@135
    .line 501
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@138
    .line 503
    const-string/jumbo v0, "    "

    #@13b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13e
    const-string/jumbo v0, "mms_temp_app_whitelist_duration"

    #@141
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@144
    const-string/jumbo v0, "="

    #@147
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14a
    .line 504
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    #@14c
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@14f
    .line 505
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@152
    .line 507
    const-string/jumbo v0, "    "

    #@155
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@158
    const-string/jumbo v0, "sms_temp_app_whitelist_duration"

    #@15b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15e
    const-string/jumbo v0, "="

    #@161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@164
    .line 508
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    #@166
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@169
    .line 509
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@16c
    .line 454
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V

    #@3
    .line 408
    return-void
.end method
