.class public Lcom/android/internal/telephony/RegistrantList;
.super Ljava/lang/Object;
.source "RegistrantList.java"


# instance fields
.field blacklist registrants:Ljava/util/ArrayList;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RegistrantList;->registrants:Ljava/util/ArrayList;

    return-void
.end method

.method private declared-synchronized blacklist internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6

    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 91
    iget-object v2, p0, Lcom/android/internal/telephony/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    .line 92
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_18
    move-exception p1

    goto :goto_1c

    .line 94
    :cond_1a
    monitor-exit p0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_18

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist add(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    monitor-enter p0

    .line 36
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 37
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist add(Lcom/android/internal/telephony/Registrant;)V
    .registers 3

    monitor-enter p0

    .line 52
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->removeCleared()V

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 54
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist addUnique(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    monitor-enter p0

    .line 44
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 45
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 46
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist get(I)Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public blacklist notifyException(Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist notifyRegistrants()V
    .registers 2

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0, v0}, Lcom/android/internal/telephony/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist notifyRegistrants(Landroid/os/AsyncResult;)V
    .registers 3

    .line 121
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist notifyResult(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public declared-synchronized blacklist remove(Landroid/os/Handler;)V
    .registers 6

    monitor-enter p0

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_22

    .line 129
    iget-object v2, p0, Lcom/android/internal/telephony/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    .line 132
    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1a

    if-ne v3, p1, :cond_1d

    .line 138
    :cond_1a
    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->clear()V

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_20
    move-exception p1

    goto :goto_27

    .line 142
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->removeCleared()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_20

    .line 143
    monitor-exit p0

    return-void

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_20

    throw p1
.end method

.method public declared-synchronized blacklist removeAll()V
    .registers 2

    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 71
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized blacklist removeCleared()V
    .registers 3

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_22

    .line 61
    iget-object v1, p0, Lcom/android/internal/telephony/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Registrant;

    .line 63
    iget-object v1, v1, Lcom/android/internal/telephony/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1f

    .line 64
    iget-object v1, p0, Lcom/android/internal/telephony/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_1f

    :catchall_1d
    move-exception v0

    goto :goto_24

    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 67
    :cond_22
    monitor-exit p0

    return-void

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_1d

    throw v0
.end method

.method public declared-synchronized blacklist size()I
    .registers 2

    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method
