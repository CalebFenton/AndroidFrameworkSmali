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

.field private static final KEY_LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "light_after_inactive_to"

.field private static final KEY_LIGHT_IDLE_FACTOR:Ljava/lang/String; = "light_idle_factor"

.field private static final KEY_LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:Ljava/lang/String; = "light_idle_maintenance_max_budget"

.field private static final KEY_LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:Ljava/lang/String; = "light_idle_maintenance_min_budget"

.field private static final KEY_LIGHT_IDLE_TIMEOUT:Ljava/lang/String; = "light_idle_to"

.field private static final KEY_LIGHT_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "light_max_idle_to"

.field private static final KEY_LIGHT_PRE_IDLE_TIMEOUT:Ljava/lang/String; = "light_pre_idle_to"

.field private static final KEY_LOCATING_TIMEOUT:Ljava/lang/String; = "locating_to"

.field private static final KEY_LOCATION_ACCURACY:Ljava/lang/String; = "location_accuracy"

.field private static final KEY_MAX_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "max_idle_pending_to"

.field private static final KEY_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "max_idle_to"

.field private static final KEY_MAX_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "max_temp_app_whitelist_duration"

.field private static final KEY_MIN_DEEP_MAINTENANCE_TIME:Ljava/lang/String; = "min_deep_maintenance_time"

.field private static final KEY_MIN_LIGHT_MAINTENANCE_TIME:Ljava/lang/String; = "min_light_maintenance_time"

.field private static final KEY_MIN_TIME_TO_ALARM:Ljava/lang/String; = "min_time_to_alarm"

.field private static final KEY_MMS_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "mms_temp_app_whitelist_duration"

.field private static final KEY_MOTION_INACTIVE_TIMEOUT:Ljava/lang/String; = "motion_inactive_to"

.field private static final KEY_NOTIFICATION_WHITELIST_DURATION:Ljava/lang/String; = "notification_whitelist_duration"

.field private static final KEY_SENSING_TIMEOUT:Ljava/lang/String; = "sensing_to"

.field private static final KEY_SMS_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "sms_temp_app_whitelist_duration"


# instance fields
.field public IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public IDLE_FACTOR:F

.field public IDLE_PENDING_FACTOR:F

.field public IDLE_PENDING_TIMEOUT:J

.field public IDLE_TIMEOUT:J

.field public INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_FACTOR:F

.field public LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

.field public LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

.field public LIGHT_IDLE_TIMEOUT:J

.field public LIGHT_MAX_IDLE_TIMEOUT:J

.field public LIGHT_PRE_IDLE_TIMEOUT:J

.field public LOCATING_TIMEOUT:J

.field public LOCATION_ACCURACY:F

.field public MAX_IDLE_PENDING_TIMEOUT:J

.field public MAX_IDLE_TIMEOUT:J

.field public MAX_TEMP_APP_WHITELIST_DURATION:J

.field public MIN_DEEP_MAINTENANCE_TIME:J

.field public MIN_LIGHT_MAINTENANCE_TIME:J

.field public MIN_TIME_TO_ALARM:J

.field public MMS_TEMP_APP_WHITELIST_DURATION:J

.field public MOTION_INACTIVE_TIMEOUT:J

.field public NOTIFICATION_WHITELIST_DURATION:J

.field public SENSING_TIMEOUT:J

.field public SMS_TEMP_APP_WHITELIST_DURATION:J

.field private final mHasWatch:Z

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
    .line 768
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    .line 769
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 766
    new-instance v0, Landroid/util/KeyValueListParser;

    #@7
    const/16 v1, 0x2c

    #@9
    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    #@c
    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@e
    .line 770
    iput-object p3, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    #@10
    .line 771
    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@17
    move-result-object v0

    #@18
    .line 772
    const-string/jumbo v1, "android.hardware.type.watch"

    #@1b
    .line 771
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mHasWatch:Z

    #@21
    .line 773
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    #@23
    .line 774
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mHasWatch:Z

    #@25
    if-eqz v0, :cond_0

    #@27
    const-string/jumbo v0, "device_idle_constants_watch"

    #@2a
    .line 773
    :goto_0
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@2d
    move-result-object v0

    #@2e
    .line 776
    const/4 v2, 0x0

    #@2f
    .line 773
    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@32
    .line 777
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V

    #@35
    .line 768
    return-void

    #@36
    .line 775
    :cond_0
    const-string/jumbo v0, "device_idle_constants"

    #@39
    goto :goto_0
.end method

.method private updateConstants()V
    .locals 12

    #@0
    .prologue
    const/16 v6, 0xf

    #@2
    .line 786
    iget-object v7, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    #@4
    monitor-enter v7

    #@5
    .line 788
    :try_start_0
    iget-object v8, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@7
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    #@9
    .line 789
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mHasWatch:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    const-string/jumbo v1, "device_idle_constants_watch"

    #@10
    .line 788
    :goto_0
    invoke-static {v9, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v8, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 797
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@19
    .line 798
    const-string/jumbo v8, "light_after_inactive_to"

    #@1c
    .line 799
    const-wide/32 v10, 0x493e0

    #@1f
    .line 797
    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@22
    move-result-wide v8

    #@23
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    #@25
    .line 800
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@27
    const-string/jumbo v8, "light_pre_idle_to"

    #@2a
    .line 801
    const-wide/32 v10, 0x927c0

    #@2d
    .line 800
    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@30
    move-result-wide v8

    #@31
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    #@33
    .line 802
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@35
    const-string/jumbo v8, "light_idle_to"

    #@38
    .line 803
    const-wide/32 v10, 0x493e0

    #@3b
    .line 802
    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@3e
    move-result-wide v8

    #@3f
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    #@41
    .line 804
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@43
    const-string/jumbo v8, "light_idle_factor"

    #@46
    .line 805
    const/high16 v9, 0x40000000    # 2.0f

    #@48
    .line 804
    invoke-virtual {v1, v8, v9}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    #@4b
    move-result v1

    #@4c
    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    #@4e
    .line 806
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@50
    const-string/jumbo v8, "light_max_idle_to"

    #@53
    .line 807
    const-wide/32 v10, 0xdbba0

    #@56
    .line 806
    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@59
    move-result-wide v8

    #@5a
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    #@5c
    .line 808
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@5e
    .line 809
    const-string/jumbo v8, "light_idle_maintenance_min_budget"

    #@61
    .line 810
    const-wide/32 v10, 0xea60

    #@64
    .line 808
    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@67
    move-result-wide v8

    #@68
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    #@6a
    .line 811
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@6c
    .line 812
    const-string/jumbo v8, "light_idle_maintenance_max_budget"

    #@6f
    .line 813
    const-wide/32 v10, 0x493e0

    #@72
    .line 811
    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@75
    move-result-wide v8

    #@76
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    #@78
    .line 814
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@7a
    .line 815
    const-string/jumbo v8, "min_light_maintenance_time"

    #@7d
    .line 816
    const-wide/16 v10, 0x1388

    #@7f
    .line 814
    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@82
    move-result-wide v8

    #@83
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    #@85
    .line 817
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@87
    .line 818
    const-string/jumbo v8, "min_deep_maintenance_time"

    #@8a
    .line 819
    const-wide/16 v10, 0x7530

    #@8c
    .line 817
    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@8f
    move-result-wide v8

    #@90
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    #@92
    .line 820
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mHasWatch:Z

    #@94
    if-eqz v1, :cond_1

    #@96
    move v1, v6

    #@97
    :goto_2
    mul-int/lit8 v1, v1, 0x3c

    #@99
    int-to-long v8, v1

    #@9a
    const-wide/16 v10, 0x3e8

    #@9c
    mul-long v4, v8, v10

    #@9e
    .line 821
    .local v4, "inactiveTimeoutDefault":J
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@a0
    const-string/jumbo v8, "inactive_to"

    #@a3
    invoke-virtual {v1, v8, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@a6
    move-result-wide v8

    #@a7
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    #@a9
    .line 823
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@ab
    const-string/jumbo v8, "sensing_to"

    #@ae
    .line 824
    const-wide/32 v10, 0x3a980

    #@b1
    .line 823
    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@b4
    move-result-wide v8

    #@b5
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    #@b7
    .line 825
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@b9
    const-string/jumbo v8, "locating_to"

    #@bc
    .line 826
    const-wide/16 v10, 0x7530

    #@be
    .line 825
    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@c1
    move-result-wide v8

    #@c2
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    #@c4
    .line 827
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@c6
    const-string/jumbo v8, "location_accuracy"

    #@c9
    const/high16 v9, 0x41a00000    # 20.0f

    #@cb
    invoke-virtual {v1, v8, v9}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    #@ce
    move-result v1

    #@cf
    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    #@d1
    .line 828
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@d3
    const-string/jumbo v8, "motion_inactive_to"

    #@d6
    .line 829
    const-wide/32 v10, 0x927c0

    #@d9
    .line 828
    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@dc
    move-result-wide v8

    #@dd
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    #@df
    .line 830
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mHasWatch:Z

    #@e1
    if-eqz v1, :cond_2

    #@e3
    :goto_3
    mul-int/lit8 v1, v6, 0x3c

    #@e5
    int-to-long v8, v1

    #@e6
    const-wide/16 v10, 0x3e8

    #@e8
    mul-long v2, v8, v10

    #@ea
    .line 831
    .local v2, "idleAfterInactiveTimeout":J
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@ec
    const-string/jumbo v6, "idle_after_inactive_to"

    #@ef
    invoke-virtual {v1, v6, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@f2
    move-result-wide v8

    #@f3
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    #@f5
    .line 834
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@f7
    const-string/jumbo v6, "idle_pending_to"

    #@fa
    .line 835
    const-wide/32 v8, 0x493e0

    #@fd
    .line 834
    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@100
    move-result-wide v8

    #@101
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    #@103
    .line 836
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@105
    const-string/jumbo v6, "max_idle_pending_to"

    #@108
    .line 837
    const-wide/32 v8, 0x927c0

    #@10b
    .line 836
    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@10e
    move-result-wide v8

    #@10f
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    #@111
    .line 838
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@113
    const-string/jumbo v6, "idle_pending_factor"

    #@116
    .line 839
    const/high16 v8, 0x40000000    # 2.0f

    #@118
    .line 838
    invoke-virtual {v1, v6, v8}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    #@11b
    move-result v1

    #@11c
    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    #@11e
    .line 840
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@120
    const-string/jumbo v6, "idle_to"

    #@123
    .line 841
    const-wide/32 v8, 0x36ee80

    #@126
    .line 840
    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@129
    move-result-wide v8

    #@12a
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    #@12c
    .line 842
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@12e
    const-string/jumbo v6, "max_idle_to"

    #@131
    .line 843
    const-wide/32 v8, 0x1499700

    #@134
    .line 842
    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@137
    move-result-wide v8

    #@138
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    #@13a
    .line 844
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@13c
    const-string/jumbo v6, "idle_factor"

    #@13f
    .line 845
    const/high16 v8, 0x40000000    # 2.0f

    #@141
    .line 844
    invoke-virtual {v1, v6, v8}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    #@144
    move-result v1

    #@145
    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    #@147
    .line 846
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@149
    const-string/jumbo v6, "min_time_to_alarm"

    #@14c
    .line 847
    const-wide/32 v8, 0x36ee80

    #@14f
    .line 846
    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@152
    move-result-wide v8

    #@153
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    #@155
    .line 848
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@157
    .line 849
    const-string/jumbo v6, "max_temp_app_whitelist_duration"

    #@15a
    const-wide/32 v8, 0x493e0

    #@15d
    .line 848
    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@160
    move-result-wide v8

    #@161
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    #@163
    .line 850
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@165
    .line 851
    const-string/jumbo v6, "mms_temp_app_whitelist_duration"

    #@168
    const-wide/32 v8, 0xea60

    #@16b
    .line 850
    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@16e
    move-result-wide v8

    #@16f
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    #@171
    .line 852
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@173
    .line 853
    const-string/jumbo v6, "sms_temp_app_whitelist_duration"

    #@176
    const-wide/16 v8, 0x4e20

    #@178
    .line 852
    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@17b
    move-result-wide v8

    #@17c
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    #@17e
    .line 854
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@180
    .line 855
    const-string/jumbo v6, "notification_whitelist_duration"

    #@183
    const-wide/16 v8, 0x7530

    #@185
    .line 854
    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@188
    move-result-wide v8

    #@189
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18b
    monitor-exit v7

    #@18c
    .line 785
    return-void

    #@18d
    .line 790
    .end local v2    # "idleAfterInactiveTimeout":J
    .end local v4    # "inactiveTimeoutDefault":J
    :cond_0
    :try_start_2
    const-string/jumbo v1, "device_idle_constants"
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@190
    goto/16 :goto_0

    #@192
    .line 791
    :catch_0
    move-exception v0

    #@193
    .line 794
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string/jumbo v1, "DeviceIdleController"

    #@196
    const-string/jumbo v8, "Bad device idle settings"

    #@199
    invoke-static {v1, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@19c
    goto/16 :goto_1

    #@19e
    .line 786
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    #@19f
    monitor-exit v7

    #@1a0
    throw v1

    #@1a1
    .line 820
    :cond_1
    const/16 v1, 0x1e

    #@1a3
    goto/16 :goto_2

    #@1a5
    .line 830
    .restart local v4    # "inactiveTimeoutDefault":J
    :cond_2
    const/16 v6, 0x1e

    #@1a7
    goto/16 :goto_3
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 860
    const-string/jumbo v0, "  Settings:"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 862
    const-string/jumbo v0, "    "

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    const-string/jumbo v0, "light_after_inactive_to"

    #@f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    const-string/jumbo v0, "="

    #@15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 863
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    #@1a
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1d
    .line 864
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@20
    .line 866
    const-string/jumbo v0, "    "

    #@23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    const-string/jumbo v0, "light_pre_idle_to"

    #@29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    const-string/jumbo v0, "="

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    .line 867
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    #@34
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@37
    .line 868
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3a
    .line 870
    const-string/jumbo v0, "    "

    #@3d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    const-string/jumbo v0, "light_idle_to"

    #@43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    const-string/jumbo v0, "="

    #@49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    .line 871
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    #@4e
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@51
    .line 872
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@54
    .line 874
    const-string/jumbo v0, "    "

    #@57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    const-string/jumbo v0, "light_idle_factor"

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    const-string/jumbo v0, "="

    #@63
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    .line 875
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    #@68
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@6b
    .line 876
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6e
    .line 878
    const-string/jumbo v0, "    "

    #@71
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    const-string/jumbo v0, "light_max_idle_to"

    #@77
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    const-string/jumbo v0, "="

    #@7d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@80
    .line 879
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    #@82
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@85
    .line 880
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@88
    .line 882
    const-string/jumbo v0, "    "

    #@8b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    const-string/jumbo v0, "light_idle_maintenance_min_budget"

    #@91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    const-string/jumbo v0, "="

    #@97
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    .line 883
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    #@9c
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@9f
    .line 884
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@a2
    .line 886
    const-string/jumbo v0, "    "

    #@a5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    const-string/jumbo v0, "light_idle_maintenance_max_budget"

    #@ab
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    const-string/jumbo v0, "="

    #@b1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b4
    .line 887
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    #@b6
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@b9
    .line 888
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@bc
    .line 890
    const-string/jumbo v0, "    "

    #@bf
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c2
    const-string/jumbo v0, "min_light_maintenance_time"

    #@c5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c8
    const-string/jumbo v0, "="

    #@cb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ce
    .line 891
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    #@d0
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@d3
    .line 892
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@d6
    .line 894
    const-string/jumbo v0, "    "

    #@d9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dc
    const-string/jumbo v0, "min_deep_maintenance_time"

    #@df
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    const-string/jumbo v0, "="

    #@e5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e8
    .line 895
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    #@ea
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@ed
    .line 896
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@f0
    .line 898
    const-string/jumbo v0, "    "

    #@f3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    const-string/jumbo v0, "inactive_to"

    #@f9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    const-string/jumbo v0, "="

    #@ff
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@102
    .line 899
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    #@104
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@107
    .line 900
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@10a
    .line 902
    const-string/jumbo v0, "    "

    #@10d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@110
    const-string/jumbo v0, "sensing_to"

    #@113
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@116
    const-string/jumbo v0, "="

    #@119
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11c
    .line 903
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    #@11e
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@121
    .line 904
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@124
    .line 906
    const-string/jumbo v0, "    "

    #@127
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12a
    const-string/jumbo v0, "locating_to"

    #@12d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@130
    const-string/jumbo v0, "="

    #@133
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@136
    .line 907
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    #@138
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@13b
    .line 908
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@13e
    .line 910
    const-string/jumbo v0, "    "

    #@141
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@144
    const-string/jumbo v0, "location_accuracy"

    #@147
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14a
    const-string/jumbo v0, "="

    #@14d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@150
    .line 911
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    #@152
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@155
    const-string/jumbo v0, "m"

    #@158
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    .line 912
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@15e
    .line 914
    const-string/jumbo v0, "    "

    #@161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@164
    const-string/jumbo v0, "motion_inactive_to"

    #@167
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16a
    const-string/jumbo v0, "="

    #@16d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@170
    .line 915
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    #@172
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@175
    .line 916
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@178
    .line 918
    const-string/jumbo v0, "    "

    #@17b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17e
    const-string/jumbo v0, "idle_after_inactive_to"

    #@181
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    const-string/jumbo v0, "="

    #@187
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18a
    .line 919
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    #@18c
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@18f
    .line 920
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@192
    .line 922
    const-string/jumbo v0, "    "

    #@195
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@198
    const-string/jumbo v0, "idle_pending_to"

    #@19b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19e
    const-string/jumbo v0, "="

    #@1a1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a4
    .line 923
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    #@1a6
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1a9
    .line 924
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1ac
    .line 926
    const-string/jumbo v0, "    "

    #@1af
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b2
    const-string/jumbo v0, "max_idle_pending_to"

    #@1b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b8
    const-string/jumbo v0, "="

    #@1bb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1be
    .line 927
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    #@1c0
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1c3
    .line 928
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1c6
    .line 930
    const-string/jumbo v0, "    "

    #@1c9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cc
    const-string/jumbo v0, "idle_pending_factor"

    #@1cf
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d2
    const-string/jumbo v0, "="

    #@1d5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d8
    .line 931
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    #@1da
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    #@1dd
    .line 933
    const-string/jumbo v0, "    "

    #@1e0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e3
    const-string/jumbo v0, "idle_to"

    #@1e6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e9
    const-string/jumbo v0, "="

    #@1ec
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ef
    .line 934
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    #@1f1
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1f4
    .line 935
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1f7
    .line 937
    const-string/jumbo v0, "    "

    #@1fa
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fd
    const-string/jumbo v0, "max_idle_to"

    #@200
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@203
    const-string/jumbo v0, "="

    #@206
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@209
    .line 938
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    #@20b
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@20e
    .line 939
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@211
    .line 941
    const-string/jumbo v0, "    "

    #@214
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@217
    const-string/jumbo v0, "idle_factor"

    #@21a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21d
    const-string/jumbo v0, "="

    #@220
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@223
    .line 942
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    #@225
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    #@228
    .line 944
    const-string/jumbo v0, "    "

    #@22b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22e
    const-string/jumbo v0, "min_time_to_alarm"

    #@231
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@234
    const-string/jumbo v0, "="

    #@237
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23a
    .line 945
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    #@23c
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@23f
    .line 946
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@242
    .line 948
    const-string/jumbo v0, "    "

    #@245
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@248
    const-string/jumbo v0, "max_temp_app_whitelist_duration"

    #@24b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24e
    const-string/jumbo v0, "="

    #@251
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@254
    .line 949
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    #@256
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@259
    .line 950
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@25c
    .line 952
    const-string/jumbo v0, "    "

    #@25f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@262
    const-string/jumbo v0, "mms_temp_app_whitelist_duration"

    #@265
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@268
    const-string/jumbo v0, "="

    #@26b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26e
    .line 953
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    #@270
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@273
    .line 954
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@276
    .line 956
    const-string/jumbo v0, "    "

    #@279
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27c
    const-string/jumbo v0, "sms_temp_app_whitelist_duration"

    #@27f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@282
    const-string/jumbo v0, "="

    #@285
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@288
    .line 957
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    #@28a
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@28d
    .line 958
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@290
    .line 960
    const-string/jumbo v0, "    "

    #@293
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@296
    const-string/jumbo v0, "notification_whitelist_duration"

    #@299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29c
    const-string/jumbo v0, "="

    #@29f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a2
    .line 961
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J

    #@2a4
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@2a7
    .line 962
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@2aa
    .line 859
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 782
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V

    #@3
    .line 781
    return-void
.end method
