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

.field public static final LOCAL_VOICE_INTERACTION_STARTED:I = 0x9a

.field public static final LOW_MEMORY:I = 0x7c

.field public static final MULTI_WINDOW_MODE_CHANGED:I = 0x98

.field public static final NEW_INTENT:I = 0x70

.field public static final ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PICTURE_IN_PICTURE_MODE_CHANGED:I = 0x99

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

.field public static final START_BINDER_TRACKING:I = 0x96

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_BINDER_TRACKING_AND_DUMP:I = 0x97

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
    .line 1335
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
    .line 1709
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
    .line 1712
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@e
    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@10
    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@12
    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@14
    .line 1713
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    #@15
    .line 1715
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@17
    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@1a
    move-result-object v0

    #@1b
    .line 1716
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    #@1d
    .line 1717
    const-string/jumbo v5, "ActivityThread"

    #@20
    const-string/jumbo v6, "cannot get a valid context"

    #@23
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1718
    return-void

    #@27
    .line 1720
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2a
    move-result-object v4

    #@2b
    .line 1721
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_1

    #@2d
    .line 1722
    const-string/jumbo v5, "ActivityThread"

    #@30
    const-string/jumbo v6, "cannot get a valid PackageManager"

    #@33
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 1723
    return-void

    #@37
    .line 1726
    :cond_1
    const/4 v5, 0x1

    #@38
    .line 1725
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result-object v2

    #@3c
    .line 1730
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
    .line 1708
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return-void

    #@46
    .line 1727
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@47
    .line 1728
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
    .line 1449
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1453
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1701
    :goto_0
    :pswitch_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7
    .line 1702
    .local v10, "obj":Ljava/lang/Object;
    instance-of v0, v10, Lcom/android/internal/os/SomeArgs;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1703
    check-cast v10, Lcom/android/internal/os/SomeArgs;

    #@d
    .end local v10    # "obj":Ljava/lang/Object;
    invoke-virtual {v10}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@10
    .line 1451
    :cond_0
    return-void

    #@11
    .line 1455
    :pswitch_1
    const-string/jumbo v0, "activityStart"

    #@14
    const-wide/16 v2, 0x40

    #@16
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@19
    .line 1456
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b
    check-cast v12, Landroid/app/ActivityThread$ActivityClientRecord;

    #@1d
    .line 1458
    .local v12, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1f
    .line 1459
    iget-object v1, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@21
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23
    iget-object v2, v12, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@25
    .line 1458
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    #@28
    move-result-object v0

    #@29
    iput-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@2b
    .line 1460
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2d
    const-string/jumbo v1, "LAUNCH_ACTIVITY"

    #@30
    const/4 v2, 0x0

    #@31
    invoke-static {v0, v12, v2, v1}, Landroid/app/ActivityThread;->-wrap12(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V

    #@34
    .line 1461
    const-wide/16 v0, 0x40

    #@36
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@39
    goto :goto_0

    #@3a
    .line 1464
    .end local v12    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_2
    const-string/jumbo v0, "activityRestart"

    #@3d
    const-wide/16 v2, 0x40

    #@3f
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@42
    .line 1465
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@44
    check-cast v12, Landroid/app/ActivityThread$ActivityClientRecord;

    #@46
    .line 1466
    .restart local v12    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@48
    invoke-static {v0, v12}, Landroid/app/ActivityThread;->-wrap19(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@4b
    .line 1467
    const-wide/16 v0, 0x40

    #@4d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@50
    goto :goto_0

    #@51
    .line 1470
    .end local v12    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_3
    const-string/jumbo v0, "activityPause"

    #@54
    const-wide/16 v2, 0x40

    #@56
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@59
    .line 1471
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5b
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@5d
    .line 1472
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@5f
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@61
    check-cast v1, Landroid/os/IBinder;

    #@63
    .line 1473
    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@65
    and-int/lit8 v2, v2, 0x1

    #@67
    if-eqz v2, :cond_1

    #@69
    const/4 v3, 0x1

    #@6a
    :goto_1
    iget v4, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@6c
    .line 1474
    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@6e
    and-int/lit8 v2, v2, 0x2

    #@70
    if-eqz v2, :cond_2

    #@72
    const/4 v5, 0x1

    #@73
    :goto_2
    iget v6, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@75
    .line 1472
    const/4 v2, 0x0

    #@76
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityThread;->-wrap16(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V

    #@79
    .line 1475
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    #@7c
    .line 1476
    const-wide/16 v0, 0x40

    #@7e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@81
    goto :goto_0

    #@82
    .line 1473
    :cond_1
    const/4 v3, 0x0

    #@83
    goto :goto_1

    #@84
    .line 1474
    :cond_2
    const/4 v5, 0x0

    #@85
    goto :goto_2

    #@86
    .line 1479
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    const-string/jumbo v0, "activityPause"

    #@89
    const-wide/16 v2, 0x40

    #@8b
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8e
    .line 1480
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@90
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@92
    .line 1481
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@94
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@96
    check-cast v1, Landroid/os/IBinder;

    #@98
    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@9a
    and-int/lit8 v2, v2, 0x1

    #@9c
    if-eqz v2, :cond_3

    #@9e
    const/4 v3, 0x1

    #@9f
    .line 1482
    :goto_3
    iget v4, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@a1
    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@a3
    and-int/lit8 v2, v2, 0x2

    #@a5
    if-eqz v2, :cond_4

    #@a7
    const/4 v5, 0x1

    #@a8
    :goto_4
    iget v6, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@aa
    .line 1481
    const/4 v2, 0x1

    #@ab
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityThread;->-wrap16(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V

    #@ae
    .line 1483
    const-wide/16 v0, 0x40

    #@b0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@b3
    goto/16 :goto_0

    #@b5
    .line 1481
    :cond_3
    const/4 v3, 0x0

    #@b6
    goto :goto_3

    #@b7
    .line 1482
    :cond_4
    const/4 v5, 0x0

    #@b8
    goto :goto_4

    #@b9
    .line 1486
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    const-string/jumbo v0, "activityStop"

    #@bc
    const-wide/16 v2, 0x40

    #@be
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c1
    .line 1487
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c3
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@c5
    .line 1488
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@c7
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@c9
    check-cast v0, Landroid/os/IBinder;

    #@cb
    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@cd
    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@cf
    const/4 v4, 0x1

    #@d0
    invoke-static {v1, v0, v4, v2, v3}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;Landroid/os/IBinder;ZII)V

    #@d3
    .line 1489
    const-wide/16 v0, 0x40

    #@d5
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@d8
    goto/16 :goto_0

    #@da
    .line 1492
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    const-string/jumbo v0, "activityStop"

    #@dd
    const-wide/16 v2, 0x40

    #@df
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@e2
    .line 1493
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e4
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@e6
    .line 1494
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@e8
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@ea
    check-cast v0, Landroid/os/IBinder;

    #@ec
    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@ee
    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@f0
    const/4 v4, 0x0

    #@f1
    invoke-static {v1, v0, v4, v2, v3}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;Landroid/os/IBinder;ZII)V

    #@f4
    .line 1495
    const-wide/16 v0, 0x40

    #@f6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@f9
    goto/16 :goto_0

    #@fb
    .line 1498
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    const-string/jumbo v0, "activityShowWindow"

    #@fe
    const-wide/16 v2, 0x40

    #@100
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@103
    .line 1499
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@105
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@107
    check-cast v0, Landroid/os/IBinder;

    #@109
    const/4 v2, 0x1

    #@10a
    invoke-static {v1, v0, v2}, Landroid/app/ActivityThread;->-wrap30(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    #@10d
    .line 1500
    const-wide/16 v0, 0x40

    #@10f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@112
    goto/16 :goto_0

    #@114
    .line 1503
    :pswitch_8
    const-string/jumbo v0, "activityHideWindow"

    #@117
    const-wide/16 v2, 0x40

    #@119
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@11c
    .line 1504
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@11e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@120
    check-cast v0, Landroid/os/IBinder;

    #@122
    const/4 v2, 0x0

    #@123
    invoke-static {v1, v0, v2}, Landroid/app/ActivityThread;->-wrap30(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    #@126
    .line 1505
    const-wide/16 v0, 0x40

    #@128
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@12b
    goto/16 :goto_0

    #@12d
    .line 1508
    :pswitch_9
    const-string/jumbo v0, "activityResume"

    #@130
    const-wide/16 v2, 0x40

    #@132
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@135
    .line 1509
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@137
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@139
    .line 1510
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@13b
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@13d
    check-cast v1, Landroid/os/IBinder;

    #@13f
    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@141
    if-eqz v2, :cond_5

    #@143
    const/4 v3, 0x1

    #@144
    .line 1511
    :goto_5
    iget v5, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@146
    const-string/jumbo v6, "RESUME_ACTIVITY"

    #@149
    .line 1510
    const/4 v2, 0x1

    #@14a
    const/4 v4, 0x1

    #@14b
    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZILjava/lang/String;)V

    #@14e
    .line 1512
    const-wide/16 v0, 0x40

    #@150
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@153
    goto/16 :goto_0

    #@155
    .line 1510
    :cond_5
    const/4 v3, 0x0

    #@156
    goto :goto_5

    #@157
    .line 1515
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    const-string/jumbo v0, "activityDeliverResult"

    #@15a
    const-wide/16 v2, 0x40

    #@15c
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@15f
    .line 1516
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@163
    check-cast v0, Landroid/app/ActivityThread$ResultData;

    #@165
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap20(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    #@168
    .line 1517
    const-wide/16 v0, 0x40

    #@16a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@16d
    goto/16 :goto_0

    #@16f
    .line 1520
    :pswitch_b
    const-string/jumbo v0, "activityDestroy"

    #@172
    const-wide/16 v2, 0x40

    #@174
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@177
    .line 1521
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@179
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17b
    check-cast v0, Landroid/os/IBinder;

    #@17d
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@17f
    if-eqz v1, :cond_6

    #@181
    const/4 v1, 0x1

    #@182
    .line 1522
    :goto_6
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@184
    const/4 v4, 0x0

    #@185
    .line 1521
    invoke-static {v2, v0, v1, v3, v4}, Landroid/app/ActivityThread;->-wrap6(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    #@188
    .line 1523
    const-wide/16 v0, 0x40

    #@18a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@18d
    goto/16 :goto_0

    #@18f
    .line 1521
    :cond_6
    const/4 v1, 0x0

    #@190
    goto :goto_6

    #@191
    .line 1526
    :pswitch_c
    const-string/jumbo v0, "bindApplication"

    #@194
    const-wide/16 v2, 0x40

    #@196
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@199
    .line 1527
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19b
    check-cast v9, Landroid/app/ActivityThread$AppBindData;

    #@19d
    .line 1528
    .local v9, "data":Landroid/app/ActivityThread$AppBindData;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@19f
    invoke-static {v0, v9}, Landroid/app/ActivityThread;->-wrap2(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    #@1a2
    .line 1529
    const-wide/16 v0, 0x40

    #@1a4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@1a7
    goto/16 :goto_0

    #@1a9
    .line 1532
    .end local v9    # "data":Landroid/app/ActivityThread$AppBindData;
    :pswitch_d
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1ab
    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@1ad
    if-eqz v0, :cond_7

    #@1af
    .line 1533
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1b1
    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@1b3
    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    #@1b6
    .line 1535
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1b9
    move-result-object v0

    #@1ba
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@1bd
    goto/16 :goto_0

    #@1bf
    .line 1538
    :pswitch_e
    const-string/jumbo v0, "activityNewIntent"

    #@1c2
    const-wide/16 v2, 0x40

    #@1c4
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1c7
    .line 1539
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1c9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1cb
    check-cast v0, Landroid/app/ActivityThread$NewIntentData;

    #@1cd
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap15(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    #@1d0
    .line 1540
    const-wide/16 v0, 0x40

    #@1d2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@1d5
    goto/16 :goto_0

    #@1d7
    .line 1543
    :pswitch_f
    const-string/jumbo v0, "broadcastReceiveComp"

    #@1da
    const-wide/16 v2, 0x40

    #@1dc
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1df
    .line 1544
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1e1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e3
    check-cast v0, Landroid/app/ActivityThread$ReceiverData;

    #@1e5
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap18(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    #@1e8
    .line 1545
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    #@1eb
    .line 1546
    const-wide/16 v0, 0x40

    #@1ed
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@1f0
    goto/16 :goto_0

    #@1f2
    .line 1549
    :pswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f7
    const-string/jumbo v1, "serviceCreate: "

    #@1fa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v0

    #@1fe
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@200
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@203
    move-result-object v1

    #@204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v0

    #@208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20b
    move-result-object v0

    #@20c
    const-wide/16 v2, 0x40

    #@20e
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@211
    .line 1550
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@213
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@215
    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    #@217
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap5(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    #@21a
    .line 1551
    const-wide/16 v0, 0x40

    #@21c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@21f
    goto/16 :goto_0

    #@221
    .line 1554
    :pswitch_11
    const-string/jumbo v0, "serviceBind"

    #@224
    const-wide/16 v2, 0x40

    #@226
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@229
    .line 1555
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@22b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22d
    check-cast v0, Landroid/app/ActivityThread$BindServiceData;

    #@22f
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap3(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    #@232
    .line 1556
    const-wide/16 v0, 0x40

    #@234
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@237
    goto/16 :goto_0

    #@239
    .line 1559
    :pswitch_12
    const-string/jumbo v0, "serviceUnbind"

    #@23c
    const-wide/16 v2, 0x40

    #@23e
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@241
    .line 1560
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@243
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@245
    check-cast v0, Landroid/app/ActivityThread$BindServiceData;

    #@247
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    #@24a
    .line 1561
    const-wide/16 v0, 0x40

    #@24c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@24f
    goto/16 :goto_0

    #@251
    .line 1564
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    #@253
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@256
    const-string/jumbo v1, "serviceStart: "

    #@259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v0

    #@25d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@25f
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@262
    move-result-object v1

    #@263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v0

    #@267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26a
    move-result-object v0

    #@26b
    const-wide/16 v2, 0x40

    #@26d
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@270
    .line 1565
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@272
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@274
    check-cast v0, Landroid/app/ActivityThread$ServiceArgsData;

    #@276
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap21(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    #@279
    .line 1566
    const-wide/16 v0, 0x40

    #@27b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@27e
    goto/16 :goto_0

    #@280
    .line 1569
    :pswitch_14
    const-string/jumbo v0, "serviceStop"

    #@283
    const-wide/16 v2, 0x40

    #@285
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@288
    .line 1570
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@28a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28c
    check-cast v0, Landroid/os/IBinder;

    #@28e
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap27(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    #@291
    .line 1571
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    #@294
    .line 1572
    const-wide/16 v0, 0x40

    #@296
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@299
    goto/16 :goto_0

    #@29b
    .line 1575
    :pswitch_15
    const-string/jumbo v0, "configChanged"

    #@29e
    const-wide/16 v2, 0x40

    #@2a0
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2a3
    .line 1576
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2a5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a7
    check-cast v0, Landroid/content/res/Configuration;

    #@2a9
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    #@2ab
    iput v0, v1, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@2ad
    .line 1577
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2af
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b1
    check-cast v0, Landroid/content/res/Configuration;

    #@2b3
    const/4 v2, 0x0

    #@2b4
    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@2b7
    .line 1578
    const-wide/16 v0, 0x40

    #@2b9
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@2bc
    goto/16 :goto_0

    #@2be
    .line 1581
    :pswitch_16
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2c0
    check-cast v8, Landroid/app/ActivityThread$ContextCleanupInfo;

    #@2c2
    .line 1582
    .local v8, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v0, v8, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    #@2c4
    iget-object v1, v8, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    #@2c6
    iget-object v2, v8, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    #@2c8
    invoke-virtual {v0, v1, v2}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    #@2cb
    goto/16 :goto_0

    #@2cd
    .line 1585
    .end local v8    # "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_17
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2cf
    invoke-virtual {v0}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    #@2d2
    goto/16 :goto_0

    #@2d4
    .line 1588
    :pswitch_18
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2d6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d8
    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    #@2da
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap10(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@2dd
    goto/16 :goto_0

    #@2df
    .line 1591
    :pswitch_19
    const-string/jumbo v0, "lowMemory"

    #@2e2
    const-wide/16 v2, 0x40

    #@2e4
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2e7
    .line 1592
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2e9
    invoke-virtual {v0}, Landroid/app/ActivityThread;->handleLowMemory()V

    #@2ec
    .line 1593
    const-wide/16 v0, 0x40

    #@2ee
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@2f1
    goto/16 :goto_0

    #@2f3
    .line 1596
    :pswitch_1a
    const-string/jumbo v0, "activityConfigChanged"

    #@2f6
    const-wide/16 v2, 0x40

    #@2f8
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2fb
    .line 1597
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2fd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2ff
    check-cast v0, Landroid/app/ActivityThread$ActivityConfigChangeData;

    #@301
    .line 1598
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@303
    const/4 v3, 0x1

    #@304
    if-ne v1, v3, :cond_8

    #@306
    const/4 v1, 0x1

    #@307
    .line 1597
    :goto_7
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;Z)V

    #@30a
    .line 1599
    const-wide/16 v0, 0x40

    #@30c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@30f
    goto/16 :goto_0

    #@311
    .line 1598
    :cond_8
    const/4 v1, 0x0

    #@312
    goto :goto_7

    #@313
    .line 1602
    :pswitch_1b
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@315
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@317
    if-eqz v0, :cond_9

    #@319
    const/4 v0, 0x1

    #@31a
    move v1, v0

    #@31b
    :goto_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@31d
    check-cast v0, Landroid/app/ProfilerInfo;

    #@31f
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@321
    invoke-virtual {v2, v1, v0, v3}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    #@324
    goto/16 :goto_0

    #@326
    :cond_9
    const/4 v0, 0x0

    #@327
    move v1, v0

    #@328
    goto :goto_8

    #@329
    .line 1605
    :pswitch_1c
    const-string/jumbo v0, "backupCreateAgent"

    #@32c
    const-wide/16 v2, 0x40

    #@32e
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@331
    .line 1606
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@333
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@335
    check-cast v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    #@337
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap4(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    #@33a
    .line 1607
    const-wide/16 v0, 0x40

    #@33c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@33f
    goto/16 :goto_0

    #@341
    .line 1610
    :pswitch_1d
    const-string/jumbo v0, "backupDestroyAgent"

    #@344
    const-wide/16 v2, 0x40

    #@346
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@349
    .line 1611
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@34b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@34d
    check-cast v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    #@34f
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap7(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    #@352
    .line 1612
    const-wide/16 v0, 0x40

    #@354
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@357
    goto/16 :goto_0

    #@359
    .line 1615
    :pswitch_1e
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@35c
    move-result v0

    #@35d
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    #@360
    goto/16 :goto_0

    #@362
    .line 1618
    :pswitch_1f
    const-string/jumbo v0, "providerRemove"

    #@365
    const-wide/16 v2, 0x40

    #@367
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@36a
    .line 1619
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@36c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@36e
    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    #@370
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    #@373
    .line 1620
    const-wide/16 v0, 0x40

    #@375
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@378
    goto/16 :goto_0

    #@37a
    .line 1623
    :pswitch_20
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@37c
    invoke-virtual {v0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    #@37f
    goto/16 :goto_0

    #@381
    .line 1626
    :pswitch_21
    const-string/jumbo v0, "broadcastPackage"

    #@384
    const-wide/16 v2, 0x40

    #@386
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@389
    .line 1627
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@38b
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@38d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@38f
    check-cast v0, [Ljava/lang/String;

    #@391
    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    #@394
    .line 1628
    const-wide/16 v0, 0x40

    #@396
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@399
    goto/16 :goto_0

    #@39b
    .line 1631
    :pswitch_22
    new-instance v1, Landroid/app/RemoteServiceException;

    #@39d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@39f
    check-cast v0, Ljava/lang/String;

    #@3a1
    invoke-direct {v1, v0}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    #@3a4
    throw v1

    #@3a5
    .line 1633
    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@3a7
    if-eqz v0, :cond_a

    #@3a9
    const/4 v0, 0x1

    #@3aa
    move v1, v0

    #@3ab
    :goto_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3ad
    check-cast v0, Landroid/app/ActivityThread$DumpHeapData;

    #@3af
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    #@3b2
    goto/16 :goto_0

    #@3b4
    :cond_a
    const/4 v0, 0x0

    #@3b5
    move v1, v0

    #@3b6
    goto :goto_9

    #@3b7
    .line 1636
    :pswitch_24
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@3b9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3bb
    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    #@3bd
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap8(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@3c0
    goto/16 :goto_0

    #@3c2
    .line 1639
    :pswitch_25
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@3c4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3c6
    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    #@3c8
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap9(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@3cb
    goto/16 :goto_0

    #@3cd
    .line 1642
    :pswitch_26
    const-string/jumbo v0, "sleeping"

    #@3d0
    const-wide/16 v2, 0x40

    #@3d2
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@3d5
    .line 1643
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@3d7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3d9
    check-cast v0, Landroid/os/IBinder;

    #@3db
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@3dd
    if-eqz v1, :cond_b

    #@3df
    const/4 v1, 0x1

    #@3e0
    :goto_a
    invoke-static {v2, v0, v1}, Landroid/app/ActivityThread;->-wrap23(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    #@3e3
    .line 1644
    const-wide/16 v0, 0x40

    #@3e5
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@3e8
    goto/16 :goto_0

    #@3ea
    .line 1643
    :cond_b
    const/4 v1, 0x0

    #@3eb
    goto :goto_a

    #@3ec
    .line 1647
    :pswitch_27
    const-string/jumbo v0, "setCoreSettings"

    #@3ef
    const-wide/16 v2, 0x40

    #@3f1
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@3f4
    .line 1648
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@3f6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3f8
    check-cast v0, Landroid/os/Bundle;

    #@3fa
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap22(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    #@3fd
    .line 1649
    const-wide/16 v0, 0x40

    #@3ff
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@402
    goto/16 :goto_0

    #@404
    .line 1652
    :pswitch_28
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@406
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@408
    check-cast v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    #@40a
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap29(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    #@40d
    goto/16 :goto_0

    #@40f
    .line 1655
    :pswitch_29
    const-string/jumbo v0, "trimMemory"

    #@412
    const-wide/16 v2, 0x40

    #@414
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@417
    .line 1656
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@419
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@41b
    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    #@41e
    .line 1657
    const-wide/16 v0, 0x40

    #@420
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@423
    goto/16 :goto_0

    #@425
    .line 1660
    :pswitch_2a
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@427
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@429
    check-cast v0, Landroid/os/IBinder;

    #@42b
    const/4 v2, 0x0

    #@42c
    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    #@42f
    goto/16 :goto_0

    #@431
    .line 1663
    :pswitch_2b
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@433
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@435
    check-cast v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    #@437
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    #@43a
    goto/16 :goto_0

    #@43c
    .line 1666
    :pswitch_2c
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@43e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@440
    check-cast v0, Landroid/os/IBinder;

    #@442
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@444
    const/4 v3, 0x1

    #@445
    if-ne v1, v3, :cond_c

    #@447
    const/4 v1, 0x1

    #@448
    :goto_b
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    #@44b
    goto/16 :goto_0

    #@44d
    :cond_c
    const/4 v1, 0x0

    #@44e
    goto :goto_b

    #@44f
    .line 1669
    :pswitch_2d
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@451
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@453
    check-cast v0, Landroid/content/pm/ProviderInfo;

    #@455
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    #@458
    goto/16 :goto_0

    #@45a
    .line 1672
    :pswitch_2e
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@45c
    check-cast v11, Landroid/util/Pair;

    #@45e
    .line 1673
    .local v11, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@460
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@462
    check-cast v0, Landroid/os/IBinder;

    #@464
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@466
    check-cast v1, Landroid/app/ActivityOptions;

    #@468
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    #@46b
    goto/16 :goto_0

    #@46d
    .line 1676
    .end local v11    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    :pswitch_2f
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@46f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@471
    check-cast v0, Landroid/os/IBinder;

    #@473
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleCancelVisibleBehind(Landroid/os/IBinder;)V

    #@476
    goto/16 :goto_0

    #@478
    .line 1679
    :pswitch_30
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@47a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@47c
    check-cast v0, Landroid/os/IBinder;

    #@47e
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@480
    if-lez v1, :cond_d

    #@482
    const/4 v1, 0x1

    #@483
    :goto_c
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    #@486
    goto/16 :goto_0

    #@488
    :cond_d
    const/4 v1, 0x0

    #@489
    goto :goto_c

    #@48a
    .line 1682
    :pswitch_31
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@48c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@48e
    check-cast v0, Landroid/os/IBinder;

    #@490
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap11(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    #@493
    goto/16 :goto_0

    #@495
    .line 1685
    :pswitch_32
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@497
    invoke-static {v0}, Landroid/app/ActivityThread;->-wrap24(Landroid/app/ActivityThread;)V

    #@49a
    goto/16 :goto_0

    #@49c
    .line 1688
    :pswitch_33
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@49e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4a0
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    #@4a2
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V

    #@4a5
    goto/16 :goto_0

    #@4a7
    .line 1691
    :pswitch_34
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@4a9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4ab
    check-cast v0, Landroid/os/IBinder;

    #@4ad
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@4af
    const/4 v3, 0x1

    #@4b0
    if-ne v1, v3, :cond_e

    #@4b2
    const/4 v1, 0x1

    #@4b3
    :goto_d
    invoke-static {v2, v0, v1}, Landroid/app/ActivityThread;->-wrap14(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    #@4b6
    goto/16 :goto_0

    #@4b8
    :cond_e
    const/4 v1, 0x0

    #@4b9
    goto :goto_d

    #@4ba
    .line 1694
    :pswitch_35
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@4bc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4be
    check-cast v0, Landroid/os/IBinder;

    #@4c0
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@4c2
    const/4 v3, 0x1

    #@4c3
    if-ne v1, v3, :cond_f

    #@4c5
    const/4 v1, 0x1

    #@4c6
    :goto_e
    invoke-static {v2, v0, v1}, Landroid/app/ActivityThread;->-wrap17(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    #@4c9
    goto/16 :goto_0

    #@4cb
    :cond_f
    const/4 v1, 0x0

    #@4cc
    goto :goto_e

    #@4cd
    .line 1697
    :pswitch_36
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@4cf
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4d1
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@4d3
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@4d5
    check-cast v0, Landroid/os/IBinder;

    #@4d7
    .line 1698
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4d9
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@4db
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@4dd
    check-cast v1, Lcom/android/internal/app/IVoiceInteractor;

    #@4df
    .line 1697
    invoke-static {v2, v0, v1}, Landroid/app/ActivityThread;->-wrap13(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    #@4e2
    goto/16 :goto_0

    #@4e4
    .line 1453
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
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
    .end packed-switch
.end method
