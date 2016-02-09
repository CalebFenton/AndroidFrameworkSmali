.class abstract Lcom/android/internal/telephony/sip/SipCallBase;
.super Lcom/android/internal/telephony/Call;
.source "SipCallBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method clearDisconnected()V
    .locals 4

    #@0
    .prologue
    .line 45
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipCallBase;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@12
    .line 47
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@15
    move-result-object v2

    #@16
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@1d
    goto :goto_0

    #@1e
    .line 50
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipCallBase;->mConnections:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_2

    #@26
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@28
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipCallBase;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@2b
    .line 44
    :cond_2
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
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipCallBase;->mConnections:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public isMultiparty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 36
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipCallBase;->mConnections:Ljava/util/ArrayList;

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

.method protected abstract setState(Lcom/android/internal/telephony/Call$State;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipCallBase;->mState:Lcom/android/internal/telephony/Call$State;

    #@7
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, ":"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-super {p0}, Lcom/android/internal/telephony/Call;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method
