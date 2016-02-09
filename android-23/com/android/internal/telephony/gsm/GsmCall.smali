.class Lcom/android/internal/telephony/gsm/GsmCall;
.super Lcom/android/internal/telephony/Call;
.source "GsmCall.java"


# instance fields
.field mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

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
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 87
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@7
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@d
    .line 84
    return-void
.end method

.method attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 94
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@7
    .line 91
    return-void
.end method

.method clearDisconnected()V
    .locals 4

    #@0
    .prologue
    .line 183
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

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
    .line 184
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    #@12
    .line 186
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@15
    move-result-object v2

    #@16
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    .line 187
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1f
    .line 183
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0

    #@22
    .line 191
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_2

    #@2a
    .line 192
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@2c
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@2e
    .line 182
    :cond_2
    return-void
.end method

.method connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)Z
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    #@0
    .prologue
    .line 102
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@2
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@4
    if-eq v3, v4, :cond_2

    #@6
    .line 105
    const/4 v0, 0x1

    #@7
    .line 107
    .local v0, "hasOnlyDisconnectedConnections":Z
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@10
    .line 108
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

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
    .line 109
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@1e
    .line 108
    if-eq v3, v4, :cond_1

    #@20
    .line 111
    const/4 v0, 0x0

    #@21
    .line 116
    :cond_0
    if-eqz v0, :cond_2

    #@23
    .line 117
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@25
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@27
    .line 118
    const/4 v3, 0x1

    #@28
    return v3

    #@29
    .line 107
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 122
    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    const/4 v3, 0x0

    #@2d
    return v3
.end method

.method detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 130
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@11
    .line 126
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
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

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
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V

    #@5
    .line 71
    return-void
.end method

.method isFull()Z
    .locals 2

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x5

    #@7
    if-ne v0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 62
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

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
    .line 168
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 171
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    #@11
    .line 173
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    #@14
    .line 169
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 175
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    #@19
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@1b
    .line 167
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method update(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    #@0
    .prologue
    .line 137
    const/4 v0, 0x0

    #@1
    .line 139
    .local v0, "changed":Z
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@3
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v1

    #@7
    .line 141
    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@9
    if-eq v1, v2, :cond_0

    #@b
    .line 142
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@d
    .line 143
    const/4 v0, 0x1

    #@e
    .line 146
    :cond_0
    return v0
.end method
