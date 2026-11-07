.class public Ljava/util/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    since = "9"
.end annotation


# instance fields
.field private greylist-max-o changed:Z

.field private greylist-max-o obs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    .line 84
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api addObserver(Ljava/util/Observer;)V
    .registers 3
    .param p1, "o"    # Ljava/util/Observer;

    monitor-enter p0

    .line 96
    if-eqz p1, :cond_14

    .line 98
    :try_start_3
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 99
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 101
    .end local p0    # "this":Ljava/util/Observable;
    :cond_10
    monitor-exit p0

    return-void

    .line 95
    .end local p1    # "o":Ljava/util/Observer;
    :catchall_12
    move-exception p1

    goto :goto_1a

    .line 97
    .restart local p1    # "o":Ljava/util/Observer;
    :cond_14
    :try_start_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 95
    .end local p1    # "o":Ljava/util/Observer;
    :goto_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_12

    throw p1
.end method

.method protected declared-synchronized whitelist test-api clearChanged()V
    .registers 2

    monitor-enter p0

    .line 206
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 207
    monitor-exit p0

    return-void

    .line 205
    .end local p0    # "this":Ljava/util/Observable;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public declared-synchronized whitelist test-api countObservers()I
    .registers 2

    monitor-enter p0

    .line 229
    :try_start_1
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 229
    .end local p0    # "this":Ljava/util/Observable;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api deleteObserver(Ljava/util/Observer;)V
    .registers 3
    .param p1, "o"    # Ljava/util/Observer;

    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 110
    monitor-exit p0

    return-void

    .line 108
    .end local p0    # "this":Ljava/util/Observable;
    .end local p1    # "o":Ljava/util/Observer;
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api deleteObservers()V
    .registers 2

    monitor-enter p0

    .line 184
    :try_start_1
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 185
    monitor-exit p0

    return-void

    .line 183
    .end local p0    # "this":Ljava/util/Observable;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized whitelist test-api hasChanged()Z
    .registers 2

    monitor-enter p0

    .line 220
    :try_start_1
    iget-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 220
    .end local p0    # "this":Ljava/util/Observable;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist test-api notifyObservers()V
    .registers 2

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public whitelist test-api notifyObservers(Ljava/lang/Object;)V
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;

    .line 153
    monitor-enter p0

    .line 170
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Observable;->hasChanged()Z

    move-result v0

    if-nez v0, :cond_9

    .line 171
    monitor-exit p0

    return-void

    .line 172
    :cond_9
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "arrLocal":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Observable;->clearChanged()V

    .line 174
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_23

    .line 176
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_22

    .line 177
    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Observer;

    invoke-interface {v2, p0, p1}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 176
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 178
    .end local v1    # "i":I
    :cond_22
    return-void

    .line 174
    .end local v0    # "arrLocal":[Ljava/lang/Object;
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method protected declared-synchronized whitelist test-api setChanged()V
    .registers 2

    monitor-enter p0

    .line 192
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 193
    monitor-exit p0

    return-void

    .line 191
    .end local p0    # "this":Ljava/util/Observable;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method
