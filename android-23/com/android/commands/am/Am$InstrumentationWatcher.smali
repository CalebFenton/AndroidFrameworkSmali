.class Lcom/android/commands/am/Am$InstrumentationWatcher;
.super Landroid/app/IInstrumentationWatcher$Stub;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstrumentationWatcher"
.end annotation


# instance fields
.field private mFinished:Z

.field private mRawMode:Z

.field final synthetic this$0:Lcom/android/commands/am/Am;


# direct methods
.method private constructor <init>(Lcom/android/commands/am/Am;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/commands/am/Am;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1773
    iput-object p1, p0, Lcom/android/commands/am/Am$InstrumentationWatcher;->this$0:Lcom/android/commands/am/Am;

    #@3
    invoke-direct {p0}, Landroid/app/IInstrumentationWatcher$Stub;-><init>()V

    #@6
    .line 1774
    iput-boolean v0, p0, Lcom/android/commands/am/Am$InstrumentationWatcher;->mFinished:Z

    #@8
    .line 1775
    iput-boolean v0, p0, Lcom/android/commands/am/Am$InstrumentationWatcher;->mRawMode:Z

    #@a
    .line 1773
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$InstrumentationWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/am/Am;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/commands/am/Am$InstrumentationWatcher;-><init>(Lcom/android/commands/am/Am;)V

    #@3
    return-void
.end method


# virtual methods
.method public instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1812
    monitor-enter p0

    #@1
    .line 1814
    const/4 v2, 0x0

    #@2
    .line 1815
    .local v2, "pretty":Ljava/lang/String;
    :try_start_0
    iget-boolean v3, p0, Lcom/android/commands/am/Am$InstrumentationWatcher;->mRawMode:Z

    #@4
    if-nez v3, :cond_0

    #@6
    if-eqz p3, :cond_0

    #@8
    .line 1816
    const-string/jumbo v3, "stream"

    #@b
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 1818
    .end local v2    # "pretty":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    #@11
    .line 1819
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@13
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@16
    .line 1829
    :goto_0
    const/4 v3, 0x1

    #@17
    iput-boolean v3, p0, Lcom/android/commands/am/Am$InstrumentationWatcher;->mFinished:Z

    #@19
    .line 1830
    invoke-virtual {p0}, Lcom/android/commands/am/Am$InstrumentationWatcher;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 1811
    return-void

    #@1e
    .line 1821
    :cond_1
    if-eqz p3, :cond_2

    #@20
    .line 1822
    :try_start_1
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_2

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/lang/String;

    #@34
    .line 1823
    .local v0, "key":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@36
    .line 1824
    new-instance v4, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v5, "INSTRUMENTATION_RESULT: "

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    const-string/jumbo v5, "="

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    .line 1823
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    goto :goto_1

    #@5d
    .line 1812
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@5e
    monitor-exit p0

    #@5f
    throw v3

    #@60
    .line 1827
    :cond_2
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@62
    new-instance v4, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v5, "INSTRUMENTATION_CODE: "

    #@6a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@79
    goto :goto_0
.end method

.method public instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1788
    monitor-enter p0

    #@1
    .line 1790
    const/4 v2, 0x0

    #@2
    .line 1791
    .local v2, "pretty":Ljava/lang/String;
    :try_start_0
    iget-boolean v3, p0, Lcom/android/commands/am/Am$InstrumentationWatcher;->mRawMode:Z

    #@4
    if-nez v3, :cond_0

    #@6
    if-eqz p3, :cond_0

    #@8
    .line 1792
    const-string/jumbo v3, "stream"

    #@b
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 1794
    .end local v2    # "pretty":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    #@11
    .line 1795
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@13
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@16
    .line 1805
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am$InstrumentationWatcher;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 1787
    return-void

    #@1b
    .line 1797
    :cond_1
    if-eqz p3, :cond_2

    #@1d
    .line 1798
    :try_start_1
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_2

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Ljava/lang/String;

    #@31
    .line 1799
    .local v0, "key":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@33
    .line 1800
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v5, "INSTRUMENTATION_STATUS: "

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    const-string/jumbo v5, "="

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    .line 1799
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    goto :goto_1

    #@5a
    .line 1788
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@5b
    monitor-exit p0

    #@5c
    throw v3

    #@5d
    .line 1803
    :cond_2
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5f
    new-instance v4, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v5, "INSTRUMENTATION_STATUS_CODE: "

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@76
    goto :goto_0
.end method

.method public setRawOutput(Z)V
    .locals 0
    .param p1, "rawMode"    # Z

    #@0
    .prologue
    .line 1783
    iput-boolean p1, p0, Lcom/android/commands/am/Am$InstrumentationWatcher;->mRawMode:Z

    #@2
    .line 1782
    return-void
.end method

.method public waitForFinish()Z
    .locals 4

    #@0
    .prologue
    .line 1835
    monitor-enter p0

    #@1
    .line 1836
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/commands/am/Am$InstrumentationWatcher;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v1, :cond_1

    #@5
    .line 1838
    :try_start_1
    iget-object v1, p0, Lcom/android/commands/am/Am$InstrumentationWatcher;->this$0:Lcom/android/commands/am/Am;

    #@7
    invoke-static {v1}, Lcom/android/commands/am/Am;->-get0(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 1839
    const/4 v1, 0x0

    #@16
    monitor-exit p0

    #@17
    return v1

    #@18
    .line 1841
    :cond_0
    const-wide/16 v2, 0x3e8

    #@1a
    :try_start_2
    invoke-virtual {p0, v2, v3}, Lcom/android/commands/am/Am$InstrumentationWatcher;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 1842
    :catch_0
    move-exception v0

    #@1f
    .line 1843
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    #@21
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@25
    .line 1835
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit p0

    #@27
    throw v1

    #@28
    :cond_1
    monitor-exit p0

    #@29
    .line 1847
    const/4 v1, 0x1

    #@2a
    return v1
.end method
