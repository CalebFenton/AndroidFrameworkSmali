.class public Lsun/net/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# static fields
.field private static meteringPolicy:Lsun/net/ProgressMeteringPolicy;

.field private static pm:Lsun/net/ProgressMonitor;


# instance fields
.field private progressListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsun/net/ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private progressSourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsun/net/ProgressSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 223
    new-instance v0, Lsun/net/DefaultProgressMeteringPolicy;

    #@2
    invoke-direct {v0}, Lsun/net/DefaultProgressMeteringPolicy;-><init>()V

    #@5
    sput-object v0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;

    #@7
    .line 226
    new-instance v0, Lsun/net/ProgressMonitor;

    #@9
    invoke-direct {v0}, Lsun/net/ProgressMonitor;-><init>()V

    #@c
    sput-object v0, Lsun/net/ProgressMonitor;->pm:Lsun/net/ProgressMonitor;

    #@e
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 229
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    #@a
    .line 232
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@11
    .line 37
    return-void
.end method

.method public static declared-synchronized getDefault()Lsun/net/ProgressMonitor;
    .locals 2

    #@0
    .prologue
    const-class v0, Lsun/net/ProgressMonitor;

    #@2
    monitor-enter v0

    #@3
    .line 43
    :try_start_0
    sget-object v1, Lsun/net/ProgressMonitor;->pm:Lsun/net/ProgressMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public static declared-synchronized setDefault(Lsun/net/ProgressMonitor;)V
    .locals 2
    .param p0, "m"    # Lsun/net/ProgressMonitor;

    #@0
    .prologue
    const-class v0, Lsun/net/ProgressMonitor;

    #@2
    monitor-enter v0

    #@3
    .line 50
    if-eqz p0, :cond_0

    #@5
    .line 51
    :try_start_0
    sput-object p0, Lsun/net/ProgressMonitor;->pm:Lsun/net/ProgressMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    :cond_0
    monitor-exit v0

    #@8
    .line 49
    return-void

    #@9
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public static declared-synchronized setMeteringPolicy(Lsun/net/ProgressMeteringPolicy;)V
    .locals 2
    .param p0, "policy"    # Lsun/net/ProgressMeteringPolicy;

    #@0
    .prologue
    const-class v0, Lsun/net/ProgressMonitor;

    #@2
    monitor-enter v0

    #@3
    .line 58
    if-eqz p0, :cond_0

    #@5
    .line 59
    :try_start_0
    sput-object p0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    :cond_0
    monitor-exit v0

    #@8
    .line 57
    return-void

    #@9
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method


# virtual methods
.method public addProgressListener(Lsun/net/ProgressListener;)V
    .locals 2
    .param p1, "l"    # Lsun/net/ProgressListener;

    #@0
    .prologue
    .line 208
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 209
    :try_start_0
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 207
    return-void

    #@a
    .line 208
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public getProgressSources()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lsun/net/ProgressSource;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 67
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 70
    .local v3, "snapshot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressSource;>;"
    :try_start_0
    iget-object v5, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    #@7
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 71
    :try_start_1
    iget-object v4, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressSource;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Lsun/net/ProgressSource;

    #@1a
    .line 75
    .local v2, "pi":Lsun/net/ProgressSource;
    invoke-virtual {v2}, Lsun/net/ProgressSource;->clone()Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Lsun/net/ProgressSource;

    #@20
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 70
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressSource;>;"
    .end local v2    # "pi":Lsun/net/ProgressSource;
    :catchall_0
    move-exception v4

    #@25
    :try_start_2
    monitor-exit v5

    #@26
    throw v4
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0

    #@27
    .line 79
    :catch_0
    move-exception v0

    #@28
    .line 80
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    #@2b
    .line 83
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_1
    return-object v3

    #@2c
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressSource;>;"
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_3} :catch_0

    #@2d
    goto :goto_1
.end method

.method public declared-synchronized getProgressUpdateThreshold()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 90
    :try_start_0
    sget-object v0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;

    #@3
    invoke-interface {v0}, Lsun/net/ProgressMeteringPolicy;->getProgressUpdateThreshold()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public registerSource(Lsun/net/ProgressSource;)V
    .locals 13
    .param p1, "pi"    # Lsun/net/ProgressSource;

    #@0
    .prologue
    .line 106
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 107
    :try_start_0
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    monitor-exit v2

    #@c
    .line 108
    return-void

    #@d
    .line 110
    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@12
    monitor-exit v2

    #@13
    .line 114
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v1

    #@19
    if-lez v1, :cond_2

    #@1b
    .line 117
    new-instance v11, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@20
    .line 120
    .local v11, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@22
    monitor-enter v2

    #@23
    .line 121
    :try_start_2
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v10

    #@29
    .local v10, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 122
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Lsun/net/ProgressListener;

    #@35
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 120
    .end local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit v2

    #@3b
    throw v1

    #@3c
    .line 106
    .end local v11    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    :catchall_1
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1

    #@3f
    .restart local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    .restart local v11    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    :cond_1
    monitor-exit v2

    #@40
    .line 127
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v10

    #@44
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_2

    #@4a
    .line 128
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v12

    #@4e
    check-cast v12, Lsun/net/ProgressListener;

    #@50
    .line 129
    .local v12, "pl":Lsun/net/ProgressListener;
    new-instance v0, Lsun/net/ProgressEvent;

    #@52
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getURL()Ljava/net/URL;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getMethod()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getContentType()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getState()Lsun/net/ProgressSource$State;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getProgress()J

    #@65
    move-result-wide v6

    #@66
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getExpected()J

    #@69
    move-result-wide v8

    #@6a
    move-object v1, p1

    #@6b
    invoke-direct/range {v0 .. v9}, Lsun/net/ProgressEvent;-><init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V

    #@6e
    .line 130
    .local v0, "pe":Lsun/net/ProgressEvent;
    invoke-interface {v12, v0}, Lsun/net/ProgressListener;->progressStart(Lsun/net/ProgressEvent;)V

    #@71
    goto :goto_1

    #@72
    .line 104
    .end local v0    # "pe":Lsun/net/ProgressEvent;
    .end local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    .end local v11    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    .end local v12    # "pl":Lsun/net/ProgressListener;
    :cond_2
    return-void
.end method

.method public removeProgressListener(Lsun/net/ProgressListener;)V
    .locals 2
    .param p1, "l"    # Lsun/net/ProgressListener;

    #@0
    .prologue
    .line 217
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 218
    :try_start_0
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 216
    return-void

    #@a
    .line 217
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    sget-object v0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;

    #@2
    invoke-interface {v0, p1, p2}, Lsun/net/ProgressMeteringPolicy;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public unregisterSource(Lsun/net/ProgressSource;)V
    .locals 13
    .param p1, "pi"    # Lsun/net/ProgressSource;

    #@0
    .prologue
    .line 140
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 142
    :try_start_0
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    monitor-exit v2

    #@c
    .line 143
    return-void

    #@d
    .line 146
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lsun/net/ProgressSource;->close()V

    #@10
    .line 147
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@15
    monitor-exit v2

    #@16
    .line 151
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v1

    #@1c
    if-lez v1, :cond_2

    #@1e
    .line 154
    new-instance v11, Ljava/util/ArrayList;

    #@20
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 157
    .local v11, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@25
    monitor-enter v2

    #@26
    .line 158
    :try_start_2
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v10

    #@2c
    .local v10, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_1

    #@32
    .line 159
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Lsun/net/ProgressListener;

    #@38
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 157
    .end local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1

    #@3f
    .line 140
    .end local v11    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    :catchall_1
    move-exception v1

    #@40
    monitor-exit v2

    #@41
    throw v1

    #@42
    .restart local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    .restart local v11    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    :cond_1
    monitor-exit v2

    #@43
    .line 164
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@46
    move-result-object v10

    #@47
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_2

    #@4d
    .line 165
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v12

    #@51
    check-cast v12, Lsun/net/ProgressListener;

    #@53
    .line 166
    .local v12, "pl":Lsun/net/ProgressListener;
    new-instance v0, Lsun/net/ProgressEvent;

    #@55
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getURL()Ljava/net/URL;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getMethod()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getContentType()Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getState()Lsun/net/ProgressSource$State;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getProgress()J

    #@68
    move-result-wide v6

    #@69
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getExpected()J

    #@6c
    move-result-wide v8

    #@6d
    move-object v1, p1

    #@6e
    invoke-direct/range {v0 .. v9}, Lsun/net/ProgressEvent;-><init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V

    #@71
    .line 167
    .local v0, "pe":Lsun/net/ProgressEvent;
    invoke-interface {v12, v0}, Lsun/net/ProgressListener;->progressFinish(Lsun/net/ProgressEvent;)V

    #@74
    goto :goto_1

    #@75
    .line 138
    .end local v0    # "pe":Lsun/net/ProgressEvent;
    .end local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    .end local v11    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    .end local v12    # "pl":Lsun/net/ProgressListener;
    :cond_2
    return-void
.end method

.method public updateProgress(Lsun/net/ProgressSource;)V
    .locals 13
    .param p1, "pi"    # Lsun/net/ProgressSource;

    #@0
    .prologue
    .line 177
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 178
    :try_start_0
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    monitor-exit v2

    #@c
    .line 179
    return-void

    #@d
    :cond_0
    monitor-exit v2

    #@e
    .line 183
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v1

    #@14
    if-lez v1, :cond_2

    #@16
    .line 186
    new-instance v11, Ljava/util/ArrayList;

    #@18
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 189
    .local v11, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@1d
    monitor-enter v2

    #@1e
    .line 190
    :try_start_1
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v10

    #@24
    .local v10, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 191
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Lsun/net/ProgressListener;

    #@30
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 189
    .end local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1

    #@37
    .line 177
    .end local v11    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    :catchall_1
    move-exception v1

    #@38
    monitor-exit v2

    #@39
    throw v1

    #@3a
    .restart local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    .restart local v11    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    :cond_1
    monitor-exit v2

    #@3b
    .line 196
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v10

    #@3f
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_2

    #@45
    .line 197
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v12

    #@49
    check-cast v12, Lsun/net/ProgressListener;

    #@4b
    .line 198
    .local v12, "pl":Lsun/net/ProgressListener;
    new-instance v0, Lsun/net/ProgressEvent;

    #@4d
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getURL()Ljava/net/URL;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getMethod()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getContentType()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getState()Lsun/net/ProgressSource$State;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getProgress()J

    #@60
    move-result-wide v6

    #@61
    invoke-virtual {p1}, Lsun/net/ProgressSource;->getExpected()J

    #@64
    move-result-wide v8

    #@65
    move-object v1, p1

    #@66
    invoke-direct/range {v0 .. v9}, Lsun/net/ProgressEvent;-><init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V

    #@69
    .line 199
    .local v0, "pe":Lsun/net/ProgressEvent;
    invoke-interface {v12, v0}, Lsun/net/ProgressListener;->progressUpdate(Lsun/net/ProgressEvent;)V

    #@6c
    goto :goto_1

    #@6d
    .line 175
    .end local v0    # "pe":Lsun/net/ProgressEvent;
    .end local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    .end local v11    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    .end local v12    # "pl":Lsun/net/ProgressListener;
    :cond_2
    return-void
.end method
