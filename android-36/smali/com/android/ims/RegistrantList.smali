.class public Lcom/android/ims/RegistrantList;
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

    iput-object v0, p0, Lcom/android/ims/RegistrantList;->registrants:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method private declared-synchronized blacklist internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_2
    iget-object v1, p0, Lcom/android/ims/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_8
    if-ge v0, v1, :cond_18

    .line 91
    iget-object v2, p0, Lcom/android/ims/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/Registrant;

    .line 92
    .local v2, "r":Lcom/android/ims/Registrant;
    invoke-virtual {v2, p1, p2}, Lcom/android/ims/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1a

    .line 90
    .end local v2    # "r":Lcom/android/ims/Registrant;
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 94
    .end local v0    # "i":I
    .end local v1    # "s":I
    .end local p0    # "this":Lcom/android/ims/RegistrantList;
    :cond_18
    monitor-exit p0

    return-void

    .line 89
    .end local p1    # "result":Ljava/lang/Object;
    .end local p2    # "exception":Ljava/lang/Throwable;
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist add(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 36
    :try_start_1
    new-instance v0, Lcom/android/ims/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/ims/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/ims/RegistrantList;->add(Lcom/android/ims/Registrant;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 37
    monitor-exit p0

    return-void

    .line 35
    .end local p0    # "this":Lcom/android/ims/RegistrantList;
    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "obj":Ljava/lang/Object;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist add(Lcom/android/ims/Registrant;)V
    .registers 3
    .param p1, "r"    # Lcom/android/ims/Registrant;

    monitor-enter p0

    .line 52
    :try_start_1
    invoke-virtual {p0}, Lcom/android/ims/RegistrantList;->removeCleared()V

    .line 53
    iget-object v0, p0, Lcom/android/ims/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 54
    monitor-exit p0

    return-void

    .line 51
    .end local p0    # "this":Lcom/android/ims/RegistrantList;
    .end local p1    # "r":Lcom/android/ims/Registrant;
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
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 44
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/ims/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 45
    new-instance v0, Lcom/android/ims/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/ims/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/ims/RegistrantList;->add(Lcom/android/ims/Registrant;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 46
    monitor-exit p0

    return-void

    .line 43
    .end local p0    # "this":Lcom/android/ims/RegistrantList;
    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "obj":Ljava/lang/Object;
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
    .param p1, "index"    # I

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 84
    .end local p0    # "this":Lcom/android/ims/RegistrantList;
    .end local p1    # "index":I
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
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/ims/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method public blacklist notifyRegistrants()V
    .registers 2

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/ims/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 101
    return-void
.end method

.method public blacklist notifyRegistrants(Landroid/os/AsyncResult;)V
    .registers 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 121
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Lcom/android/ims/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method

.method public blacklist notifyResult(Ljava/lang/Object;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/ims/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 114
    return-void
.end method

.method public declared-synchronized blacklist remove(Landroid/os/Handler;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;

    monitor-enter p0

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_2
    iget-object v1, p0, Lcom/android/ims/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_8
    if-ge v0, v1, :cond_20

    .line 129
    iget-object v2, p0, Lcom/android/ims/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/Registrant;

    .line 132
    .local v2, "r":Lcom/android/ims/Registrant;
    invoke-virtual {v2}, Lcom/android/ims/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 137
    .local v3, "rh":Landroid/os/Handler;
    if-eqz v3, :cond_1a

    if-ne v3, p1, :cond_1d

    .line 138
    :cond_1a
    invoke-virtual {v2}, Lcom/android/ims/Registrant;->clear()V

    .line 128
    .end local v2    # "r":Lcom/android/ims/Registrant;
    .end local v3    # "rh":Landroid/os/Handler;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 142
    .end local v0    # "i":I
    .end local v1    # "s":I
    .end local p0    # "this":Lcom/android/ims/RegistrantList;
    :cond_20
    invoke-virtual {p0}, Lcom/android/ims/RegistrantList;->removeCleared()V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_25

    .line 143
    monitor-exit p0

    return-void

    .line 127
    .end local p1    # "h":Landroid/os/Handler;
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public declared-synchronized blacklist removeAll()V
    .registers 2

    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 71
    monitor-exit p0

    return-void

    .line 69
    .end local p0    # "this":Lcom/android/ims/RegistrantList;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized blacklist removeCleared()V
    .registers 4

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1f

    .line 61
    iget-object v1, p0, Lcom/android/ims/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/Registrant;

    .line 63
    .local v1, "r":Lcom/android/ims/Registrant;
    iget-object v2, v1, Lcom/android/ims/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1c

    .line 64
    iget-object v2, p0, Lcom/android/ims/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_21

    .line 60
    .end local v1    # "r":Lcom/android/ims/Registrant;
    .end local p0    # "this":Lcom/android/ims/RegistrantList;
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 67
    .end local v0    # "i":I
    :cond_1f
    monitor-exit p0

    return-void

    .line 59
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public declared-synchronized blacklist size()I
    .registers 2

    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 77
    .end local p0    # "this":Lcom/android/ims/RegistrantList;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method
