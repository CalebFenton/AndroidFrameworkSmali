.class public Lcom/android/server/am/InstrumentationReporter;
.super Ljava/lang/Object;
.source "InstrumentationReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/InstrumentationReporter$MyThread;,
        Lcom/android/server/am/InstrumentationReporter$Report;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final REPORT_TYPE_FINISHED:I = 0x1

.field static final REPORT_TYPE_STATUS:I = 0x0

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final mLock:Ljava/lang/Object;

.field mPendingReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/InstrumentationReporter$Report;",
            ">;"
        }
    .end annotation
.end field

.field mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    #@a
    .line 28
    return-void
.end method

.method private report(Lcom/android/server/am/InstrumentationReporter$Report;)V
    .locals 2
    .param p1, "report"    # Lcom/android/server/am/InstrumentationReporter$Report;

    #@0
    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 134
    new-instance v0, Lcom/android/server/am/InstrumentationReporter$MyThread;

    #@9
    invoke-direct {v0, p0}, Lcom/android/server/am/InstrumentationReporter$MyThread;-><init>(Lcom/android/server/am/InstrumentationReporter;)V

    #@c
    iput-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;

    #@e
    .line 135
    iget-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;

    #@10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@13
    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    #@15
    if-nez v0, :cond_1

    #@17
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    #@19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1c
    iput-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    #@1e
    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 141
    iget-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    #@25
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v1

    #@29
    .line 131
    return-void

    #@2a
    .line 132
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method


# virtual methods
.method public reportFinished(Landroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "resultCode"    # I
    .param p4, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 128
    new-instance v0, Lcom/android/server/am/InstrumentationReporter$Report;

    #@2
    const/4 v2, 0x1

    #@3
    move-object v1, p0

    #@4
    move-object v3, p1

    #@5
    move-object v4, p2

    #@6
    move v5, p3

    #@7
    move-object v6, p4

    #@8
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/InstrumentationReporter$Report;-><init>(Lcom/android/server/am/InstrumentationReporter;ILandroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    #@b
    invoke-direct {p0, v0}, Lcom/android/server/am/InstrumentationReporter;->report(Lcom/android/server/am/InstrumentationReporter$Report;)V

    #@e
    .line 124
    return-void
.end method

.method public reportStatus(Landroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "resultCode"    # I
    .param p4, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 120
    new-instance v0, Lcom/android/server/am/InstrumentationReporter$Report;

    #@2
    const/4 v2, 0x0

    #@3
    move-object v1, p0

    #@4
    move-object v3, p1

    #@5
    move-object v4, p2

    #@6
    move v5, p3

    #@7
    move-object v6, p4

    #@8
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/InstrumentationReporter$Report;-><init>(Lcom/android/server/am/InstrumentationReporter;ILandroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    #@b
    invoke-direct {p0, v0}, Lcom/android/server/am/InstrumentationReporter;->report(Lcom/android/server/am/InstrumentationReporter$Report;)V

    #@e
    .line 116
    return-void
.end method
