.class public Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
.super Lcom/android/internal/telephony/Connection;
.source "ImsExternalConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;
    }
.end annotation


# instance fields
.field private mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

.field private mCallId:I

.field private mIsPullable:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/Phone;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "callId"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "isPullable"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 74
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@4
    move-result v0

    #@5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    #@8
    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    const/16 v1, 0x8

    #@c
    const v2, 0x3f666666    # 0.9f

    #@f
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@12
    .line 55
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    #@18
    .line 75
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    #@1a
    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    #@1f
    .line 76
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    #@21
    .line 77
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mAddress:Ljava/lang/String;

    #@23
    .line 78
    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mNumberPresentation:I

    #@25
    .line 79
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    #@27
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->rebuildCapabilities()V

    #@2a
    .line 82
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setActive()V

    #@2d
    .line 73
    return-void
.end method

.method private rebuildCapabilities()V
    .locals 2

    #@0
    .prologue
    .line 233
    const/16 v0, 0x10

    #@2
    .line 234
    .local v0, "capabilities":I
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 235
    const/16 v0, 0x30

    #@8
    .line 238
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setConnectionCapabilities(I)V

    #@b
    .line 232
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 202
    return-void
.end method

.method public cancelPostDial()V
    .locals 0

    #@0
    .prologue
    .line 133
    return-void
.end method

.method public getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    #@2
    return-object v0
.end method

.method public getCallId()I
    .locals 1

    #@0
    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    #@2
    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    #@0
    .prologue
    .line 99
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 2

    #@0
    .prologue
    .line 104
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mNumberPresentation:I

    #@2
    return v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 149
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    #@0
    .prologue
    .line 144
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public hangup()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    return-void
.end method

.method public isMultiparty()Z
    .locals 1

    #@0
    .prologue
    .line 154
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public proceedAfterWaitChar()V
    .locals 0

    #@0
    .prologue
    .line 123
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    return-void
.end method

.method public pullExternalCall()V
    .locals 3

    #@0
    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;

    #@12
    .line 167
    .local v0, "listener":Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;->onPullExternalCall(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V

    #@15
    goto :goto_0

    #@16
    .line 165
    .end local v0    # "listener":Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    .line 206
    return-void
.end method

.method public separate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    return-void
.end method

.method public setActive()V
    .locals 1

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 176
    return-void

    #@5
    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->setActive()V

    #@a
    .line 174
    return-void
.end method

.method public setIsPullable(Z)V
    .locals 0
    .param p1, "isPullable"    # Z

    #@0
    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    #@2
    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->rebuildCapabilities()V

    #@5
    .line 197
    return-void
.end method

.method public setTerminated()V
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 186
    return-void

    #@5
    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->setTerminated()V

    #@a
    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 217
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[ImsExternalConnection dialogCallId:"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 218
    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    .line 219
    const-string/jumbo v1, " state:"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    #@1a
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@1d
    move-result-object v1

    #@1e
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@20
    if-ne v1, v2, :cond_1

    #@22
    .line 221
    const-string/jumbo v1, "Active"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 225
    :cond_0
    :goto_0
    const-string/jumbo v1, "]"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    return-object v1

    #@33
    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    #@35
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@38
    move-result-object v1

    #@39
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@3b
    if-ne v1, v2, :cond_0

    #@3d
    .line 223
    const-string/jumbo v1, "Disconnected"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    goto :goto_0
.end method
