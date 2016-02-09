.class public final Lcom/android/internal/telephony/cdma/CdmaCall;
.super Lcom/android/internal/telephony/Call;
.source "CdmaCall.java"


# instance fields
.field mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@5
    .line 37
    return-void
.end method


# virtual methods
.method attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 85
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@7
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@d
    .line 82
    return-void
.end method

.method attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 92
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@7
    .line 89
    return-void
.end method

.method clearDisconnected()V
    .locals 4

    #@0
    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 180
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@12
    .line 182
    .local v0, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@15
    move-result-object v2

    #@16
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    .line 183
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1f
    .line 179
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0

    #@22
    .line 187
    .end local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_2

    #@2a
    .line 188
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@2c
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@2e
    .line 178
    :cond_2
    return-void
.end method

.method connectionDisconnected(Lcom/android/internal/telephony/cdma/CdmaConnection;)Z
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@0
    .prologue
    .line 100
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@2
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@4
    if-eq v3, v4, :cond_2

    #@6
    .line 103
    const/4 v0, 0x1

    #@7
    .line 105
    .local v0, "hasOnlyDisconnectedConnections":Z
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@10
    .line 106
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/internal/telephony/Connection;

    #@18
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@1b
    move-result-object v3

    #@1c
    .line 107
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@1e
    .line 106
    if-eq v3, v4, :cond_1

    #@20
    .line 109
    const/4 v0, 0x0

    #@21
    .line 114
    :cond_0
    if-eqz v0, :cond_2

    #@23
    .line 115
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@25
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@27
    .line 116
    const/4 v3, 0x1

    #@28
    return v3

    #@29
    .line 105
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 120
    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    const/4 v3, 0x0

    #@2d
    return v3
.end method

.method detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 129
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@11
    .line 125
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    #@0
    .prologue
    .line 41
    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4
    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaCall;)V

    #@5
    .line 69
    return-void
.end method

.method isFull()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ne v1, v0, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 60
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-le v1, v0, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method onHangupLocal()V
    .locals 4

    #@0
    .prologue
    .line 167
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 168
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@11
    .line 170
    .local v0, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    #@14
    .line 167
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 172
    .end local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    #@19
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@1b
    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method update(Lcom/android/internal/telephony/cdma/CdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    .line 138
    .local v0, "changed":Z
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@3
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v1

    #@7
    .line 140
    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@9
    if-eq v1, v2, :cond_0

    #@b
    .line 141
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@d
    .line 142
    const/4 v0, 0x1

    #@e
    .line 145
    :cond_0
    return v0
.end method
