.class public final Landroid/app/usage/UsageStatsManager;
.super Ljava/lang/Object;
.source "UsageStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageStatsManager$UsageSource;,
        Landroid/app/usage/UsageStatsManager$ForcedReasons;,
        Landroid/app/usage/UsageStatsManager$StandbyBuckets;
    }
.end annotation


# static fields
.field public static final whitelist EXTRA_EVENT_ACTION:Ljava/lang/String; = "android.app.usage.extra.EVENT_ACTION"

.field public static final whitelist EXTRA_EVENT_CATEGORY:Ljava/lang/String; = "android.app.usage.extra.EVENT_CATEGORY"

.field public static final whitelist EXTRA_OBSERVER_ID:Ljava/lang/String; = "android.app.usage.extra.OBSERVER_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_TIME_LIMIT:Ljava/lang/String; = "android.app.usage.extra.TIME_LIMIT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_TIME_USED:Ljava/lang/String; = "android.app.usage.extra.TIME_USED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INTERVAL_BEST:I = 0x4

.field public static final greylist-max-o INTERVAL_COUNT:I = 0x4

.field public static final whitelist INTERVAL_DAILY:I = 0x0

.field public static final whitelist INTERVAL_MONTHLY:I = 0x2

.field public static final whitelist INTERVAL_WEEKLY:I = 0x1

.field public static final whitelist INTERVAL_YEARLY:I = 0x3

.field public static final greylist-max-o REASON_MAIN_DEFAULT:I = 0x100

.field public static final blacklist REASON_MAIN_FORCED_BY_SYSTEM:I = 0x600

.field public static final blacklist REASON_MAIN_FORCED_BY_USER:I = 0x400

.field public static final greylist-max-o REASON_MAIN_MASK:I = 0xff00

.field public static final greylist-max-o REASON_MAIN_PREDICTED:I = 0x500

.field public static final greylist-max-o REASON_MAIN_TIMEOUT:I = 0x200

.field public static final greylist-max-o REASON_MAIN_USAGE:I = 0x300

.field public static final blacklist REASON_SUB_DEFAULT_APP_RESTORED:I = 0x2

.field public static final blacklist REASON_SUB_DEFAULT_APP_UPDATE:I = 0x1

.field public static final blacklist REASON_SUB_DEFAULT_UNDEFINED:I = 0x0

.field public static final blacklist REASON_SUB_FORCED_SYSTEM_FLAG_ABUSE:I = 0x2

.field public static final blacklist REASON_SUB_FORCED_SYSTEM_FLAG_BACKGROUND_RESOURCE_USAGE:I = 0x1

.field public static final blacklist REASON_SUB_FORCED_SYSTEM_FLAG_BUGGY:I = 0x4

.field public static final blacklist REASON_SUB_FORCED_SYSTEM_FLAG_UNDEFINED:I = 0x0

.field public static final blacklist REASON_SUB_FORCED_USER_FLAG_INTERACTION:I = 0x2

.field public static final greylist-max-o REASON_SUB_MASK:I = 0xff

.field public static final greylist-max-o REASON_SUB_PREDICTED_RESTORED:I = 0x1

.field public static final greylist-max-o REASON_SUB_USAGE_ACTIVE_TIMEOUT:I = 0x7

.field public static final greylist-max-o REASON_SUB_USAGE_EXEMPTED_SYNC_SCHEDULED_DOZE:I = 0xc

.field public static final greylist-max-o REASON_SUB_USAGE_EXEMPTED_SYNC_SCHEDULED_NON_DOZE:I = 0xb

.field public static final greylist-max-o REASON_SUB_USAGE_EXEMPTED_SYNC_START:I = 0xd

.field public static final blacklist REASON_SUB_USAGE_FOREGROUND_SERVICE_START:I = 0xf

.field public static final greylist-max-o REASON_SUB_USAGE_MOVE_TO_BACKGROUND:I = 0x5

.field public static final greylist-max-o REASON_SUB_USAGE_MOVE_TO_FOREGROUND:I = 0x4

.field public static final greylist-max-o REASON_SUB_USAGE_NOTIFICATION_SEEN:I = 0x2

.field public static final greylist-max-o REASON_SUB_USAGE_SLICE_PINNED:I = 0x9

.field public static final greylist-max-o REASON_SUB_USAGE_SLICE_PINNED_PRIV:I = 0xa

.field public static final greylist-max-o REASON_SUB_USAGE_SYNC_ADAPTER:I = 0x8

.field public static final greylist-max-o REASON_SUB_USAGE_SYSTEM_INTERACTION:I = 0x1

.field public static final greylist-max-o REASON_SUB_USAGE_SYSTEM_UPDATE:I = 0x6

.field public static final blacklist REASON_SUB_USAGE_UNEXEMPTED_SYNC_SCHEDULED:I = 0xe

.field public static final greylist-max-o REASON_SUB_USAGE_USER_INTERACTION:I = 0x3

.field public static final whitelist STANDBY_BUCKET_ACTIVE:I = 0xa

.field public static final whitelist STANDBY_BUCKET_EXEMPTED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STANDBY_BUCKET_FREQUENT:I = 0x1e

.field public static final whitelist STANDBY_BUCKET_NEVER:I = 0x32
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STANDBY_BUCKET_RARE:I = 0x28

.field public static final whitelist STANDBY_BUCKET_RESTRICTED:I = 0x2d

.field public static final whitelist STANDBY_BUCKET_WORKING_SET:I = 0x14

.field public static final whitelist USAGE_SOURCE_CURRENT_ACTIVITY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_SOURCE_TASK_ROOT_ACTIVITY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-p sEmptyResults:Landroid/app/usage/UsageEvents;


# instance fields
.field private final greylist-max-p mContext:Landroid/content/Context;

.field private final greylist mService:Landroid/app/usage/IUsageStatsManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 438
    new-instance v0, Landroid/app/usage/UsageEvents;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents;-><init>()V

    sput-object v0, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/usage/IUsageStatsManager;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 450
    iput-object p2, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    .line 451
    return-void
.end method

.method public static greylist-max-o reasonToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "standbyReason"    # I

    .line 1296
    and-int/lit16 v0, p0, 0xff

    .line 1297
    .local v0, "subReason":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1298
    .local v1, "sb":Ljava/lang/StringBuilder;
    const v2, 0xff00

    and-int/2addr v2, p0

    const-string v3, "-"

    sparse-switch v2, :sswitch_data_d8

    goto/16 :goto_d3

    .line 1314
    :sswitch_12
    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    if-lez v0, :cond_d3

    .line 1316
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d3

    .line 1326
    :sswitch_27
    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    packed-switch v0, :pswitch_data_f2

    goto :goto_36

    .line 1329
    :pswitch_31
    const-string v2, "-r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    :goto_36
    goto/16 :goto_d3

    .line 1320
    :sswitch_38
    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    if-lez v0, :cond_d3

    .line 1322
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d3

    .line 1337
    :sswitch_4c
    const-string/jumbo v2, "u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    packed-switch v0, :pswitch_data_f8

    goto/16 :goto_d3

    .line 1382
    :pswitch_57
    const-string v2, "-fss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d3

    .line 1379
    :pswitch_5e
    const-string v2, "-uss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    goto/16 :goto_d3

    .line 1376
    :pswitch_65
    const-string v2, "-es"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    goto/16 :goto_d3

    .line 1373
    :pswitch_6c
    const-string v2, "-ed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    goto/16 :goto_d3

    .line 1370
    :pswitch_73
    const-string v2, "-en"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    goto :goto_d3

    .line 1367
    :pswitch_79
    const-string v2, "-lv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    goto :goto_d3

    .line 1364
    :pswitch_7f
    const-string v2, "-lp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    goto :goto_d3

    .line 1361
    :pswitch_85
    const-string v2, "-sa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    goto :goto_d3

    .line 1358
    :pswitch_8b
    const-string v2, "-at"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    goto :goto_d3

    .line 1355
    :pswitch_91
    const-string v2, "-su"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    goto :goto_d3

    .line 1352
    :pswitch_97
    const-string v2, "-mb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    goto :goto_d3

    .line 1349
    :pswitch_9d
    const-string v2, "-mf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    goto :goto_d3

    .line 1346
    :pswitch_a3
    const-string v2, "-ui"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    goto :goto_d3

    .line 1343
    :pswitch_a9
    const-string v2, "-ns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    goto :goto_d3

    .line 1340
    :pswitch_af
    const-string v2, "-si"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    goto :goto_d3

    .line 1334
    :sswitch_b5
    const-string/jumbo v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    goto :goto_d3

    .line 1300
    :sswitch_bc
    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    packed-switch v0, :pswitch_data_11a

    goto :goto_d2

    .line 1309
    :pswitch_c5
    const-string v2, "-ar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d2

    .line 1306
    :pswitch_cb
    const-string v2, "-au"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    goto :goto_d2

    .line 1304
    :pswitch_d1
    nop

    .line 1312
    :goto_d2
    nop

    .line 1387
    :cond_d3
    :goto_d3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_data_d8
    .sparse-switch
        0x100 -> :sswitch_bc
        0x200 -> :sswitch_b5
        0x300 -> :sswitch_4c
        0x400 -> :sswitch_38
        0x500 -> :sswitch_27
        0x600 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_31
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_af
        :pswitch_a9
        :pswitch_a3
        :pswitch_9d
        :pswitch_97
        :pswitch_91
        :pswitch_8b
        :pswitch_85
        :pswitch_7f
        :pswitch_79
        :pswitch_73
        :pswitch_6c
        :pswitch_65
        :pswitch_5e
        :pswitch_57
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_cb
        :pswitch_c5
    .end packed-switch
.end method

.method public static blacklist standbyBucketToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "standbyBucket"    # I

    .line 1408
    sparse-switch p0, :sswitch_data_1e

    .line 1424
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1422
    :sswitch_8
    const-string v0, "NEVER"

    return-object v0

    .line 1420
    :sswitch_b
    const-string v0, "RESTRICTED"

    return-object v0

    .line 1418
    :sswitch_e
    const-string v0, "RARE"

    return-object v0

    .line 1416
    :sswitch_11
    const-string v0, "FREQUENT"

    return-object v0

    .line 1414
    :sswitch_14
    const-string v0, "WORKING_SET"

    return-object v0

    .line 1412
    :sswitch_17
    const-string v0, "ACTIVE"

    return-object v0

    .line 1410
    :sswitch_1a
    const-string v0, "EXEMPTED"

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x5 -> :sswitch_1a
        0xa -> :sswitch_17
        0x14 -> :sswitch_14
        0x1e -> :sswitch_11
        0x28 -> :sswitch_e
        0x2d -> :sswitch_b
        0x32 -> :sswitch_8
    .end sparse-switch
.end method

.method public static blacklist usageSourceToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "usageSource"    # I

    .line 1392
    packed-switch p0, :pswitch_data_20

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1399
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1401
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1396
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :pswitch_1a
    const-string v0, "CURRENT_ACTIVITY"

    return-object v0

    .line 1394
    :pswitch_1d
    const-string v0, "TASK_ROOT_ACTIVITY"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public blacklist clearBroadcastEvents()V
    .registers 4

    .line 1604
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/usage/IUsageStatsManager;->clearBroadcastEvents(Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 1607
    nop

    .line 1608
    return-void

    .line 1605
    :catch_13
    move-exception v0

    .line 1606
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearBroadcastResponseStats(Ljava/lang/String;J)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1588
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1589
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v5
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_18

    .line 1588
    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "id":J
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "id":J
    :try_start_10
    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->clearBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_15

    .line 1592
    nop

    .line 1593
    return-void

    .line 1590
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "id":J
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "id":J
    :catch_18
    move-exception v0

    move-object v1, p1

    move-wide v2, p2

    move-object p1, v0

    .line 1591
    .end local p2    # "id":J
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "id":J
    .local p1, "re":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist forceUsageSourceSettingRead()V
    .registers 3

    .line 1288
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0}, Landroid/app/usage/IUsageStatsManager;->forceUsageSourceSettingRead()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1291
    nop

    .line 1292
    return-void

    .line 1289
    :catch_7
    move-exception v0

    .line 1290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAppMinStandbyBucket(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 862
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 863
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 862
    invoke-interface {v0, p1, v1, v2}, Landroid/app/usage/IUsageStatsManager;->getAppMinStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 864
    :catch_13
    move-exception v0

    .line 865
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAppStandbyBucket()I
    .registers 5

    .line 755
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 756
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 757
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 755
    invoke-interface {v0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return v0

    .line 758
    :catch_19
    move-exception v0

    .line 760
    const/16 v0, 0xa

    return v0
.end method

.method public whitelist getAppStandbyBucket(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 773
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 774
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 773
    invoke-interface {v0, p1, v1, v2}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 775
    :catch_13
    move-exception v0

    .line 777
    const/16 v0, 0xa

    return v0
.end method

.method public whitelist getAppStandbyBuckets()Ljava/util/Map;
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 812
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 813
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 812
    invoke-interface {v0, v1, v2}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 814
    .local v0, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 815
    .local v1, "bucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 816
    .local v2, "bucketMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 817
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    if-ge v4, v3, :cond_37

    .line 818
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/AppStandbyInfo;

    .line 819
    .local v5, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    iget-object v6, v5, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget v7, v5, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_38

    .line 817
    nop

    .end local v5    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 821
    .end local v4    # "i":I
    :cond_37
    return-object v2

    .line 822
    .end local v0    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    .end local v1    # "bucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    .end local v2    # "bucketMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "n":I
    :catch_38
    move-exception v0

    .line 823
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1631
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0, p1}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1632
    :catch_7
    move-exception v0

    .line 1633
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLastTimeAnyComponentUsed(Ljava/lang/String;)J
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1508
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->getLastTimeAnyComponentUsed(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 1509
    :catch_d
    move-exception v0

    .line 1510
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUsageSource()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1275
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0}, Landroid/app/usage/IUsageStatsManager;->getUsageSource()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1276
    :catch_7
    move-exception v0

    .line 1277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAppInactive(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 715
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 716
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 715
    invoke-interface {v0, p1, v1, v2}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 717
    :catch_13
    move-exception v0

    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAppStandbyEnabled()Z
    .registers 3

    .line 695
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0}, Landroid/app/usage/IUsageStatsManager;->isAppStandbyEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 696
    :catch_7
    move-exception v0

    .line 697
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isPackageExemptedFromBroadcastResponseStats(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1619
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1620
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1619
    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->isPackageExemptedFromBroadcastResponseStats(Ljava/lang/String;I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1621
    :catch_d
    move-exception v0

    .line 1622
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist onCarrierPrivilegedAppsChanged()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1460
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0}, Landroid/app/usage/IUsageStatsManager;->onCarrierPrivilegedAppsChanged()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1463
    nop

    .line 1464
    return-void

    .line 1461
    :catch_7
    move-exception v0

    .line 1462
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryAndAggregateUsageStats(JJ)Ljava/util/Map;
    .registers 12
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 669
    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "beginTime":J
    .end local p3    # "endTime":J
    .local v2, "beginTime":J
    .local v4, "endTime":J
    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object p1

    .line 670
    .local p1, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 671
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    return-object p2

    .line 674
    :cond_13
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 675
    .local p2, "aggregatedStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 676
    .local p3, "statCount":I
    const/4 p4, 0x0

    .local p4, "i":I
    :goto_1d
    if-ge p4, p3, :cond_3d

    .line 677
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 678
    .local v0, "newStat":Landroid/app/usage/UsageStats;
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    .line 679
    .local v1, "existingStat":Landroid/app/usage/UsageStats;
    if-nez v1, :cond_37

    .line 680
    iget-object v6, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 682
    :cond_37
    invoke-virtual {v1, v0}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V

    .line 676
    .end local v0    # "newStat":Landroid/app/usage/UsageStats;
    .end local v1    # "existingStat":Landroid/app/usage/UsageStats;
    :goto_3a
    add-int/lit8 p4, p4, 0x1

    goto :goto_1d

    .line 685
    .end local p4    # "i":I
    :cond_3d
    return-object p2
.end method

.method public whitelist queryBroadcastResponseStats(Ljava/lang/String;J)Ljava/util/List;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;"
        }
    .end annotation

    .line 1556
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1557
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v5
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_1c

    .line 1556
    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "id":J
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "id":J
    :try_start_10
    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->queryBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)Landroid/app/usage/BroadcastResponseStatsList;

    move-result-object p1

    .line 1557
    invoke-virtual {p1}, Landroid/app/usage/BroadcastResponseStatsList;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19

    .line 1556
    return-object p1

    .line 1558
    :catch_19
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "id":J
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "id":J
    :catch_1c
    move-exception v0

    move-object v1, p1

    move-wide v2, p2

    move-object p1, v0

    .line 1559
    .end local p2    # "id":J
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "id":J
    .local p1, "re":Landroid/os/RemoteException;
    :goto_20
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist queryConfigurations(IJJ)Ljava/util/List;
    .registers 13
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 518
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 519
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_19

    .line 518
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "intervalType":I
    .end local p2    # "beginTime":J
    .end local p4    # "endTime":J
    .local v1, "intervalType":I
    .local v2, "beginTime":J
    .local v4, "endTime":J
    :try_start_b
    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 520
    .local p1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    if-eqz p1, :cond_16

    .line 521
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_17

    return-object p2

    .line 525
    .end local p1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    :cond_16
    goto :goto_1d

    .line 523
    :catch_17
    move-exception v0

    goto :goto_1d

    .end local v1    # "intervalType":I
    .end local v2    # "beginTime":J
    .end local v4    # "endTime":J
    .local p1, "intervalType":I
    .restart local p2    # "beginTime":J
    .restart local p4    # "endTime":J
    :catch_19
    move-exception v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 526
    .end local p1    # "intervalType":I
    .end local p2    # "beginTime":J
    .end local p4    # "endTime":J
    .restart local v1    # "intervalType":I
    .restart local v2    # "beginTime":J
    .restart local v4    # "endTime":J
    :goto_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist queryEventStats(IJJ)Ljava/util/List;
    .registers 13
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 564
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 565
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_19

    .line 564
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "intervalType":I
    .end local p2    # "beginTime":J
    .end local p4    # "endTime":J
    .local v1, "intervalType":I
    .local v2, "beginTime":J
    .local v4, "endTime":J
    :try_start_b
    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 566
    .local p1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/EventStats;>;"
    if-eqz p1, :cond_16

    .line 567
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_17

    return-object p2

    .line 571
    .end local p1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/EventStats;>;"
    :cond_16
    goto :goto_1d

    .line 569
    :catch_17
    move-exception v0

    goto :goto_1d

    .end local v1    # "intervalType":I
    .end local v2    # "beginTime":J
    .end local v4    # "endTime":J
    .local p1, "intervalType":I
    .restart local p2    # "beginTime":J
    .restart local p4    # "endTime":J
    :catch_19
    move-exception v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 572
    .end local p1    # "intervalType":I
    .end local p2    # "beginTime":J
    .end local p4    # "endTime":J
    .restart local v1    # "intervalType":I
    .restart local v2    # "beginTime":J
    .restart local v4    # "endTime":J
    :goto_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist queryEvents(JJ)Landroid/app/usage/UsageEvents;
    .registers 11
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    .line 592
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 593
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_14

    .line 592
    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "beginTime":J
    .end local p3    # "endTime":J
    .local v1, "beginTime":J
    .local v3, "endTime":J
    :try_start_a
    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_12

    .line 594
    .local p1, "iter":Landroid/app/usage/UsageEvents;
    if-eqz p1, :cond_11

    .line 595
    return-object p1

    .line 599
    .end local p1    # "iter":Landroid/app/usage/UsageEvents;
    :cond_11
    goto :goto_17

    .line 597
    :catch_12
    move-exception v0

    goto :goto_17

    .end local v1    # "beginTime":J
    .end local v3    # "endTime":J
    .local p1, "beginTime":J
    .restart local p3    # "endTime":J
    :catch_14
    move-exception v0

    move-wide v1, p1

    move-wide v3, p3

    .line 600
    .end local p1    # "beginTime":J
    .end local p3    # "endTime":J
    .restart local v1    # "beginTime":J
    .restart local v3    # "endTime":J
    :goto_17
    sget-object p1, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-object p1
.end method

.method public whitelist queryEvents(Landroid/app/usage/UsageEventsQuery;)Landroid/app/usage/UsageEvents;
    .registers 4
    .param p1, "query"    # Landroid/app/usage/UsageEventsQuery;

    .line 617
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->queryEventsWithFilter(Landroid/app/usage/UsageEventsQuery;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_10

    .line 618
    .local v0, "iter":Landroid/app/usage/UsageEvents;
    if-eqz v0, :cond_f

    .line 619
    return-object v0

    .line 623
    .end local v0    # "iter":Landroid/app/usage/UsageEvents;
    :cond_f
    goto :goto_11

    .line 621
    :catch_10
    move-exception v0

    .line 624
    :goto_11
    sget-object v0, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-object v0
.end method

.method public whitelist queryEventsForSelf(JJ)Landroid/app/usage/UsageEvents;
    .registers 11
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    .line 644
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 645
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_14

    .line 644
    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "beginTime":J
    .end local p3    # "endTime":J
    .local v1, "beginTime":J
    .local v3, "endTime":J
    :try_start_a
    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_12

    .line 646
    .local p1, "events":Landroid/app/usage/UsageEvents;
    if-eqz p1, :cond_11

    .line 647
    return-object p1

    .line 651
    .end local p1    # "events":Landroid/app/usage/UsageEvents;
    :cond_11
    goto :goto_17

    .line 649
    :catch_12
    move-exception v0

    goto :goto_17

    .end local v1    # "beginTime":J
    .end local v3    # "endTime":J
    .local p1, "beginTime":J
    .restart local p3    # "endTime":J
    :catch_14
    move-exception v0

    move-wide v1, p1

    move-wide v3, p3

    .line 652
    .end local p1    # "beginTime":J
    .end local p3    # "endTime":J
    .restart local v1    # "beginTime":J
    .restart local v3    # "endTime":J
    :goto_17
    sget-object p1, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-object p1
.end method

.method public whitelist queryUsageStats(IJJ)Ljava/util/List;
    .registers 14
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 486
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 487
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v7
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_1f

    .line 486
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "intervalType":I
    .end local p2    # "beginTime":J
    .end local p4    # "endTime":J
    .local v1, "intervalType":I
    .local v2, "beginTime":J
    .local v4, "endTime":J
    :try_start_11
    invoke-interface/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryUsageStats(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 488
    .local p1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/UsageStats;>;"
    if-eqz p1, :cond_1c

    .line 489
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_1d

    return-object p2

    .line 493
    .end local p1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/UsageStats;>;"
    :cond_1c
    goto :goto_23

    .line 491
    :catch_1d
    move-exception v0

    goto :goto_23

    .end local v1    # "intervalType":I
    .end local v2    # "beginTime":J
    .end local v4    # "endTime":J
    .local p1, "intervalType":I
    .restart local p2    # "beginTime":J
    .restart local p4    # "endTime":J
    :catch_1f
    move-exception v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 494
    .end local p1    # "intervalType":I
    .end local p2    # "beginTime":J
    .end local p4    # "endTime":J
    .restart local v1    # "intervalType":I
    .restart local v2    # "beginTime":J
    .restart local v4    # "endTime":J
    :goto_23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerAppUsageLimitObserver(I[Ljava/lang/String;Ljava/time/Duration;Ljava/time/Duration;Landroid/app/PendingIntent;)V
    .registers 15
    .param p1, "observerId"    # I
    .param p2, "observedEntities"    # [Ljava/lang/String;
    .param p3, "timeLimit"    # Ljava/time/Duration;
    .param p4, "timeUsed"    # Ljava/time/Duration;
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1117
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    .line 1118
    invoke-virtual {p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-virtual {p4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1119
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_1b

    .line 1117
    move v1, p1

    move-object v2, p2

    move-object v7, p5

    .end local p1    # "observerId":I
    .end local p2    # "observedEntities":[Ljava/lang/String;
    .end local p5    # "callbackIntent":Landroid/app/PendingIntent;
    .local v1, "observerId":I
    .local v2, "observedEntities":[Ljava/lang/String;
    .local v7, "callbackIntent":Landroid/app/PendingIntent;
    :try_start_13
    invoke-interface/range {v0 .. v8}, Landroid/app/usage/IUsageStatsManager;->registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_18

    .line 1122
    nop

    .line 1123
    return-void

    .line 1120
    :catch_18
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .end local v1    # "observerId":I
    .end local v2    # "observedEntities":[Ljava/lang/String;
    .end local v7    # "callbackIntent":Landroid/app/PendingIntent;
    .restart local p1    # "observerId":I
    .restart local p2    # "observedEntities":[Ljava/lang/String;
    .restart local p5    # "callbackIntent":Landroid/app/PendingIntent;
    :catch_1b
    move-exception v0

    move v1, p1

    move-object v2, p2

    move-object v7, p5

    move-object p1, v0

    .line 1121
    .end local p2    # "observedEntities":[Ljava/lang/String;
    .end local p5    # "callbackIntent":Landroid/app/PendingIntent;
    .restart local v1    # "observerId":I
    .restart local v2    # "observedEntities":[Ljava/lang/String;
    .restart local v7    # "callbackIntent":Landroid/app/PendingIntent;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_20
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist registerAppUsageObserver(I[Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/PendingIntent;)V
    .registers 14
    .param p1, "observerId"    # I
    .param p2, "observedEntities"    # [Ljava/lang/String;
    .param p3, "timeLimit"    # J
    .param p5, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 967
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    .line 968
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_17

    .line 967
    move v1, p1

    move-object v2, p2

    move-object v5, p6

    .end local p1    # "observerId":I
    .end local p2    # "observedEntities":[Ljava/lang/String;
    .end local p6    # "callbackIntent":Landroid/app/PendingIntent;
    .local v1, "observerId":I
    .local v2, "observedEntities":[Ljava/lang/String;
    .local v5, "callbackIntent":Landroid/app/PendingIntent;
    :try_start_f
    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 971
    nop

    .line 972
    return-void

    .line 969
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .end local v1    # "observerId":I
    .end local v2    # "observedEntities":[Ljava/lang/String;
    .end local v5    # "callbackIntent":Landroid/app/PendingIntent;
    .restart local p1    # "observerId":I
    .restart local p2    # "observedEntities":[Ljava/lang/String;
    .restart local p6    # "callbackIntent":Landroid/app/PendingIntent;
    :catch_17
    move-exception v0

    move v1, p1

    move-object v2, p2

    move-object v5, p6

    move-object p1, v0

    .line 970
    .end local p2    # "observedEntities":[Ljava/lang/String;
    .end local p6    # "callbackIntent":Landroid/app/PendingIntent;
    .restart local v1    # "observerId":I
    .restart local v2    # "observedEntities":[Ljava/lang/String;
    .restart local v5    # "callbackIntent":Landroid/app/PendingIntent;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist registerUsageSessionObserver(I[Ljava/lang/String;Ljava/time/Duration;Ljava/time/Duration;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 17
    .param p1, "sessionObserverId"    # I
    .param p2, "observedEntities"    # [Ljava/lang/String;
    .param p3, "timeLimit"    # Ljava/time/Duration;
    .param p4, "sessionThresholdTime"    # Ljava/time/Duration;
    .param p5, "limitReachedCallbackIntent"    # Landroid/app/PendingIntent;
    .param p6, "sessionEndCallbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1038
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    .line 1039
    invoke-virtual {p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-virtual {p4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1041
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1038
    move v1, p1

    move-object v2, p2

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v0 .. v9}, Landroid/app/usage/IUsageStatsManager;->registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1a

    .line 1044
    nop

    .line 1045
    return-void

    .line 1042
    :catch_1a
    move-exception v0

    .line 1043
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "annotations"    # [Ljava/lang/String;
    .param p5, "action"    # Ljava/lang/String;

    .line 1481
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_d

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "annotations":[Ljava/lang/String;
    .end local p5    # "action":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "userId":I
    .local v3, "contentType":Ljava/lang/String;
    .local v4, "annotations":[Ljava/lang/String;
    .local v5, "action":Ljava/lang/String;
    :try_start_7
    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1483
    goto :goto_13

    .line 1482
    :catch_b
    move-exception v0

    goto :goto_13

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v4    # "annotations":[Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "annotations":[Ljava/lang/String;
    .restart local p5    # "action":Ljava/lang/String;
    :catch_d
    move-exception v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1484
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "annotations":[Ljava/lang/String;
    .end local p5    # "action":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "userId":I
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v4    # "annotations":[Ljava/lang/String;
    .restart local v5    # "action":Ljava/lang/String;
    :goto_13
    return-void
.end method

.method public whitelist reportUsageStart(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "token"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1212
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1213
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1212
    invoke-interface {v0, v1, p2, v2}, Landroid/app/usage/IUsageStatsManager;->reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 1216
    nop

    .line 1217
    return-void

    .line 1214
    :catch_11
    move-exception v0

    .line 1215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist reportUsageStart(Landroid/app/Activity;Ljava/lang/String;J)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "timeAgoMs"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1238
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1239
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_16

    .line 1238
    move-object v2, p2

    move-wide v3, p3

    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "timeAgoMs":J
    .local v2, "token":Ljava/lang/String;
    .local v3, "timeAgoMs":J
    :try_start_e
    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_13

    .line 1242
    nop

    .line 1243
    return-void

    .line 1240
    :catch_13
    move-exception v0

    move-object p2, v0

    goto :goto_1a

    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "timeAgoMs":J
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "timeAgoMs":J
    :catch_16
    move-exception v0

    move-object v2, p2

    move-wide v3, p3

    move-object p2, v0

    .line 1241
    .end local p3    # "timeAgoMs":J
    .restart local v2    # "token":Ljava/lang/String;
    .restart local v3    # "timeAgoMs":J
    .local p2, "e":Landroid/os/RemoteException;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist reportUsageStop(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "token"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1255
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 1256
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1255
    invoke-interface {v0, v1, p2, v2}, Landroid/app/usage/IUsageStatsManager;->reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 1259
    nop

    .line 1260
    return-void

    .line 1257
    :catch_11
    move-exception v0

    .line 1258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportUserInteraction(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1157
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0, p1, p2}, Landroid/app/usage/IUsageStatsManager;->reportUserInteraction(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1160
    nop

    .line 1161
    return-void

    .line 1158
    :catch_7
    move-exception v0

    .line 1159
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportUserInteraction(Ljava/lang/String;ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "extras"    # Landroid/os/PersistableBundle;

    .line 1189
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/usage/IUsageStatsManager;->reportUserInteractionWithBundle(Ljava/lang/String;ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1192
    nop

    .line 1193
    return-void

    .line 1190
    :catch_7
    move-exception v0

    .line 1191
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setAppInactive(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "inactive"    # Z

    .line 728
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 731
    goto :goto_d

    .line 729
    :catch_c
    move-exception v0

    .line 732
    :goto_d
    return-void
.end method

.method public whitelist setAppStandbyBucket(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bucket"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 795
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 798
    nop

    .line 799
    return-void

    .line 796
    :catch_d
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAppStandbyBuckets(Ljava/util/Map;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 837
    .local p1, "appBuckets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p1, :cond_3

    .line 838
    return-void

    .line 840
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 841
    .local v0, "bucketInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 842
    .local v2, "bucketEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Landroid/app/usage/AppStandbyInfo;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    .end local v2    # "bucketEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_14

    .line 844
    :cond_39
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 846
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    :try_start_3e
    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v3, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_49} :catch_4b

    .line 849
    nop

    .line 850
    return-void

    .line 847
    :catch_4b
    move-exception v2

    .line 848
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist setEstimatedLaunchTimeMillis(Ljava/lang/String;J)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "estimatedLaunchTimeMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 886
    if-eqz p1, :cond_23

    .line 889
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1b

    .line 893
    :try_start_8
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 894
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 893
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/usage/IUsageStatsManager;->setEstimatedLaunchTime(Ljava/lang/String;JI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_15

    .line 897
    nop

    .line 898
    return-void

    .line 895
    :catch_15
    move-exception v0

    .line 896
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 890
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "estimated launch time must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "package name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEstimatedLaunchTimesMillis(Ljava/util/Map;)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 912
    .local p1, "estimatedLaunchTimesMillis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p1, :cond_6f

    .line 915
    new-instance v0, Ljava/util/ArrayList;

    .line 916
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 917
    .local v0, "estimateList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppLaunchEstimateInfo;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 918
    .local v2, "estimateEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 919
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_4e

    .line 922
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 923
    .local v4, "estimatedLaunchTime":Ljava/lang/Long;
    if-eqz v4, :cond_46

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_46

    .line 926
    new-instance v5, Landroid/app/usage/AppLaunchEstimateInfo;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v3, v6, v7}, Landroid/app/usage/AppLaunchEstimateInfo;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    .end local v2    # "estimateEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "estimatedLaunchTime":Ljava/lang/Long;
    goto :goto_13

    .line 924
    .restart local v2    # "estimateEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "estimatedLaunchTime":Ljava/lang/Long;
    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "estimated launch time must be positive"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 920
    .end local v4    # "estimatedLaunchTime":Ljava/lang/Long;
    :cond_4e
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "package name cannot be null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 928
    .end local v2    # "estimateEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_57
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 931
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppLaunchEstimateInfo;>;"
    :try_start_5c
    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v3, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/app/usage/IUsageStatsManager;->setEstimatedLaunchTimes(Landroid/content/pm/ParceledListSlice;I)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_67} :catch_69

    .line 934
    nop

    .line 935
    return-void

    .line 932
    :catch_69
    move-exception v2

    .line 933
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 913
    .end local v0    # "estimateList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppLaunchEstimateInfo;>;"
    .end local v1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppLaunchEstimateInfo;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "estimatedLaunchTimesMillis cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterAppUsageLimitObserver(I)V
    .registers 4
    .param p1, "observerId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1141
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->unregisterAppUsageLimitObserver(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1144
    nop

    .line 1145
    return-void

    .line 1142
    :catch_d
    move-exception v0

    .line 1143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterAppUsageObserver(I)V
    .registers 4
    .param p1, "observerId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 987
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->unregisterAppUsageObserver(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 990
    nop

    .line 991
    return-void

    .line 988
    :catch_d
    move-exception v0

    .line 989
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterUsageSessionObserver(I)V
    .registers 4
    .param p1, "sessionObserverId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1061
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->unregisterUsageSessionObserver(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1064
    nop

    .line 1065
    return-void

    .line 1062
    :catch_d
    move-exception v0

    .line 1063
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist whitelistAppTemporarily(Ljava/lang/String;JLandroid/os/UserHandle;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1447
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerWhitelistManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerWhitelistManager;

    .line 1448
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerWhitelistManager;->whitelistAppTemporarily(Ljava/lang/String;J)V

    .line 1449
    return-void
.end method
