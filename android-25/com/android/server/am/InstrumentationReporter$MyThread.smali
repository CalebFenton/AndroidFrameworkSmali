.class final Lcom/android/server/am/InstrumentationReporter$MyThread;
.super Ljava/lang/Thread;
.source "InstrumentationReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/InstrumentationReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/InstrumentationReporter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/InstrumentationReporter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/InstrumentationReporter;

    #@0
    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    #@2
    .line 41
    const-string/jumbo v0, "InstrumentationReporter"

    #@5
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@8
    .line 40
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 47
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    #@4
    .line 48
    const/4 v5, 0x0

    #@5
    .line 51
    .local v5, "waited":Z
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    #@7
    iget-object v7, v6, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v7

    #@a
    .line 52
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    #@c
    iget-object v4, v6, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    #@e
    .line 53
    .local v4, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    iget-object v6, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    #@10
    const/4 v8, 0x0

    #@11
    iput-object v8, v6, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    #@13
    .line 54
    if-eqz v4, :cond_1

    #@15
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_3

    #@1b
    .line 55
    :cond_1
    if-nez v5, :cond_2

    #@1d
    .line 58
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    #@1f
    iget-object v6, v6, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    #@21
    const-wide/16 v8, 0x2710

    #@23
    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 61
    :goto_1
    const/4 v5, 0x1

    #@27
    monitor-exit v7

    #@28
    goto :goto_0

    #@29
    .line 64
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    #@2b
    const/4 v8, 0x0

    #@2c
    iput-object v8, v6, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    monitor-exit v7

    #@2f
    .line 66
    return-void

    #@30
    :cond_3
    monitor-exit v7

    #@31
    .line 71
    const/4 v5, 0x0

    #@32
    .line 73
    const/4 v2, 0x0

    #@33
    .local v2, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v6

    #@37
    if-ge v2, v6, :cond_0

    #@39
    .line 74
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, Lcom/android/server/am/InstrumentationReporter$Report;

    #@3f
    .line 76
    .local v3, "rep":Lcom/android/server/am/InstrumentationReporter$Report;
    :try_start_3
    iget v6, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mType:I

    #@41
    if-nez v6, :cond_4

    #@43
    .line 80
    iget-object v6, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    #@45
    iget-object v7, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    #@47
    iget v8, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    #@49
    .line 81
    iget-object v9, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    #@4b
    .line 80
    invoke-interface {v6, v7, v8, v9}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@4e
    .line 73
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_2

    #@51
    .line 51
    .end local v2    # "i":I
    .end local v3    # "rep":Lcom/android/server/am/InstrumentationReporter$Report;
    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    :catchall_0
    move-exception v6

    #@52
    monitor-exit v7

    #@53
    throw v6

    #@54
    .line 86
    .restart local v2    # "i":I
    .restart local v3    # "rep":Lcom/android/server/am/InstrumentationReporter$Report;
    .restart local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    :cond_4
    :try_start_4
    iget-object v6, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    #@56
    iget-object v7, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    #@58
    iget v8, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    #@5a
    .line 87
    iget-object v9, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    #@5c
    .line 86
    invoke-interface {v6, v7, v8, v9}, Landroid/app/IInstrumentationWatcher;->instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@5f
    goto :goto_3

    #@60
    .line 89
    :catch_0
    move-exception v0

    #@61
    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "ActivityManager"

    #@64
    new-instance v7, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v8, "Failure reporting to instrumentation watcher: comp="

    #@6c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    .line 91
    iget-object v8, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    #@72
    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v7

    #@76
    .line 91
    const-string/jumbo v8, " results="

    #@79
    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v7

    #@7d
    .line 91
    iget-object v8, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    #@7f
    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v7

    #@83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v7

    #@87
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    goto :goto_3

    #@8b
    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "rep":Lcom/android/server/am/InstrumentationReporter$Report;
    :catch_1
    move-exception v1

    #@8c
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method
