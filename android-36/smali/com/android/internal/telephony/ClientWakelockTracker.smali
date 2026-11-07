.class public Lcom/android/internal/telephony/ClientWakelockTracker;
.super Ljava/lang/Object;
.source "ClientWakelockTracker.java"


# static fields
.field public static final blacklist LOG_TAG:Ljava/lang/String; = "ClientWakelockTracker"


# instance fields
.field public blacklist mActiveClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/ClientWakelockAccountant;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/ClientWakelockAccountant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ClientWakelockAccountant;

    goto :goto_21

    :catchall_14
    move-exception p0

    goto :goto_23

    .line 94
    :cond_16
    new-instance v1, Lcom/android/internal/telephony/ClientWakelockAccountant;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/ClientWakelockAccountant;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    .line 97
    :goto_21
    monitor-exit v0

    return-object p0

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_14

    throw p0
.end method

.method private blacklist updateConcurrentRequests(IJ)V
    .registers 8

    if-eqz p1, :cond_20

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 104
    :try_start_5
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1c

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/ClientWakelockAccountant;

    .line 105
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/ClientWakelockAccountant;->changeConcurrentRequests(IJ)V

    goto :goto_c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 107
    :cond_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1a

    throw p0

    :cond_20
    return-void
.end method


# virtual methods
.method blacklist dumpClientRequestTracker(Ljava/io/PrintWriter;)V
    .registers 7

    .line 123
    const-string v0, "-------mClients---------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 125
    :try_start_8
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ClientWakelockAccountant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    :catchall_42
    move-exception p0

    goto :goto_46

    .line 129
    :cond_44
    monitor-exit v0

    return-void

    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_42

    throw p0
.end method

.method blacklist getClientRequestStats()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 77
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v2

    .line 78
    :try_start_7
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 80
    iget-object v6, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ClientWakelockAccountant;

    .line 81
    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/ClientWakelockAccountant;->updatePendingRequestWakelockTime(J)J

    .line 82
    new-instance v6, Landroid/telephony/ClientRequestStats;

    iget-object v5, v5, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-direct {v6, v5}, Landroid/telephony/ClientRequestStats;-><init>(Landroid/telephony/ClientRequestStats;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :catchall_3e
    move-exception p0

    goto :goto_42

    .line 84
    :cond_40
    monitor-exit v2

    return-object v3

    :goto_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_3e

    throw p0
.end method

.method public blacklist isClientActive(Ljava/lang/String;)Z
    .registers 3

    .line 112
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 114
    :try_start_7
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    .line 115
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    goto :goto_17

    .line 117
    :cond_14
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_12

    throw p0
.end method

.method public blacklist startTracking(Ljava/lang/String;III)V
    .registers 11

    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object v0

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v1, p2

    move v2, p3

    move v3, p4

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ClientWakelockAccountant;->startAttributingWakelock(IIIJ)V

    .line 42
    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->updateConcurrentRequests(IJ)V

    .line 43
    iget-object p1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter p1

    .line 44
    :try_start_14
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    .line 45
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :catchall_22
    move-exception v0

    move-object p0, v0

    goto :goto_27

    .line 47
    :cond_25
    :goto_25
    monitor-exit p1

    return-void

    :goto_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_22

    throw p0
.end method

.method public blacklist stopTracking(Ljava/lang/String;III)V
    .registers 7

    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object p1

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 54
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/android/internal/telephony/ClientWakelockAccountant;->stopAttributingWakelock(IIJ)V

    .line 55
    invoke-virtual {p1}, Lcom/android/internal/telephony/ClientWakelockAccountant;->getPendingRequestCount()I

    move-result p2

    if-nez p2, :cond_1e

    .line 56
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter p2

    .line 57
    :try_start_14
    iget-object p3, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    monitor-exit p2

    goto :goto_1e

    :catchall_1b
    move-exception p0

    monitor-exit p2
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p0

    .line 60
    :cond_1e
    :goto_1e
    invoke-direct {p0, p4, v0, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->updateConcurrentRequests(IJ)V

    return-void
.end method

.method public blacklist stopTrackingAll()V
    .registers 8

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 66
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v2

    .line 67
    :try_start_7
    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v4, :cond_1e

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/internal/telephony/ClientWakelockAccountant;

    .line 68
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ClientWakelockAccountant;->stopAllPendingRequests(J)V

    goto :goto_e

    :catchall_1c
    move-exception p0

    goto :goto_25

    .line 70
    :cond_1e
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 71
    monitor-exit v2

    return-void

    :goto_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_1c

    throw p0
.end method
