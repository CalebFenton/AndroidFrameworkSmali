.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final BACKGROUND_VISIBLE_BEHIND_CHANGED:I = 0x94

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CANCEL_VISIBLE_BEHIND:I = 0x93

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final INSTALL_PROVIDER:I = 0x91

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOW_MEMORY:I = 0x7c

.field public static final NEW_INTENT:I = 0x70

.field public static final ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    .line 1227
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$H;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    #@3
    return-void
.end method

.method private maybeSnapshot()V
    .locals 8

    #@0
    .prologue
    .line 1565
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2
    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@4
    if-eqz v5, :cond_2

    #@6
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_2

    #@c
    .line 1568
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@e
    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@10
    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@12
    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@14
    .line 1569
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    #@15
    .line 1571
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@17
    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@1a
    move-result-object v0

    #@1b
    .line 1572
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    #@1d
    .line 1573
    const-string/jumbo v5, "ActivityThread"

    #@20
    const-string/jumbo v6, "cannot get a valid context"

    #@23
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1574
    return-void

    #@27
    .line 1576
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2a
    move-result-object v4

    #@2b
    .line 1577
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_1

    #@2d
    .line 1578
    const-string/jumbo v5, "ActivityThread"

    #@30
    const-string/jumbo v6, "cannot get a valid PackageManager"

    #@33
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 1579
    return-void

    #@37
    .line 1582
    :cond_1
    const/4 v5, 0x1

    #@38
    .line 1581
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result-object v2

    #@3c
    .line 1586
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@3e
    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@40
    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@42
    invoke-static {v5, v2}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    #@45
    .line 1564
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return-void

    #@46
    .line 1583
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@47
    .line 1584
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "ActivityThread"

    #@4a
    new-instance v6, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v7, "cannot get package info for "

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@61
    goto :goto_0
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    #@0
    .prologue
    .line 1333
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const-wide/16 v12, 0x40

    #@5
    .line 1337
    iget v0, p1, Landroid/os/Message;->what:I

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 1335
    :goto_0
    :pswitch_0
    return-void

    #@b
    .line 1339
    :pswitch_1
    const-string/jumbo v0, "activityStart"

    #@e
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@11
    .line 1340
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13
    check-cast v9, Landroid/app/ActivityThread$ActivityClientRecord;

    #@15
    .line 1342
    .local v9, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@17
    .line 1343
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1b
    iget-object v2, v9, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@1d
    .line 1342
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    #@20
    move-result-object v0

    #@21
    iput-object v0, v9, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@23
    .line 1344
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@25
    invoke-static {v0, v9, v3}, Landroid/app/ActivityThread;->-wrap11(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    #@28
    .line 1345
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@2b
    goto :goto_0

    #@2c
    .line 1348
    .end local v9    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_2
    const-string/jumbo v0, "activityRestart"

    #@2f
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@32
    .line 1349
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@34
    check-cast v9, Landroid/app/ActivityThread$ActivityClientRecord;

    #@36
    .line 1350
    .restart local v9    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@38
    invoke-static {v0, v9}, Landroid/app/ActivityThread;->-wrap15(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@3b
    .line 1351
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@3e
    goto :goto_0

    #@3f
    .line 1354
    .end local v9    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_3
    const-string/jumbo v0, "activityPause"

    #@42
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@45
    .line 1355
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@47
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@49
    check-cast v1, Landroid/os/IBinder;

    #@4b
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@4d
    and-int/lit8 v3, v3, 0x1

    #@4f
    if-eqz v3, :cond_0

    #@51
    move v3, v10

    #@52
    :goto_1
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@54
    .line 1356
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@56
    and-int/lit8 v5, v5, 0x2

    #@58
    if-eqz v5, :cond_1

    #@5a
    move v5, v10

    #@5b
    .line 1355
    :goto_2
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap13(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZ)V

    #@5e
    .line 1357
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    #@61
    .line 1358
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@64
    goto :goto_0

    #@65
    :cond_0
    move v3, v2

    #@66
    .line 1355
    goto :goto_1

    #@67
    :cond_1
    move v5, v2

    #@68
    .line 1356
    goto :goto_2

    #@69
    .line 1361
    :pswitch_4
    const-string/jumbo v0, "activityPause"

    #@6c
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@6f
    .line 1362
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@71
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@73
    check-cast v1, Landroid/os/IBinder;

    #@75
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@77
    and-int/lit8 v3, v3, 0x1

    #@79
    if-eqz v3, :cond_2

    #@7b
    move v3, v10

    #@7c
    :goto_3
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@7e
    .line 1363
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@80
    and-int/lit8 v5, v5, 0x1

    #@82
    if-eqz v5, :cond_3

    #@84
    move v5, v10

    #@85
    :goto_4
    move v2, v10

    #@86
    .line 1362
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap13(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZ)V

    #@89
    .line 1364
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@8c
    goto/16 :goto_0

    #@8e
    :cond_2
    move v3, v2

    #@8f
    .line 1362
    goto :goto_3

    #@90
    :cond_3
    move v5, v2

    #@91
    .line 1363
    goto :goto_4

    #@92
    .line 1367
    :pswitch_5
    const-string/jumbo v0, "activityStop"

    #@95
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@98
    .line 1368
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@9a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9c
    check-cast v0, Landroid/os/IBinder;

    #@9e
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@a0
    invoke-static {v1, v0, v10, v2}, Landroid/app/ActivityThread;->-wrap20(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    #@a3
    .line 1369
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@a6
    goto/16 :goto_0

    #@a8
    .line 1372
    :pswitch_6
    const-string/jumbo v0, "activityStop"

    #@ab
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@ae
    .line 1373
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@b0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b2
    check-cast v0, Landroid/os/IBinder;

    #@b4
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@b6
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityThread;->-wrap20(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    #@b9
    .line 1374
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@bc
    goto/16 :goto_0

    #@be
    .line 1377
    :pswitch_7
    const-string/jumbo v0, "activityShowWindow"

    #@c1
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c4
    .line 1378
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@c6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c8
    check-cast v0, Landroid/os/IBinder;

    #@ca
    invoke-static {v1, v0, v10}, Landroid/app/ActivityThread;->-wrap24(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    #@cd
    .line 1379
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@d0
    goto/16 :goto_0

    #@d2
    .line 1382
    :pswitch_8
    const-string/jumbo v0, "activityHideWindow"

    #@d5
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@d8
    .line 1383
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@da
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@dc
    check-cast v0, Landroid/os/IBinder;

    #@de
    invoke-static {v1, v0, v2}, Landroid/app/ActivityThread;->-wrap24(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    #@e1
    .line 1384
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@e4
    goto/16 :goto_0

    #@e6
    .line 1387
    :pswitch_9
    const-string/jumbo v0, "activityResume"

    #@e9
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@ec
    .line 1388
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@ee
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f0
    check-cast v0, Landroid/os/IBinder;

    #@f2
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@f4
    if-eqz v3, :cond_4

    #@f6
    move v2, v10

    #@f7
    :cond_4
    invoke-virtual {v1, v0, v10, v2, v10}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZ)V

    #@fa
    .line 1389
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@fd
    goto/16 :goto_0

    #@ff
    .line 1392
    :pswitch_a
    const-string/jumbo v0, "activityDeliverResult"

    #@102
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@105
    .line 1393
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@107
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@109
    check-cast v0, Landroid/app/ActivityThread$ResultData;

    #@10b
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap16(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    #@10e
    .line 1394
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@111
    goto/16 :goto_0

    #@113
    .line 1397
    :pswitch_b
    const-string/jumbo v0, "activityDestroy"

    #@116
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@119
    .line 1398
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@11b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11d
    check-cast v0, Landroid/os/IBinder;

    #@11f
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@121
    if-eqz v3, :cond_5

    #@123
    .line 1399
    :goto_5
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@125
    .line 1398
    invoke-static {v1, v0, v10, v3, v2}, Landroid/app/ActivityThread;->-wrap5(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    #@128
    .line 1400
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@12b
    goto/16 :goto_0

    #@12d
    :cond_5
    move v10, v2

    #@12e
    .line 1398
    goto :goto_5

    #@12f
    .line 1403
    :pswitch_c
    const-string/jumbo v0, "bindApplication"

    #@132
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@135
    .line 1404
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@137
    check-cast v7, Landroid/app/ActivityThread$AppBindData;

    #@139
    .line 1405
    .local v7, "data":Landroid/app/ActivityThread$AppBindData;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@13b
    invoke-static {v0, v7}, Landroid/app/ActivityThread;->-wrap1(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    #@13e
    .line 1406
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@141
    goto/16 :goto_0

    #@143
    .line 1409
    .end local v7    # "data":Landroid/app/ActivityThread$AppBindData;
    :pswitch_d
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@145
    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@147
    if-eqz v0, :cond_6

    #@149
    .line 1410
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@14b
    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@14d
    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    #@150
    .line 1412
    :cond_6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@153
    move-result-object v0

    #@154
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@157
    goto/16 :goto_0

    #@159
    .line 1415
    :pswitch_e
    const-string/jumbo v0, "activityNewIntent"

    #@15c
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@15f
    .line 1416
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@163
    check-cast v0, Landroid/app/ActivityThread$NewIntentData;

    #@165
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap12(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    #@168
    .line 1417
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@16b
    goto/16 :goto_0

    #@16d
    .line 1420
    :pswitch_f
    const-string/jumbo v0, "broadcastReceiveComp"

    #@170
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@173
    .line 1421
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@175
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@177
    check-cast v0, Landroid/app/ActivityThread$ReceiverData;

    #@179
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap14(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    #@17c
    .line 1422
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    #@17f
    .line 1423
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@182
    goto/16 :goto_0

    #@184
    .line 1426
    :pswitch_10
    const-string/jumbo v0, "serviceCreate"

    #@187
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@18a
    .line 1427
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@18c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@18e
    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    #@190
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap4(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    #@193
    .line 1428
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@196
    goto/16 :goto_0

    #@198
    .line 1431
    :pswitch_11
    const-string/jumbo v0, "serviceBind"

    #@19b
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@19e
    .line 1432
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1a0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a2
    check-cast v0, Landroid/app/ActivityThread$BindServiceData;

    #@1a4
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap2(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    #@1a7
    .line 1433
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@1aa
    goto/16 :goto_0

    #@1ac
    .line 1436
    :pswitch_12
    const-string/jumbo v0, "serviceUnbind"

    #@1af
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1b2
    .line 1437
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1b4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b6
    check-cast v0, Landroid/app/ActivityThread$BindServiceData;

    #@1b8
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap22(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    #@1bb
    .line 1438
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 1441
    :pswitch_13
    const-string/jumbo v0, "serviceStart"

    #@1c3
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1c6
    .line 1442
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1c8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ca
    check-cast v0, Landroid/app/ActivityThread$ServiceArgsData;

    #@1cc
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap17(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    #@1cf
    .line 1443
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@1d2
    goto/16 :goto_0

    #@1d4
    .line 1446
    :pswitch_14
    const-string/jumbo v0, "serviceStop"

    #@1d7
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1da
    .line 1447
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1dc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1de
    check-cast v0, Landroid/os/IBinder;

    #@1e0
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap21(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    #@1e3
    .line 1448
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    #@1e6
    .line 1449
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@1e9
    goto/16 :goto_0

    #@1eb
    .line 1452
    :pswitch_15
    const-string/jumbo v0, "configChanged"

    #@1ee
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1f1
    .line 1453
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1f3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f5
    check-cast v0, Landroid/content/res/Configuration;

    #@1f7
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    #@1f9
    iput v0, v1, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@1fb
    .line 1454
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1fd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ff
    check-cast v0, Landroid/content/res/Configuration;

    #@201
    invoke-virtual {v1, v0, v3}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@204
    .line 1455
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@207
    goto/16 :goto_0

    #@209
    .line 1458
    :pswitch_16
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@20b
    check-cast v6, Landroid/app/ActivityThread$ContextCleanupInfo;

    #@20d
    .line 1459
    .local v6, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v0, v6, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    #@20f
    iget-object v1, v6, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    #@211
    iget-object v2, v6, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    #@213
    invoke-virtual {v0, v1, v2}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    #@216
    goto/16 :goto_0

    #@218
    .line 1462
    .end local v6    # "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_17
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@21a
    invoke-virtual {v0}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    #@21d
    goto/16 :goto_0

    #@21f
    .line 1465
    :pswitch_18
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@221
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@223
    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    #@225
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap9(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@228
    goto/16 :goto_0

    #@22a
    .line 1468
    :pswitch_19
    const-string/jumbo v0, "lowMemory"

    #@22d
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@230
    .line 1469
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@232
    invoke-virtual {v0}, Landroid/app/ActivityThread;->handleLowMemory()V

    #@235
    .line 1470
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@238
    goto/16 :goto_0

    #@23a
    .line 1473
    :pswitch_1a
    const-string/jumbo v0, "activityConfigChanged"

    #@23d
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@240
    .line 1474
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@242
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@244
    check-cast v0, Landroid/app/ActivityThread$ActivityConfigChangeData;

    #@246
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;)V

    #@249
    .line 1475
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@24c
    goto/16 :goto_0

    #@24e
    .line 1478
    :pswitch_1b
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@250
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@252
    if-eqz v0, :cond_7

    #@254
    :goto_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@256
    check-cast v0, Landroid/app/ProfilerInfo;

    #@258
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@25a
    invoke-virtual {v1, v10, v0, v2}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    #@25d
    goto/16 :goto_0

    #@25f
    :cond_7
    move v10, v2

    #@260
    goto :goto_6

    #@261
    .line 1481
    :pswitch_1c
    const-string/jumbo v0, "backupCreateAgent"

    #@264
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@267
    .line 1482
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@269
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26b
    check-cast v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    #@26d
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap3(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    #@270
    .line 1483
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@273
    goto/16 :goto_0

    #@275
    .line 1486
    :pswitch_1d
    const-string/jumbo v0, "backupDestroyAgent"

    #@278
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@27b
    .line 1487
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@27d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@27f
    check-cast v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    #@281
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap6(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    #@284
    .line 1488
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@287
    goto/16 :goto_0

    #@289
    .line 1491
    :pswitch_1e
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@28c
    move-result v0

    #@28d
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    #@290
    goto/16 :goto_0

    #@292
    .line 1494
    :pswitch_1f
    const-string/jumbo v0, "providerRemove"

    #@295
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@298
    .line 1495
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@29a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29c
    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    #@29e
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    #@2a1
    .line 1496
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@2a4
    goto/16 :goto_0

    #@2a6
    .line 1499
    :pswitch_20
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2a8
    invoke-virtual {v0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    #@2ab
    goto/16 :goto_0

    #@2ad
    .line 1502
    :pswitch_21
    const-string/jumbo v0, "broadcastPackage"

    #@2b0
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2b3
    .line 1503
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2b5
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@2b7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b9
    check-cast v0, [Ljava/lang/String;

    #@2bb
    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    #@2be
    .line 1504
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@2c1
    goto/16 :goto_0

    #@2c3
    .line 1507
    :pswitch_22
    new-instance v1, Landroid/app/RemoteServiceException;

    #@2c5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2c7
    check-cast v0, Ljava/lang/String;

    #@2c9
    invoke-direct {v1, v0}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    #@2cc
    throw v1

    #@2cd
    .line 1509
    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@2cf
    if-eqz v0, :cond_8

    #@2d1
    :goto_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d3
    check-cast v0, Landroid/app/ActivityThread$DumpHeapData;

    #@2d5
    invoke-static {v10, v0}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    #@2d8
    goto/16 :goto_0

    #@2da
    :cond_8
    move v10, v2

    #@2db
    goto :goto_7

    #@2dc
    .line 1512
    :pswitch_24
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2de
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e0
    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    #@2e2
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap7(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@2e5
    goto/16 :goto_0

    #@2e7
    .line 1515
    :pswitch_25
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2e9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2eb
    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    #@2ed
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap8(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@2f0
    goto/16 :goto_0

    #@2f2
    .line 1518
    :pswitch_26
    const-string/jumbo v0, "sleeping"

    #@2f5
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2f8
    .line 1519
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2fa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2fc
    check-cast v0, Landroid/os/IBinder;

    #@2fe
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@300
    if-eqz v3, :cond_9

    #@302
    :goto_8
    invoke-static {v1, v0, v10}, Landroid/app/ActivityThread;->-wrap19(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    #@305
    .line 1520
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@308
    goto/16 :goto_0

    #@30a
    :cond_9
    move v10, v2

    #@30b
    .line 1519
    goto :goto_8

    #@30c
    .line 1523
    :pswitch_27
    const-string/jumbo v0, "setCoreSettings"

    #@30f
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@312
    .line 1524
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@314
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@316
    check-cast v0, Landroid/os/Bundle;

    #@318
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap18(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    #@31b
    .line 1525
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@31e
    goto/16 :goto_0

    #@320
    .line 1528
    :pswitch_28
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@322
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@324
    check-cast v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    #@326
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap23(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    #@329
    goto/16 :goto_0

    #@32b
    .line 1531
    :pswitch_29
    const-string/jumbo v0, "trimMemory"

    #@32e
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@331
    .line 1532
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@333
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@335
    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    #@338
    .line 1533
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@33b
    goto/16 :goto_0

    #@33d
    .line 1536
    :pswitch_2a
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@33f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@341
    check-cast v0, Landroid/os/IBinder;

    #@343
    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    #@346
    goto/16 :goto_0

    #@348
    .line 1539
    :pswitch_2b
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@34a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@34c
    check-cast v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    #@34e
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    #@351
    goto/16 :goto_0

    #@353
    .line 1542
    :pswitch_2c
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@355
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@357
    check-cast v0, Landroid/os/IBinder;

    #@359
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@35b
    if-ne v3, v10, :cond_a

    #@35d
    :goto_9
    invoke-virtual {v1, v0, v10}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    #@360
    goto/16 :goto_0

    #@362
    :cond_a
    move v10, v2

    #@363
    goto :goto_9

    #@364
    .line 1545
    :pswitch_2d
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@366
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@368
    check-cast v0, Landroid/content/pm/ProviderInfo;

    #@36a
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    #@36d
    goto/16 :goto_0

    #@36f
    .line 1548
    :pswitch_2e
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@371
    check-cast v8, Landroid/util/Pair;

    #@373
    .line 1549
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@375
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@377
    check-cast v0, Landroid/os/IBinder;

    #@379
    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@37b
    check-cast v1, Landroid/app/ActivityOptions;

    #@37d
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    #@380
    goto/16 :goto_0

    #@382
    .line 1552
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    :pswitch_2f
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@384
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@386
    check-cast v0, Landroid/os/IBinder;

    #@388
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleCancelVisibleBehind(Landroid/os/IBinder;)V

    #@38b
    goto/16 :goto_0

    #@38d
    .line 1555
    :pswitch_30
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@38f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@391
    check-cast v0, Landroid/os/IBinder;

    #@393
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@395
    if-lez v3, :cond_b

    #@397
    :goto_a
    invoke-virtual {v1, v0, v10}, Landroid/app/ActivityThread;->handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    #@39a
    goto/16 :goto_0

    #@39c
    :cond_b
    move v10, v2

    #@39d
    goto :goto_a

    #@39e
    .line 1558
    :pswitch_31
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@3a0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a2
    check-cast v0, Landroid/os/IBinder;

    #@3a4
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap10(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    #@3a7
    goto/16 :goto_0

    #@3a9
    .line 1337
    nop

    #@3aa
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_11
        :pswitch_12
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_2
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_25
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method
