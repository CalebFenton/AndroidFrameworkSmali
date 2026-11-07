.class public Landroid/net/connectivity/org/chromium/base/TraceEvent;
.super Ljava/lang/Object;
.source "TraceEvent.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/TraceEvent$LooperMonitorHolder;,
        Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;,
        Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;,
        Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;,
        Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;,
        Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;,
        Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;
    }
.end annotation


# static fields
.field private static volatile blacklist sEnabled:Z

.field private static blacklist sEventNameFilteringEnabled:Z

.field private static volatile blacklist sUiThreadReady:Z


# instance fields
.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsEnabled()Z
    .registers 1

    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsEventNameFilteringEnabled()Z
    .registers 1

    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEventNameFilteringEnabled:Z

    return v0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg"    # I

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->mName:Ljava/lang/String;

    .line 271
    invoke-static {p1, p2}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->begin(Ljava/lang/String;I)V

    .line 272
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->mName:Ljava/lang/String;

    .line 265
    invoke-static {p1, p2}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->begin(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public static blacklist begin(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 555
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->begin(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public static blacklist begin(Ljava/lang/String;I)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "arg"    # I

    .line 576
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->begin(Ljava/lang/String;Z)V

    .line 577
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_f

    .line 578
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->beginWithIntArg(Ljava/lang/String;I)V

    .line 580
    :cond_f
    return-void
.end method

.method public static blacklist begin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .line 564
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->begin(Ljava/lang/String;Z)V

    .line 565
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_f

    .line 566
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->begin(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_f
    return-void
.end method

.method public static blacklist dumpViewHierarchy(JLjava/lang/Object;)V
    .registers 20
    .param p0, "dumpProtoPtr"    # J
    .param p2, "list"    # Ljava/lang/Object;

    .line 690
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 691
    return-void

    .line 696
    :cond_7
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/ArrayList;

    .line 698
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;

    .line 700
    .local v3, "activity":Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    iget-object v4, v3, Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;->mActivityName:Ljava/lang/String;

    move-wide/from16 v5, p0

    invoke-interface {v0, v4, v5, v6}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->startActivityDump(Ljava/lang/String;J)J

    move-result-wide v14

    .line 701
    .local v14, "activityProtoPtr":J
    iget-object v0, v3, Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;

    .line 707
    .local v16, "view":Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;
    :try_start_3c
    invoke-static/range {v16 .. v16}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->-$$Nest$fgetmRes(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 708
    invoke-static/range {v16 .. v16}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->-$$Nest$fgetmId(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)I

    move-result v0

    if-eqz v0, :cond_5d

    invoke-static/range {v16 .. v16}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->-$$Nest$fgetmId(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_50

    goto :goto_5d

    .line 710
    :cond_50
    invoke-static/range {v16 .. v16}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->-$$Nest$fgetmRes(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->-$$Nest$fgetmId(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    .line 709
    :cond_5d
    :goto_5d
    const-string v0, "__no_id__"

    goto :goto_62

    .line 711
    :cond_60
    const-string v0, "__no_resources__"
    :try_end_62
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_62} :catch_65

    :goto_62
    nop

    .line 714
    .local v0, "resource":Ljava/lang/String;
    move-object v13, v0

    goto :goto_69

    .line 712
    .end local v0    # "resource":Ljava/lang/String;
    :catch_65
    move-exception v0

    .line 713
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v7, "__name_not_found__"

    move-object v13, v7

    .line 715
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .local v13, "resource":Ljava/lang/String;
    :goto_69
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v7

    invoke-static/range {v16 .. v16}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->-$$Nest$fgetmId(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)I

    move-result v8

    invoke-static/range {v16 .. v16}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->-$$Nest$fgetmParentId(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)I

    move-result v9

    invoke-static/range {v16 .. v16}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->-$$Nest$fgetmIsShown(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)Z

    move-result v10

    invoke-static/range {v16 .. v16}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->-$$Nest$fgetmIsDirty(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)Z

    move-result v11

    invoke-static/range {v16 .. v16}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;->-$$Nest$fgetmClassName(Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;)Ljava/lang/String;

    move-result-object v12

    .line 716
    invoke-interface/range {v7 .. v15}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->addViewDump(IIZZLjava/lang/String;Ljava/lang/String;J)V

    .line 724
    .end local v13    # "resource":Ljava/lang/String;
    .end local v16    # "view":Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;
    goto :goto_2e

    .line 725
    .end local v3    # "activity":Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;
    .end local v14    # "activityProtoPtr":J
    :cond_85
    goto :goto_f

    .line 726
    :cond_86
    move-wide/from16 v5, p0

    return-void
.end method

.method public static blacklist enabled()Z
    .registers 1

    .line 378
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    return v0
.end method

.method public static blacklist end(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 587
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public static blacklist end(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .line 596
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->end(Ljava/lang/String;Ljava/lang/String;J)V

    .line 597
    return-void
.end method

.method public static blacklist end(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "flow"    # J

    .line 606
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->end(Ljava/lang/String;Z)V

    .line 607
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_f

    .line 608
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->end(Ljava/lang/String;J)V

    .line 610
    :cond_f
    return-void
.end method

.method public static blacklist eventNameFilteringEnabled()Z
    .registers 1

    .line 339
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEventNameFilteringEnabled:Z

    return v0
.end method

.method public static blacklist finishAsync(Ljava/lang/String;J)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # J

    .line 544
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->finishAsync(Ljava/lang/String;J)V

    .line 545
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_e

    .line 546
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->finishAsync(J)V

    .line 548
    :cond_e
    return-void
.end method

.method public static blacklist instant(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 386
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->instant(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_c
    return-void
.end method

.method public static blacklist instant(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .line 395
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->instant(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_b
    return-void
.end method

.method public static blacklist instantAndroidIPC(Ljava/lang/String;J)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "durMs"    # J

    .line 404
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->instantAndroidIPC(Ljava/lang/String;J)V

    .line 405
    :cond_b
    return-void
.end method

.method public static blacklist instantAndroidToolbar(III)V
    .registers 4
    .param p0, "blockReason"    # I
    .param p1, "allowReason"    # I
    .param p2, "snapshotDiff"    # I

    .line 414
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_b

    .line 415
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->instantAndroidToolbar(III)V

    .line 417
    :cond_b
    return-void
.end method

.method static synthetic blacklist lambda$snapshotViewHierarchy$0(JLjava/util/ArrayList;)V
    .registers 4
    .param p0, "flow"    # J
    .param p2, "views"    # Ljava/util/ArrayList;

    .line 520
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->initViewHierarchyDump(JLjava/lang/Object;)V

    .line 521
    return-void
.end method

.method public static blacklist maybeEnableEarlyTracing(Z)V
    .registers 3
    .param p0, "readCommandLine"    # Z

    .line 352
    if-eqz p0, :cond_5

    .line 353
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->maybeEnableInBrowserProcess()V

    .line 355
    :cond_5
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 356
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent$LooperMonitorHolder;->-$$Nest$sfgetsInstance()Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 358
    :cond_16
    return-void
.end method

.method public static blacklist onNativeTracingReady()V
    .registers 1

    .line 361
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->registerEnabledObserver()V

    .line 362
    return-void
.end method

.method static blacklist onUiThreadReady()V
    .registers 1

    .line 366
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sUiThreadReady:Z

    .line 367
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_a

    .line 368
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->updateEnabledState()V

    .line 370
    :cond_a
    return-void
.end method

.method public static blacklist scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist scoped(Ljava/lang/String;I)Landroid/net/connectivity/org/chromium/base/TraceEvent;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "arg"    # I

    .line 303
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->enabled()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_e
    new-instance v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static blacklist scoped(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .line 289
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->enabled()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 290
    :cond_e
    new-instance v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist setEnabled(Z)V
    .registers 3
    .param p0, "enabled"    # Z

    .line 315
    if-eqz p0, :cond_5

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->disable()V

    .line 318
    :cond_5
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eq v0, p0, :cond_1a

    .line 319
    sput-boolean p0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    .line 320
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v0

    .line 321
    if-eqz p0, :cond_16

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent$LooperMonitorHolder;->-$$Nest$sfgetsInstance()Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 324
    :cond_1a
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_21

    .line 325
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->dumpActivityStartupEvents()V

    .line 328
    :cond_21
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sUiThreadReady:Z

    if-eqz v0, :cond_28

    .line 329
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->updateEnabledState()V

    .line 331
    :cond_28
    return-void
.end method

.method public static blacklist setEventNameFilteringEnabled(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .line 335
    sput-boolean p0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEventNameFilteringEnabled:Z

    .line 336
    return-void
.end method

.method public static blacklist snapshotViewHierarchy()V
    .registers 6

    .line 499
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_33

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->viewHierarchyDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 501
    const-string v0, "instantAndroidViewHierarchy"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 504
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->snapshotViewHierarchyState()Ljava/util/ArrayList;

    move-result-object v1

    .line 505
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 506
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 507
    return-void

    .line 514
    :cond_21
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    int-to-long v2, v2

    .line 516
    .local v2, "flow":J
    new-instance v4, Landroid/net/connectivity/org/chromium/base/TraceEvent$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3, v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent$$ExternalSyntheticLambda0;-><init>(JLjava/util/ArrayList;)V

    const/4 v5, 0x0

    invoke-static {v5, v4}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    .line 522
    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->end(Ljava/lang/String;Ljava/lang/String;J)V

    .line 524
    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;>;"
    .end local v2    # "flow":J
    :cond_33
    return-void
.end method

.method public static blacklist snapshotViewHierarchyState()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;",
            ">;"
        }
    .end annotation

    .line 613
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_c

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 618
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 619
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;>;"
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 620
    .local v2, "a":Landroid/app/Activity;
    new-instance v3, Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    nop

    .line 622
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;

    .line 624
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 621
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->-$$Nest$smdumpView(Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;ILandroid/view/View;)V

    .line 625
    .end local v2    # "a":Landroid/app/Activity;
    goto :goto_1a

    .line 626
    :cond_54
    return-object v0
.end method

.method public static blacklist startAsync(Ljava/lang/String;J)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # J

    .line 532
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->startAsync(Ljava/lang/String;J)V

    .line 533
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_e

    .line 534
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->startAsync(Ljava/lang/String;J)V

    .line 536
    :cond_e
    return-void
.end method

.method public static blacklist startupActivityStart(JJ)V
    .registers 5
    .param p0, "activityId"    # J
    .param p2, "startTimeMs"    # J

    .line 470
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_c

    .line 471
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->startupActivityStart(JJ)V

    goto :goto_f

    .line 473
    :cond_c
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->startupActivityStart(JJ)V

    .line 475
    :goto_f
    return-void
.end method

.method public static blacklist startupLaunchCause(JI)V
    .registers 10
    .param p0, "activityId"    # J
    .param p2, "launchCause"    # I

    .line 479
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_12

    .line 480
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v1

    .line 481
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v2, p0

    move v6, p2

    .end local p0    # "activityId":J
    .end local p2    # "launchCause":I
    .local v2, "activityId":J
    .local v6, "launchCause":I
    invoke-interface/range {v1 .. v6}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->startupLaunchCause(JJI)V

    goto :goto_17

    .line 483
    .end local v2    # "activityId":J
    .end local v6    # "launchCause":I
    .restart local p0    # "activityId":J
    .restart local p2    # "launchCause":I
    :cond_12
    move-wide v2, p0

    move v6, p2

    .end local p0    # "activityId":J
    .end local p2    # "launchCause":I
    .restart local v2    # "activityId":J
    .restart local v6    # "launchCause":I
    invoke-static {v2, v3, v6}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->startupLaunchCause(JI)V

    .line 485
    :goto_17
    return-void
.end method

.method public static blacklist startupTimeToFirstVisibleContent2(JJJ)V
    .registers 14
    .param p0, "activityId"    # J
    .param p2, "startTimeMs"    # J
    .param p4, "durationMs"    # J

    .line 490
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 491
    :cond_5
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v1

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    .end local p0    # "activityId":J
    .end local p2    # "startTimeMs":J
    .end local p4    # "durationMs":J
    .local v2, "activityId":J
    .local v4, "startTimeMs":J
    .local v6, "durationMs":J
    invoke-interface/range {v1 .. v7}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->startupTimeToFirstVisibleContent2(JJJ)V

    .line 492
    return-void
.end method

.method public static blacklist webViewStartupStage1(JJ)V
    .registers 5
    .param p0, "startTimeMs"    # J
    .param p2, "durationMs"    # J

    .line 436
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_b

    .line 437
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->webViewStartupStage1(JJ)V

    .line 439
    :cond_b
    return-void
.end method

.method public static blacklist webViewStartupStage2(JJZ)V
    .registers 12
    .param p0, "startTimeMs"    # J
    .param p2, "durationMs"    # J
    .param p4, "isColdStartup"    # Z

    .line 449
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_f

    .line 450
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v1

    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    .end local p0    # "startTimeMs":J
    .end local p2    # "durationMs":J
    .end local p4    # "isColdStartup":Z
    .local v2, "startTimeMs":J
    .local v4, "durationMs":J
    .local v6, "isColdStartup":Z
    invoke-interface/range {v1 .. v6}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->webViewStartupStage2(JJZ)V

    goto :goto_12

    .line 449
    .end local v2    # "startTimeMs":J
    .end local v4    # "durationMs":J
    .end local v6    # "isColdStartup":Z
    .restart local p0    # "startTimeMs":J
    .restart local p2    # "durationMs":J
    .restart local p4    # "isColdStartup":Z
    :cond_f
    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    .line 452
    .end local p0    # "startTimeMs":J
    .end local p2    # "durationMs":J
    .end local p4    # "isColdStartup":Z
    .restart local v2    # "startTimeMs":J
    .restart local v4    # "durationMs":J
    .restart local v6    # "isColdStartup":Z
    :goto_12
    return-void
.end method

.method public static blacklist webViewStartupStartChromiumLocked(JJIZ)V
    .registers 14
    .param p0, "startTimeMs"    # J
    .param p2, "durationMs"    # J
    .param p4, "callSite"    # I
    .param p5, "fromUIThread"    # Z

    .line 461
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_10

    .line 462
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v1

    .line 463
    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    move v7, p5

    .end local p0    # "startTimeMs":J
    .end local p2    # "durationMs":J
    .end local p4    # "callSite":I
    .end local p5    # "fromUIThread":Z
    .local v2, "startTimeMs":J
    .local v4, "durationMs":J
    .local v6, "callSite":I
    .local v7, "fromUIThread":Z
    invoke-interface/range {v1 .. v7}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->webViewStartupStartChromiumLocked(JJIZ)V

    goto :goto_14

    .line 461
    .end local v2    # "startTimeMs":J
    .end local v4    # "durationMs":J
    .end local v6    # "callSite":I
    .end local v7    # "fromUIThread":Z
    .restart local p0    # "startTimeMs":J
    .restart local p2    # "durationMs":J
    .restart local p4    # "callSite":I
    .restart local p5    # "fromUIThread":Z
    :cond_10
    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    move v7, p5

    .line 466
    .end local p0    # "startTimeMs":J
    .end local p2    # "durationMs":J
    .end local p4    # "callSite":I
    .end local p5    # "fromUIThread":Z
    .restart local v2    # "startTimeMs":J
    .restart local v4    # "durationMs":J
    .restart local v6    # "callSite":I
    .restart local v7    # "fromUIThread":Z
    :goto_14
    return-void
.end method

.method public static blacklist webViewStartupTotalFactoryInit(JJ)V
    .registers 5
    .param p0, "startTimeMs"    # J
    .param p2, "durationMs"    # J

    .line 425
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_b

    .line 426
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->webViewStartupTotalFactoryInit(JJ)V

    .line 428
    :cond_b
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 276
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 277
    return-void
.end method
