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
    .line 1352
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
    .line 1728
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
    .line 1731
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@e
    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@10
    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@12
    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@14
    .line 1732
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    #@15
    .line 1734
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@17
    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@1a
    move-result-object v0

    #@1b
    .line 1735
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    #@1d
    .line 1736
    const-string/jumbo v5, "ActivityThread"

    #@20
    const-string/jumbo v6, "cannot get a valid context"

    #@23
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1737
    return-void

    #@27
    .line 1739
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2a
    move-result-object v4

    #@2b
    .line 1740
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_1

    #@2d
    .line 1741
    const-string/jumbo v5, "ActivityThread"

    #@30
    const-string/jumbo v6, "cannot get a valid PackageManager"

    #@33
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 1742
    return-void

    #@37
    .line 1745
    :cond_1
    const/4 v5, 0x1

    #@38
    .line 1744
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result-object v2

    #@3c
    .line 1749
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
    .line 1727
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return-void

    #@46
    .line 1746
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@47
    .line 1747
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
    .line 1466
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
    .line 1470
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1720
    :goto_0
    :pswitch_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7
    .line 1721
    .local v10, "obj":Ljava/lang/Object;
    instance-of v0, v10, Lcom/android/internal/os/SomeArgs;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1722
    check-cast v10, Lcom/android/internal/os/SomeArgs;

    #@d
    .end local v10    # "obj":Ljava/lang/Object;
    invoke-virtual {v10}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@10
    .line 1468
    :cond_0
    return-void

    #@11
    .line 1472
    :pswitch_1
    const-string/jumbo v0, "activityStart"

    #@14
    const-wide/16 v2, 0x40

    #@16
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@19
    .line 1473
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b
    check-cast v12, Landroid/app/ActivityThread$ActivityClientRecord;

    #@1d
    .line 1475
    .local v12, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1f
    .line 1476
    iget-object v1, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@21
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23
    iget-object v2, v12, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@25
    .line 1475
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    #@28
    move-result-object v0

    #@29
    iput-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@2b
    .line 1477
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2d
    const-string/jumbo v1, "LAUNCH_ACTIVITY"

    #@30
    const/4 v2, 0x0

    #@31
    invoke-static {v0, v12, v2, v1}, Landroid/app/ActivityThread;->-wrap12(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V

    #@34
    .line 1478
    const-wide/16 v0, 0x40

    #@36
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@39
    goto :goto_0

    #@3a
    .line 1481
    .end local v12    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_2
    const-string/jumbo v0, "activityRestart"

    #@3d
    const-wide/16 v2, 0x40

    #@3f
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@42
    .line 1482
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@44
    check-cast v12, Landroid/app/ActivityThread$ActivityClientRecord;

    #@46
    .line 1483
    .restart local v12    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@48
    invoke-static {v0, v12}, Landroid/app/ActivityThread;->-wrap19(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@4b
    .line 1484
    const-wide/16 v0, 0x40

    #@4d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@50
    goto :goto_0

    #@51
    .line 1487
    .end local v12    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_3
    const-string/jumbo v0, "activityPause"

    #@54
    const-wide/16 v2, 0x40

    #@56
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@59
    .line 1488
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5b
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@5d
    .line 1489
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@5f
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@61
    check-cast v1, Landroid/os/IBinder;

    #@63
    .line 1490
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
    .line 1491
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
    .line 1489
    const/4 v2, 0x0

    #@76
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityThread;->-wrap16(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V

    #@79
    .line 1492
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    #@7c
    .line 1493
    const-wide/16 v0, 0x40

    #@7e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@81
    goto :goto_0

    #@82
    .line 1490
    :cond_1
    const/4 v3, 0x0

    #@83
    goto :goto_1

    #@84
    .line 1491
    :cond_2
    const/4 v5, 0x0

    #@85
    goto :goto_2

    #@86
    .line 1496
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    const-string/jumbo v0, "activityPause"

    #@89
    const-wide/16 v2, 0x40

    #@8b
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8e
    .line 1497
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@90
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@92
    .line 1498
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
    .line 1499
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
    .line 1498
    const/4 v2, 0x1

    #@ab
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityThread;->-wrap16(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V

    #@ae
    .line 1500
    const-wide/16 v0, 0x40

    #@b0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@b3
    goto/16 :goto_0

    #@b5
    .line 1498
    :cond_3
    const/4 v3, 0x0

    #@b6
    goto :goto_3

    #@b7
    .line 1499
    :cond_4
    const/4 v5, 0x0

    #@b8
    goto :goto_4

    #@b9
    .line 1503
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    const-string/jumbo v0, "activityStop"

    #@bc
    const-wide/16 v2, 0x40

    #@be
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c1
    .line 1504
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c3
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@c5
    .line 1505
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
    .line 1506
    const-wide/16 v0, 0x40

    #@d5
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@d8
    goto/16 :goto_0

    #@da
    .line 1509
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    const-string/jumbo v0, "activityStop"

    #@dd
    const-wide/16 v2, 0x40

    #@df
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@e2
    .line 1510
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e4
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@e6
    .line 1511
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
    .line 1512
    const-wide/16 v0, 0x40

    #@f6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@f9
    goto/16 :goto_0

    #@fb
    .line 1515
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    const-string/jumbo v0, "activityShowWindow"

    #@fe
    const-wide/16 v2, 0x40

    #@100
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@103
    .line 1516
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
    .line 1517
    const-wide/16 v0, 0x40

    #@10f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@112
    goto/16 :goto_0

    #@114
    .line 1520
    :pswitch_8
    const-string/jumbo v0, "activityHideWindow"

    #@117
    const-wide/16 v2, 0x40

    #@119
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@11c
    .line 1521
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
    .line 1522
    const-wide/16 v0, 0x40

    #@128
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@12b
    goto/16 :goto_0

    #@12d
    .line 1525
    :pswitch_9
    const-string/jumbo v0, "activityResume"

    #@130
    const-wide/16 v2, 0x40

    #@132
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@135
    .line 1526
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@137
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@139
    .line 1527
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
    .line 1528
    :goto_5
    iget v5, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@146
    const-string/jumbo v6, "RESUME_ACTIVITY"

    #@149
    .line 1527
    const/4 v2, 0x1

    #@14a
    const/4 v4, 0x1

    #@14b
    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZILjava/lang/String;)V

    #@14e
    .line 1529
    const-wide/16 v0, 0x40

    #@150
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@153
    goto/16 :goto_0

    #@155
    .line 1527
    :cond_5
    const/4 v3, 0x0

    #@156
    goto :goto_5

    #@157
    .line 1532
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    const-string/jumbo v0, "activityDeliverResult"

    #@15a
    const-wide/16 v2, 0x40

    #@15c
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@15f
    .line 1533
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@163
    check-cast v0, Landroid/app/ActivityThread$ResultData;

    #@165
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap20(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    #@168
    .line 1534
    const-wide/16 v0, 0x40

    #@16a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@16d
    goto/16 :goto_0

    #@16f
    .line 1537
    :pswitch_b
    const-string/jumbo v0, "activityDestroy"

    #@172
    const-wide/16 v2, 0x40

    #@174
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@177
    .line 1538
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
    .line 1539
    :goto_6
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@184
    const/4 v4, 0x0

    #@185
    .line 1538
    invoke-static {v2, v0, v1, v3, v4}, Landroid/app/ActivityThread;->-wrap6(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    #@188
    .line 1540
    const-wide/16 v0, 0x40

    #@18a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@18d
    goto/16 :goto_0

    #@18f
    .line 1538
    :cond_6
    const/4 v1, 0x0

    #@190
    goto :goto_6

    #@191
    .line 1543
    :pswitch_c
    const-string/jumbo v0, "bindApplication"

    #@194
    const-wide/16 v2, 0x40

    #@196
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@199
    .line 1544
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19b
    check-cast v9, Landroid/app/ActivityThread$AppBindData;

    #@19d
    .line 1545
    .local v9, "data":Landroid/app/ActivityThread$AppBindData;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@19f
    invoke-static {v0, v9}, Landroid/app/ActivityThread;->-wrap2(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    #@1a2
    .line 1546
    const-wide/16 v0, 0x40

    #@1a4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@1a7
    goto/16 :goto_0

    #@1a9
    .line 1549
    .end local v9    # "data":Landroid/app/ActivityThread$AppBindData;
    :pswitch_d
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1ab
    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@1ad
    if-eqz v0, :cond_7

    #@1af
    .line 1550
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1b1
    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@1b3
    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    #@1b6
    .line 1552
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1b9
    move-result-object v0

    #@1ba
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@1bd
    goto/16 :goto_0

    #@1bf
    .line 1555
    :pswitch_e
    const-string/jumbo v0, "activityNewIntent"

    #@1c2
    const-wide/16 v2, 0x40

    #@1c4
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1c7
    .line 1556
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1c9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1cb
    check-cast v0, Landroid/app/ActivityThread$NewIntentData;

    #@1cd
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap15(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    #@1d0
    .line 1557
    const-wide/16 v0, 0x40

    #@1d2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@1d5
    goto/16 :goto_0

    #@1d7
    .line 1560
    :pswitch_f
    const-string/jumbo v0, "broadcastReceiveComp"

    #@1da
    const-wide/16 v2, 0x40

    #@1dc
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1df
    .line 1561
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@1e1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e3
    check-cast v0, Landroid/app/ActivityThread$ReceiverData;

    #@1e5
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap18(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    #@1e8
    .line 1562
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    #@1eb
    .line 1563
    const-wide/16 v0, 0x40

    #@1ed
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@1f0
    goto/16 :goto_0

    #@1f2
    .line 1566
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
    .line 1567
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@213
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@215
    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    #@217
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap5(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    #@21a
    .line 1568
    const-wide/16 v0, 0x40

    #@21c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@21f
    goto/16 :goto_0

    #@221
    .line 1571
    :pswitch_11
    const-string/jumbo v0, "serviceBind"

    #@224
    const-wide/16 v2, 0x40

    #@226
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@229
    .line 1572
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@22b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22d
    check-cast v0, Landroid/app/ActivityThread$BindServiceData;

    #@22f
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap3(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    #@232
    .line 1573
    const-wide/16 v0, 0x40

    #@234
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@237
    goto/16 :goto_0

    #@239
    .line 1576
    :pswitch_12
    const-string/jumbo v0, "serviceUnbind"

    #@23c
    const-wide/16 v2, 0x40

    #@23e
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@241
    .line 1577
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@243
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@245
    check-cast v0, Landroid/app/ActivityThread$BindServiceData;

    #@247
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    #@24a
    .line 1578
    const-wide/16 v0, 0x40

    #@24c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@24f
    goto/16 :goto_0

    #@251
    .line 1581
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
    .line 1582
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@272
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@274
    check-cast v0, Landroid/app/ActivityThread$ServiceArgsData;

    #@276
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap21(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    #@279
    .line 1583
    const-wide/16 v0, 0x40

    #@27b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@27e
    goto/16 :goto_0

    #@280
    .line 1586
    :pswitch_14
    const-string/jumbo v0, "serviceStop"

    #@283
    const-wide/16 v2, 0x40

    #@285
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@288
    .line 1587
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@28a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28c
    check-cast v0, Landroid/os/IBinder;

    #@28e
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap27(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    #@291
    .line 1588
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    #@294
    .line 1589
    const-wide/16 v0, 0x40

    #@296
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@299
    goto/16 :goto_0

    #@29b
    .line 1592
    :pswitch_15
    const-string/jumbo v0, "configChanged"

    #@29e
    const-wide/16 v2, 0x40

    #@2a0
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2a3
    .line 1593
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
    .line 1594
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2af
    const/4 v1, 0x1

    #@2b0
    iput-boolean v1, v0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    #@2b2
    .line 1595
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2b4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b6
    check-cast v0, Landroid/content/res/Configuration;

    #@2b8
    const/4 v2, 0x0

    #@2b9
    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@2bc
    .line 1596
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2be
    const/4 v1, 0x0

    #@2bf
    iput-boolean v1, v0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    #@2c1
    .line 1597
    const-wide/16 v0, 0x40

    #@2c3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@2c6
    goto/16 :goto_0

    #@2c8
    .line 1600
    :pswitch_16
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2ca
    check-cast v8, Landroid/app/ActivityThread$ContextCleanupInfo;

    #@2cc
    .line 1601
    .local v8, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v0, v8, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    #@2ce
    iget-object v1, v8, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    #@2d0
    iget-object v2, v8, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    #@2d2
    invoke-virtual {v0, v1, v2}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    #@2d5
    goto/16 :goto_0

    #@2d7
    .line 1604
    .end local v8    # "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_17
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2d9
    invoke-virtual {v0}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    #@2dc
    goto/16 :goto_0

    #@2de
    .line 1607
    :pswitch_18
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2e0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e2
    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    #@2e4
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap10(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@2e7
    goto/16 :goto_0

    #@2e9
    .line 1610
    :pswitch_19
    const-string/jumbo v0, "lowMemory"

    #@2ec
    const-wide/16 v2, 0x40

    #@2ee
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2f1
    .line 1611
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@2f3
    invoke-virtual {v0}, Landroid/app/ActivityThread;->handleLowMemory()V

    #@2f6
    .line 1612
    const-wide/16 v0, 0x40

    #@2f8
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@2fb
    goto/16 :goto_0

    #@2fd
    .line 1615
    :pswitch_1a
    const-string/jumbo v0, "activityConfigChanged"

    #@300
    const-wide/16 v2, 0x40

    #@302
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@305
    .line 1616
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@307
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@309
    check-cast v0, Landroid/app/ActivityThread$ActivityConfigChangeData;

    #@30b
    .line 1617
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@30d
    const/4 v3, 0x1

    #@30e
    if-ne v1, v3, :cond_8

    #@310
    const/4 v1, 0x1

    #@311
    .line 1616
    :goto_7
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;Z)V

    #@314
    .line 1618
    const-wide/16 v0, 0x40

    #@316
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@319
    goto/16 :goto_0

    #@31b
    .line 1617
    :cond_8
    const/4 v1, 0x0

    #@31c
    goto :goto_7

    #@31d
    .line 1621
    :pswitch_1b
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@31f
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@321
    if-eqz v0, :cond_9

    #@323
    const/4 v0, 0x1

    #@324
    move v1, v0

    #@325
    :goto_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@327
    check-cast v0, Landroid/app/ProfilerInfo;

    #@329
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@32b
    invoke-virtual {v2, v1, v0, v3}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    #@32e
    goto/16 :goto_0

    #@330
    :cond_9
    const/4 v0, 0x0

    #@331
    move v1, v0

    #@332
    goto :goto_8

    #@333
    .line 1624
    :pswitch_1c
    const-string/jumbo v0, "backupCreateAgent"

    #@336
    const-wide/16 v2, 0x40

    #@338
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@33b
    .line 1625
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@33d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33f
    check-cast v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    #@341
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap4(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    #@344
    .line 1626
    const-wide/16 v0, 0x40

    #@346
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@349
    goto/16 :goto_0

    #@34b
    .line 1629
    :pswitch_1d
    const-string/jumbo v0, "backupDestroyAgent"

    #@34e
    const-wide/16 v2, 0x40

    #@350
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@353
    .line 1630
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@355
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@357
    check-cast v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    #@359
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap7(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    #@35c
    .line 1631
    const-wide/16 v0, 0x40

    #@35e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@361
    goto/16 :goto_0

    #@363
    .line 1634
    :pswitch_1e
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@366
    move-result v0

    #@367
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    #@36a
    goto/16 :goto_0

    #@36c
    .line 1637
    :pswitch_1f
    const-string/jumbo v0, "providerRemove"

    #@36f
    const-wide/16 v2, 0x40

    #@371
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@374
    .line 1638
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@376
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@378
    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    #@37a
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    #@37d
    .line 1639
    const-wide/16 v0, 0x40

    #@37f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@382
    goto/16 :goto_0

    #@384
    .line 1642
    :pswitch_20
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@386
    invoke-virtual {v0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    #@389
    goto/16 :goto_0

    #@38b
    .line 1645
    :pswitch_21
    const-string/jumbo v0, "broadcastPackage"

    #@38e
    const-wide/16 v2, 0x40

    #@390
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@393
    .line 1646
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@395
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@397
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@399
    check-cast v0, [Ljava/lang/String;

    #@39b
    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    #@39e
    .line 1647
    const-wide/16 v0, 0x40

    #@3a0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@3a3
    goto/16 :goto_0

    #@3a5
    .line 1650
    :pswitch_22
    new-instance v1, Landroid/app/RemoteServiceException;

    #@3a7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a9
    check-cast v0, Ljava/lang/String;

    #@3ab
    invoke-direct {v1, v0}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    #@3ae
    throw v1

    #@3af
    .line 1652
    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@3b1
    if-eqz v0, :cond_a

    #@3b3
    const/4 v0, 0x1

    #@3b4
    move v1, v0

    #@3b5
    :goto_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b7
    check-cast v0, Landroid/app/ActivityThread$DumpHeapData;

    #@3b9
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    #@3bc
    goto/16 :goto_0

    #@3be
    :cond_a
    const/4 v0, 0x0

    #@3bf
    move v1, v0

    #@3c0
    goto :goto_9

    #@3c1
    .line 1655
    :pswitch_24
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@3c3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3c5
    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    #@3c7
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap8(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@3ca
    goto/16 :goto_0

    #@3cc
    .line 1658
    :pswitch_25
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@3ce
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3d0
    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    #@3d2
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap9(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@3d5
    goto/16 :goto_0

    #@3d7
    .line 1661
    :pswitch_26
    const-string/jumbo v0, "sleeping"

    #@3da
    const-wide/16 v2, 0x40

    #@3dc
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@3df
    .line 1662
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@3e1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3e3
    check-cast v0, Landroid/os/IBinder;

    #@3e5
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@3e7
    if-eqz v1, :cond_b

    #@3e9
    const/4 v1, 0x1

    #@3ea
    :goto_a
    invoke-static {v2, v0, v1}, Landroid/app/ActivityThread;->-wrap23(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    #@3ed
    .line 1663
    const-wide/16 v0, 0x40

    #@3ef
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@3f2
    goto/16 :goto_0

    #@3f4
    .line 1662
    :cond_b
    const/4 v1, 0x0

    #@3f5
    goto :goto_a

    #@3f6
    .line 1666
    :pswitch_27
    const-string/jumbo v0, "setCoreSettings"

    #@3f9
    const-wide/16 v2, 0x40

    #@3fb
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@3fe
    .line 1667
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@400
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@402
    check-cast v0, Landroid/os/Bundle;

    #@404
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap22(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    #@407
    .line 1668
    const-wide/16 v0, 0x40

    #@409
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@40c
    goto/16 :goto_0

    #@40e
    .line 1671
    :pswitch_28
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@410
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@412
    check-cast v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    #@414
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap29(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    #@417
    goto/16 :goto_0

    #@419
    .line 1674
    :pswitch_29
    const-string/jumbo v0, "trimMemory"

    #@41c
    const-wide/16 v2, 0x40

    #@41e
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@421
    .line 1675
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@423
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@425
    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    #@428
    .line 1676
    const-wide/16 v0, 0x40

    #@42a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@42d
    goto/16 :goto_0

    #@42f
    .line 1679
    :pswitch_2a
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@431
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@433
    check-cast v0, Landroid/os/IBinder;

    #@435
    const/4 v2, 0x0

    #@436
    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    #@439
    goto/16 :goto_0

    #@43b
    .line 1682
    :pswitch_2b
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@43d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@43f
    check-cast v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    #@441
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    #@444
    goto/16 :goto_0

    #@446
    .line 1685
    :pswitch_2c
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@448
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@44a
    check-cast v0, Landroid/os/IBinder;

    #@44c
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@44e
    const/4 v3, 0x1

    #@44f
    if-ne v1, v3, :cond_c

    #@451
    const/4 v1, 0x1

    #@452
    :goto_b
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    #@455
    goto/16 :goto_0

    #@457
    :cond_c
    const/4 v1, 0x0

    #@458
    goto :goto_b

    #@459
    .line 1688
    :pswitch_2d
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@45b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@45d
    check-cast v0, Landroid/content/pm/ProviderInfo;

    #@45f
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    #@462
    goto/16 :goto_0

    #@464
    .line 1691
    :pswitch_2e
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@466
    check-cast v11, Landroid/util/Pair;

    #@468
    .line 1692
    .local v11, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@46a
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@46c
    check-cast v0, Landroid/os/IBinder;

    #@46e
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@470
    check-cast v1, Landroid/app/ActivityOptions;

    #@472
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    #@475
    goto/16 :goto_0

    #@477
    .line 1695
    .end local v11    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    :pswitch_2f
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@479
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@47b
    check-cast v0, Landroid/os/IBinder;

    #@47d
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleCancelVisibleBehind(Landroid/os/IBinder;)V

    #@480
    goto/16 :goto_0

    #@482
    .line 1698
    :pswitch_30
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@484
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@486
    check-cast v0, Landroid/os/IBinder;

    #@488
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@48a
    if-lez v1, :cond_d

    #@48c
    const/4 v1, 0x1

    #@48d
    :goto_c
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    #@490
    goto/16 :goto_0

    #@492
    :cond_d
    const/4 v1, 0x0

    #@493
    goto :goto_c

    #@494
    .line 1701
    :pswitch_31
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@496
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@498
    check-cast v0, Landroid/os/IBinder;

    #@49a
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap11(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    #@49d
    goto/16 :goto_0

    #@49f
    .line 1704
    :pswitch_32
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@4a1
    invoke-static {v0}, Landroid/app/ActivityThread;->-wrap24(Landroid/app/ActivityThread;)V

    #@4a4
    goto/16 :goto_0

    #@4a6
    .line 1707
    :pswitch_33
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@4a8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4aa
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    #@4ac
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V

    #@4af
    goto/16 :goto_0

    #@4b1
    .line 1710
    :pswitch_34
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@4b3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4b5
    check-cast v0, Landroid/os/IBinder;

    #@4b7
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@4b9
    const/4 v3, 0x1

    #@4ba
    if-ne v1, v3, :cond_e

    #@4bc
    const/4 v1, 0x1

    #@4bd
    :goto_d
    invoke-static {v2, v0, v1}, Landroid/app/ActivityThread;->-wrap14(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    #@4c0
    goto/16 :goto_0

    #@4c2
    :cond_e
    const/4 v1, 0x0

    #@4c3
    goto :goto_d

    #@4c4
    .line 1713
    :pswitch_35
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@4c6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4c8
    check-cast v0, Landroid/os/IBinder;

    #@4ca
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@4cc
    const/4 v3, 0x1

    #@4cd
    if-ne v1, v3, :cond_f

    #@4cf
    const/4 v1, 0x1

    #@4d0
    :goto_e
    invoke-static {v2, v0, v1}, Landroid/app/ActivityThread;->-wrap17(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    #@4d3
    goto/16 :goto_0

    #@4d5
    :cond_f
    const/4 v1, 0x0

    #@4d6
    goto :goto_e

    #@4d7
    .line 1716
    :pswitch_36
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #@4d9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4db
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@4dd
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@4df
    check-cast v0, Landroid/os/IBinder;

    #@4e1
    .line 1717
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e3
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@4e5
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@4e7
    check-cast v1, Lcom/android/internal/app/IVoiceInteractor;

    #@4e9
    .line 1716
    invoke-static {v2, v0, v1}, Landroid/app/ActivityThread;->-wrap13(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    #@4ec
    goto/16 :goto_0

    #@4ee
    .line 1470
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
