.class public Lsun/net/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# static fields
.field private static blacklist meteringPolicy:Lsun/net/ProgressMeteringPolicy;

.field private static blacklist pm:Lsun/net/ProgressMonitor;


# instance fields
.field private blacklist progressListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsun/net/ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist progressSourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsun/net/ProgressSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 223
    new-instance v0, Lsun/net/DefaultProgressMeteringPolicy;

    invoke-direct {v0}, Lsun/net/DefaultProgressMeteringPolicy;-><init>()V

    sput-object v0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;

    .line 226
    new-instance v0, Lsun/net/ProgressMonitor;

    invoke-direct {v0}, Lsun/net/ProgressMonitor;-><init>()V

    sput-object v0, Lsun/net/ProgressMonitor;->pm:Lsun/net/ProgressMonitor;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized blacklist getDefault()Lsun/net/ProgressMonitor;
    .registers 2

    const-class v0, Lsun/net/ProgressMonitor;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lsun/net/ProgressMonitor;->pm:Lsun/net/ProgressMonitor;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 43
    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static declared-synchronized blacklist setDefault(Lsun/net/ProgressMonitor;)V
    .registers 2
    .param p0, "m"    # Lsun/net/ProgressMonitor;

    const-class v0, Lsun/net/ProgressMonitor;

    monitor-enter v0

    .line 50
    if-eqz p0, :cond_b

    .line 51
    :try_start_5
    sput-object p0, Lsun/net/ProgressMonitor;->pm:Lsun/net/ProgressMonitor;

    goto :goto_b

    .line 49
    .end local p0    # "m":Lsun/net/ProgressMonitor;
    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_8

    throw p0

    .line 52
    .restart local p0    # "m":Lsun/net/ProgressMonitor;
    :cond_b
    :goto_b
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized blacklist setMeteringPolicy(Lsun/net/ProgressMeteringPolicy;)V
    .registers 2
    .param p0, "policy"    # Lsun/net/ProgressMeteringPolicy;

    const-class v0, Lsun/net/ProgressMonitor;

    monitor-enter v0

    .line 58
    if-eqz p0, :cond_b

    .line 59
    :try_start_5
    sput-object p0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;

    goto :goto_b

    .line 57
    .end local p0    # "policy":Lsun/net/ProgressMeteringPolicy;
    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_8

    throw p0

    .line 60
    .restart local p0    # "policy":Lsun/net/ProgressMeteringPolicy;
    :cond_b
    :goto_b
    monitor-exit v0

    return-void
.end method


# virtual methods
.method public blacklist addProgressListener(Lsun/net/ProgressListener;)V
    .registers 4
    .param p1, "l"    # Lsun/net/ProgressListener;

    .line 208
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 209
    :try_start_3
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist getProgressSources()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lsun/net/ProgressSource;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "snapshot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressSource;>;"
    :try_start_5
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_8} :catch_2a

    .line 71
    :try_start_8
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressSource;>;"
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/net/ProgressSource;

    .line 75
    .local v3, "pi":Lsun/net/ProgressSource;
    invoke-virtual {v3}, Lsun/net/ProgressSource;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/net/ProgressSource;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    nop

    .end local v3    # "pi":Lsun/net/ProgressSource;
    goto :goto_e

    .line 77
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressSource;>;"
    :cond_25
    monitor-exit v1

    .line 81
    goto :goto_2e

    .line 77
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    .end local v0    # "snapshot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressSource;>;"
    .end local p0    # "this":Lsun/net/ProgressMonitor;
    :try_start_29
    throw v2
    :try_end_2a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 79
    .restart local v0    # "snapshot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressSource;>;"
    .restart local p0    # "this":Lsun/net/ProgressMonitor;
    :catch_2a
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 83
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_2e
    return-object v0
.end method

.method public declared-synchronized blacklist getProgressUpdateThreshold()I
    .registers 2

    monitor-enter p0

    .line 90
    :try_start_1
    sget-object v0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;

    invoke-interface {v0}, Lsun/net/ProgressMeteringPolicy;->getProgressUpdateThreshold()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 90
    .end local p0    # "this":Lsun/net/ProgressMonitor;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public blacklist registerSource(Lsun/net/ProgressSource;)V
    .registers 15
    .param p1, "pi"    # Lsun/net/ProgressSource;

    .line 106
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 107
    :try_start_3
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7e

    if-eqz v0, :cond_11

    .line 108
    :try_start_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_d

    return-void

    .line 111
    :catchall_d
    move-exception v0

    move-object v4, p1

    goto/16 :goto_80

    .line 110
    :cond_11
    :try_start_11
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_7e

    .line 114
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7c

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 120
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 121
    :try_start_28
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_76

    if-eqz v3, :cond_41

    .line 122
    :try_start_34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/net/ProgressListener;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3e

    goto :goto_2e

    .line 124
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :catchall_3e
    move-exception v0

    move-object v4, p1

    goto :goto_78

    :cond_41
    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_76

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/net/ProgressListener;

    .line 129
    .local v2, "pl":Lsun/net/ProgressListener;
    new-instance v3, Lsun/net/ProgressEvent;

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getState()Lsun/net/ProgressSource$State;

    move-result-object v8

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getProgress()J

    move-result-wide v9

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getExpected()J

    move-result-wide v11

    move-object v4, p1

    .end local p1    # "pi":Lsun/net/ProgressSource;
    .local v4, "pi":Lsun/net/ProgressSource;
    invoke-direct/range {v3 .. v12}, Lsun/net/ProgressEvent;-><init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V

    .line 130
    .local v3, "pe":Lsun/net/ProgressEvent;
    invoke-interface {v2, v3}, Lsun/net/ProgressListener;->progressStart(Lsun/net/ProgressEvent;)V

    .line 131
    .end local v2    # "pl":Lsun/net/ProgressListener;
    .end local v3    # "pe":Lsun/net/ProgressEvent;
    goto :goto_46

    .line 127
    .end local v4    # "pi":Lsun/net/ProgressSource;
    .restart local p1    # "pi":Lsun/net/ProgressSource;
    :cond_74
    move-object v4, p1

    .end local p1    # "pi":Lsun/net/ProgressSource;
    .restart local v4    # "pi":Lsun/net/ProgressSource;
    goto :goto_7d

    .line 124
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    .end local v4    # "pi":Lsun/net/ProgressSource;
    .restart local p1    # "pi":Lsun/net/ProgressSource;
    :catchall_76
    move-exception v0

    move-object v4, p1

    .end local p1    # "pi":Lsun/net/ProgressSource;
    .restart local v4    # "pi":Lsun/net/ProgressSource;
    :goto_78
    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_7a

    throw v0

    :catchall_7a
    move-exception v0

    goto :goto_78

    .line 114
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    .end local v4    # "pi":Lsun/net/ProgressSource;
    .restart local p1    # "pi":Lsun/net/ProgressSource;
    :cond_7c
    move-object v4, p1

    .line 133
    .end local p1    # "pi":Lsun/net/ProgressSource;
    .restart local v4    # "pi":Lsun/net/ProgressSource;
    :goto_7d
    return-void

    .line 111
    .end local v4    # "pi":Lsun/net/ProgressSource;
    .restart local p1    # "pi":Lsun/net/ProgressSource;
    :catchall_7e
    move-exception v0

    move-object v4, p1

    .end local p1    # "pi":Lsun/net/ProgressSource;
    .restart local v4    # "pi":Lsun/net/ProgressSource;
    :goto_80
    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_82

    throw v0

    :catchall_82
    move-exception v0

    goto :goto_80
.end method

.method public blacklist removeProgressListener(Lsun/net/ProgressListener;)V
    .registers 4
    .param p1, "l"    # Lsun/net/ProgressListener;

    .line 217
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 218
    :try_start_3
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;

    .line 98
    sget-object v0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;

    invoke-interface {v0, p1, p2}, Lsun/net/ProgressMeteringPolicy;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterSource(Lsun/net/ProgressSource;)V
    .registers 15
    .param p1, "pi"    # Lsun/net/ProgressSource;

    .line 140
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 142
    :try_start_3
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_81

    if-nez v0, :cond_11

    .line 143
    :try_start_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_d

    return-void

    .line 148
    :catchall_d
    move-exception v0

    move-object v4, p1

    goto/16 :goto_83

    .line 146
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Lsun/net/ProgressSource;->close()V

    .line 147
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_81

    .line 151
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7f

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 157
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 158
    :try_start_2b
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_79

    if-eqz v3, :cond_44

    .line 159
    :try_start_37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/net/ProgressListener;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_41

    goto :goto_31

    .line 161
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :catchall_41
    move-exception v0

    move-object v4, p1

    goto :goto_7b

    :cond_44
    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_79

    .line 164
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/net/ProgressListener;

    .line 166
    .local v2, "pl":Lsun/net/ProgressListener;
    new-instance v3, Lsun/net/ProgressEvent;

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getState()Lsun/net/ProgressSource$State;

    move-result-object v8

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getProgress()J

    move-result-wide v9

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getExpected()J

    move-result-wide v11

    move-object v4, p1

    .end local p1    # "pi":Lsun/net/ProgressSource;
    .local v4, "pi":Lsun/net/ProgressSource;
    invoke-direct/range {v3 .. v12}, Lsun/net/ProgressEvent;-><init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V

    .line 167
    .local v3, "pe":Lsun/net/ProgressEvent;
    invoke-interface {v2, v3}, Lsun/net/ProgressListener;->progressFinish(Lsun/net/ProgressEvent;)V

    .line 168
    .end local v2    # "pl":Lsun/net/ProgressListener;
    .end local v3    # "pe":Lsun/net/ProgressEvent;
    goto :goto_49

    .line 164
    .end local v4    # "pi":Lsun/net/ProgressSource;
    .restart local p1    # "pi":Lsun/net/ProgressSource;
    :cond_77
    move-object v4, p1

    .end local p1    # "pi":Lsun/net/ProgressSource;
    .restart local v4    # "pi":Lsun/net/ProgressSource;
    goto :goto_80

    .line 161
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    .end local v4    # "pi":Lsun/net/ProgressSource;
    .restart local p1    # "pi":Lsun/net/ProgressSource;
    :catchall_79
    move-exception v0

    move-object v4, p1

    .end local p1    # "pi":Lsun/net/ProgressSource;
    .restart local v4    # "pi":Lsun/net/ProgressSource;
    :goto_7b
    :try_start_7b
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7d

    throw v0

    :catchall_7d
    move-exception v0

    goto :goto_7b

    .line 151
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    .end local v4    # "pi":Lsun/net/ProgressSource;
    .restart local p1    # "pi":Lsun/net/ProgressSource;
    :cond_7f
    move-object v4, p1

    .line 170
    .end local p1    # "pi":Lsun/net/ProgressSource;
    .restart local v4    # "pi":Lsun/net/ProgressSource;
    :goto_80
    return-void

    .line 148
    .end local v4    # "pi":Lsun/net/ProgressSource;
    .restart local p1    # "pi":Lsun/net/ProgressSource;
    :catchall_81
    move-exception v0

    move-object v4, p1

    .end local p1    # "pi":Lsun/net/ProgressSource;
    .restart local v4    # "pi":Lsun/net/ProgressSource;
    :goto_83
    :try_start_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_85

    throw v0

    :catchall_85
    move-exception v0

    goto :goto_83
.end method

.method public blacklist updateProgress(Lsun/net/ProgressSource;)V
    .registers 15
    .param p1, "pi"    # Lsun/net/ProgressSource;

    .line 177
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 178
    :try_start_3
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_79

    if-nez v0, :cond_11

    .line 179
    :try_start_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_d

    return-void

    .line 180
    :catchall_d
    move-exception v0

    move-object v4, p1

    goto/16 :goto_7b

    :cond_11
    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_79

    .line 183
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_77

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 189
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 190
    :try_start_23
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_71

    if-eqz v3, :cond_3c

    .line 191
    :try_start_2f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/net/ProgressListener;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_39

    goto :goto_29

    .line 193
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :catchall_39
    move-exception v0

    move-object v4, p1

    goto :goto_73

    :cond_3c
    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_71

    .line 196
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/net/ProgressListener;

    .line 198
    .local v2, "pl":Lsun/net/ProgressListener;
    new-instance v3, Lsun/net/ProgressEvent;

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getState()Lsun/net/ProgressSource$State;

    move-result-object v8

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getProgress()J

    move-result-wide v9

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getExpected()J

    move-result-wide v11

    move-object v4, p1

    .end local p1    # "pi":Lsun/net/ProgressSource;
    .local v4, "pi":Lsun/net/ProgressSource;
    invoke-direct/range {v3 .. v12}, Lsun/net/ProgressEvent;-><init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V

    .line 199
    .local v3, "pe":Lsun/net/ProgressEvent;
    invoke-interface {v2, v3}, Lsun/net/ProgressListener;->progressUpdate(Lsun/net/ProgressEvent;)V

    .line 200
    .end local v2    # "pl":Lsun/net/ProgressListener;
    .end local v3    # "pe":Lsun/net/ProgressEvent;
    goto :goto_41

    .line 196
    .end local v4    # "pi":Lsun/net/ProgressSource;
    .restart local p1    # "pi":Lsun/net/ProgressSource;
    :cond_6f
    move-object v4, p1

    .end local p1    # "pi":Lsun/net/ProgressSource;
    .restart local v4    # "pi":Lsun/net/ProgressSource;
    goto :goto_78

    .line 193
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    .end local v4    # "pi":Lsun/net/ProgressSource;
    .restart local p1    # "pi":Lsun/net/ProgressSource;
    :catchall_71
    move-exception v0

    move-object v4, p1

    .end local p1    # "pi":Lsun/net/ProgressSource;
    .restart local v4    # "pi":Lsun/net/ProgressSource;
    :goto_73
    :try_start_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_75

    throw v0

    :catchall_75
    move-exception v0

    goto :goto_73

    .line 183
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    .end local v4    # "pi":Lsun/net/ProgressSource;
    .restart local p1    # "pi":Lsun/net/ProgressSource;
    :cond_77
    move-object v4, p1

    .line 202
    .end local p1    # "pi":Lsun/net/ProgressSource;
    .restart local v4    # "pi":Lsun/net/ProgressSource;
    :goto_78
    return-void

    .line 180
    .end local v4    # "pi":Lsun/net/ProgressSource;
    .restart local p1    # "pi":Lsun/net/ProgressSource;
    :catchall_79
    move-exception v0

    move-object v4, p1

    .end local p1    # "pi":Lsun/net/ProgressSource;
    .restart local v4    # "pi":Lsun/net/ProgressSource;
    :goto_7b
    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7d

    throw v0

    :catchall_7d
    move-exception v0

    goto :goto_7b
.end method
