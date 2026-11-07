.class public Lcom/android/internal/telephony/GsmCdmaCall;
.super Lcom/android/internal/telephony/Call;
.source "GsmCdmaCall.java"


# instance fields
.field blacklist mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    return-void
.end method


# virtual methods
.method public blacklist attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .registers 3

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Call;->addConnection(Lcom/android/internal/telephony/Connection;)V

    .line 79
    iget-object p1, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {p1}, Lcom/android/internal/telephony/Call;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public greylist-max-r attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .registers 3

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Call;->addConnection(Lcom/android/internal/telephony/Connection;)V

    .line 86
    iput-object p2, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public blacklist connectionDisconnected(Lcom/android/internal/telephony/GsmCdmaConnection;)Z
    .registers 7

    .line 93
    iget-object p1, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_29

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :cond_10
    if-ge v2, v0, :cond_23

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 99
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_10

    goto :goto_29

    .line 106
    :cond_23
    sget-object p1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 p0, 0x1

    return p0

    :cond_29
    :goto_29
    return v1
.end method

.method public blacklist detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Call;->removeConnection(Lcom/android/internal/telephony/Connection;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnectionsCount()I

    move-result p1

    if-nez p1, :cond_d

    .line 118
    sget-object p1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    :cond_d
    return-void
.end method

.method public blacklist getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object p0

    return-object p0
.end method

.method public blacklist hangup()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    return-void
.end method

.method public blacklist hangup(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 66
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    return-void
.end method

.method blacklist isFull()Z
    .registers 2

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnectionsCount()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getMaxConnectionsPerCall()I

    move-result p0

    if-ne v0, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMultiparty()Z
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnectionsCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist onHangupLocal()V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 157
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 158
    check-cast v3, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    goto :goto_12

    .line 160
    :cond_22
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist update(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .registers 3

    .line 126
    iget-object p1, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {p1}, Lcom/android/internal/telephony/Call;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    if-eq p1, p2, :cond_e

    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
