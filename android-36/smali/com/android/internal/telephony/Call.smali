.class public abstract Lcom/android/internal/telephony/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Call$State;,
        Lcom/android/internal/telephony/Call$SrvccState;
    }
.end annotation


# instance fields
.field protected final blacklist LOG_TAG:Ljava/lang/String;

.field public greylist-max-r mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLock:Ljava/lang/Object;

.field public greylist-max-r mState:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public static synthetic blacklist $r8$lambda$tF80yn5dcdHpZudWgBbNmztM16U(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .registers 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "Call"

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->LOG_TAG:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static blacklist stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;
    .registers 4

    .line 69
    sget-object v0, Lcom/android/internal/telephony/Call$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_22
    sget-object p0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 74
    :pswitch_25
    sget-object p0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 73
    :pswitch_28
    sget-object p0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 72
    :pswitch_2b
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 71
    :pswitch_2e
    sget-object p0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 70
    :pswitch_31
    sget-object p0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    return-object p0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public blacklist addConnection(Lcom/android/internal/telephony/Connection;)V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist clearConnections()V
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 198
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist clearDisconnected()V
    .registers 7

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_9
    :goto_9
    if-ge v2, v1, :cond_1f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 362
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_9

    .line 363
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/Call;->removeConnection(Lcom/android/internal/telephony/Connection;)V

    goto :goto_9

    .line 367
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnectionsCount()I

    move-result v0

    if-nez v0, :cond_2a

    .line 368
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Call;->setState(Lcom/android/internal/telephony/Call$State;)V

    :cond_2a
    return-void
.end method

.method public blacklist copyConnectionFrom(Lcom/android/internal/telephony/Call;)V
    .registers 2

    .line 112
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    return-void
.end method

.method public blacklist getConferenceParticipants()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getConnectionSummary()Ljava/lang/String;
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/Call$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/Call$$ExternalSyntheticLambda0;-><init>()V

    .line 131
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v1, ", "

    .line 132
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_20
    move-exception p0

    .line 133
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public greylist getConnections()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 104
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public blacklist getConnectionsCount()I
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 122
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public blacklist getEarliestConnectTime()J
    .registers 8

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    .line 290
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    return-wide v0

    .line 294
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v0, :cond_2b

    .line 295
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 298
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-gez v6, :cond_28

    move-wide v1, v4

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2b
    return-wide v1
.end method

.method public greylist getEarliestConnection()Lcom/android/internal/telephony/Connection;
    .registers 10

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    .line 243
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 247
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v0, :cond_2b

    .line 248
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 251
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_28

    move-object v1, v5

    move-wide v2, v6

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_2b
    return-object v1
.end method

.method public blacklist getEarliestCreateTime()J
    .registers 8

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    .line 269
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    return-wide v0

    .line 273
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v0, :cond_2b

    .line 274
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 277
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-gez v6, :cond_28

    move-wide v1, v4

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2b
    return-wide v1
.end method

.method public greylist-max-r getLatestConnection()Lcom/android/internal/telephony/Connection;
    .registers 10

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    .line 325
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 331
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v0, :cond_28

    .line 332
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 333
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-lez v8, :cond_25

    move-object v1, v5

    move-wide v2, v6

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_28
    return-object v1
.end method

.method public abstract greylist-max-r getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public greylist getState()Lcom/android/internal/telephony/Call$State;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    return-object p0
.end method

.method public abstract greylist hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract blacklist hangup(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public blacklist hangupIfAlive()V
    .registers 3

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 350
    :try_start_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_d
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " hangupIfActive: caught "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Call"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public blacklist hasConnection(Lcom/android/internal/telephony/Connection;)Z
    .registers 2

    .line 153
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasConnections()Z
    .registers 2

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 167
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v0
.end method

.method public blacklist isDialingOrAlerting()Z
    .registers 1

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result p0

    return p0
.end method

.method public greylist-max-r isIdle()Z
    .registers 1

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract greylist-max-r isMultiparty()Z
.end method

.method public blacklist isRinging()Z
    .registers 1

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result p0

    return p0
.end method

.method public blacklist removeConnection(Lcom/android/internal/telephony/Connection;)V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 178
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method protected blacklist setState(Lcom/android/internal/telephony/Call$State;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method
