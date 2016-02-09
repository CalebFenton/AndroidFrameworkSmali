.class public final Landroid/telecom/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Phone$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private final mCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mCanAddCall:Z

.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Phone$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/telecom/InCallAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/telecom/InCallAdapter;

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    #@a
    .line 107
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    #@11
    .line 110
    iget-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    #@13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/telecom/Phone;->mUnmodifiableCalls:Ljava/util/List;

    #@19
    .line 116
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1b
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    #@20
    .line 118
    const/4 v0, 0x1

    #@21
    iput-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    #@23
    .line 121
    iput-object p1, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@25
    .line 120
    return-void
.end method

.method private checkCallTree(Landroid/telecom/ParcelableCall;)V
    .locals 7
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 333
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 334
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    #@b
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 338
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    #@18
    move-result-object v1

    #@19
    if-eqz v1, :cond_3

    #@1b
    .line 339
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@23
    move-result v1

    #@24
    if-ge v0, v1, :cond_3

    #@26
    .line 340
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    #@28
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-nez v1, :cond_1

    #@36
    .line 341
    const-string/jumbo v1, "ParcelableCall %s has nonexistent child %s"

    #@39
    new-array v2, v6, [Ljava/lang/Object;

    #@3b
    .line 342
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    aput-object v3, v2, v4

    #@41
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    #@44
    move-result-object v3

    #@45
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v3

    #@49
    aput-object v3, v2, v5

    #@4b
    .line 341
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@4e
    .line 339
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_1

    #@51
    .line 335
    .end local v0    # "i":I
    :cond_2
    const-string/jumbo v1, "ParcelableCall %s has nonexistent parent %s"

    #@54
    new-array v2, v6, [Ljava/lang/Object;

    #@56
    .line 336
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    aput-object v3, v2, v4

    #@5c
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    aput-object v3, v2, v5

    #@62
    .line 335
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@65
    goto :goto_0

    #@66
    .line 332
    :cond_3
    return-void
.end method

.method private fireBringToForeground(Z)V
    .locals 3
    .param p1, "showDialpad"    # Z

    #@0
    .prologue
    .line 321
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

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
    check-cast v0, Landroid/telecom/Phone$Listener;

    #@12
    .line 322
    .local v0, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Phone$Listener;->onBringToForeground(Landroid/telecom/Phone;Z)V

    #@15
    goto :goto_0

    #@16
    .line 320
    .end local v0    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method private fireCallAdded(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "call"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 302
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

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
    check-cast v0, Landroid/telecom/Phone$Listener;

    #@12
    .line 303
    .local v0, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Phone$Listener;->onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    #@15
    goto :goto_0

    #@16
    .line 301
    .end local v0    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method private fireCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "audioState"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 314
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

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
    check-cast v0, Landroid/telecom/Phone$Listener;

    #@12
    .line 315
    .local v0, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Phone$Listener;->onCallAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/CallAudioState;)V

    #@15
    .line 316
    new-instance v2, Landroid/telecom/AudioState;

    #@17
    invoke-direct {v2, p1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    #@1a
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Phone$Listener;->onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V

    #@1d
    goto :goto_0

    #@1e
    .line 313
    .end local v0    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method private fireCallRemoved(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "call"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 308
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

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
    check-cast v0, Landroid/telecom/Phone$Listener;

    #@12
    .line 309
    .local v0, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Phone$Listener;->onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    #@15
    goto :goto_0

    #@16
    .line 307
    .end local v0    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method private fireCanAddCallChanged(Z)V
    .locals 3
    .param p1, "canAddCall"    # Z

    #@0
    .prologue
    .line 327
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

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
    check-cast v0, Landroid/telecom/Phone$Listener;

    #@12
    .line 328
    .local v0, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Phone$Listener;->onCanAddCallChanged(Landroid/telecom/Phone;Z)V

    #@15
    goto :goto_0

    #@16
    .line 326
    .end local v0    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method


# virtual methods
.method public final addListener(Landroid/telecom/Phone$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Phone$Listener;

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 201
    return-void
.end method

.method public final canAddCall()Z
    .locals 1

    #@0
    .prologue
    .line 231
    iget-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    #@2
    return v0
.end method

.method final destroy()V
    .locals 5

    #@0
    .prologue
    .line 185
    iget-object v3, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/telecom/Call;

    #@12
    .line 186
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    #@15
    move-result-object v2

    #@16
    .line 187
    .local v2, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-eqz v2, :cond_1

    #@18
    .line 188
    invoke-virtual {v2}, Landroid/telecom/InCallService$VideoCall;->destroy()V

    #@1b
    .line 190
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/Call;->getState()I

    #@1e
    move-result v3

    #@1f
    const/4 v4, 0x7

    #@20
    if-eq v3, v4, :cond_0

    #@22
    .line 191
    invoke-virtual {v0}, Landroid/telecom/Call;->internalSetDisconnected()V

    #@25
    goto :goto_0

    #@26
    .line 184
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v2    # "videoCall":Landroid/telecom/InCallService$VideoCall;
    :cond_2
    return-void
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 289
    new-instance v0, Landroid/telecom/AudioState;

    #@2
    iget-object v1, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@4
    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    #@7
    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@2
    return-object v0
.end method

.method public final getCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Landroid/telecom/Phone;->mUnmodifiableCalls:Ljava/util/List;

    #@2
    return-object v0
.end method

.method final internalAddCall(Landroid/telecom/ParcelableCall;)V
    .locals 3
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    #@0
    .prologue
    .line 125
    new-instance v0, Landroid/telecom/Call;

    #@2
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@8
    invoke-direct {v0, p0, v1, v2}, Landroid/telecom/Call;-><init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;)V

    #@b
    .line 126
    .local v0, "call":Landroid/telecom/Call;
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    #@d
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 127
    iget-object v1, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    #@16
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 128
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    #@1c
    .line 129
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    #@1e
    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    #@21
    .line 130
    invoke-direct {p0, v0}, Landroid/telecom/Phone;->fireCallAdded(Landroid/telecom/Call;)V

    #@24
    .line 124
    return-void
.end method

.method final internalBringToForeground(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    #@0
    .prologue
    .line 171
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireBringToForeground(Z)V

    #@3
    .line 170
    return-void
.end method

.method final internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 1
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 161
    iput-object p1, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@a
    .line 162
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    #@d
    .line 159
    :cond_0
    return-void
.end method

.method final internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;
    .locals 1
    .param p1, "telecomId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/telecom/Call;

    #@8
    return-object v0
.end method

.method final internalRemoveCall(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "call"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 134
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Landroid/telecom/Call;->internalGetCallId()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 135
    iget-object v1, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    #@b
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@e
    .line 137
    invoke-virtual {p1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    #@11
    move-result-object v0

    #@12
    .line 138
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-eqz v0, :cond_0

    #@14
    .line 139
    invoke-virtual {v0}, Landroid/telecom/InCallService$VideoCall;->destroy()V

    #@17
    .line 141
    :cond_0
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCallRemoved(Landroid/telecom/Call;)V

    #@1a
    .line 133
    return-void
.end method

.method final internalSetCanAddCall(Z)V
    .locals 1
    .param p1, "canAddCall"    # Z

    #@0
    .prologue
    .line 175
    iget-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 176
    iput-boolean p1, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    #@6
    .line 177
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCanAddCallChanged(Z)V

    #@9
    .line 174
    :cond_0
    return-void
.end method

.method final internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "telecomId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    #@0
    .prologue
    .line 153
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/telecom/Call;

    #@8
    .line 154
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    #@a
    .line 155
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalSetPostDialWait(Ljava/lang/String;)V

    #@d
    .line 152
    :cond_0
    return-void
.end method

.method final internalUpdateCall(Landroid/telecom/ParcelableCall;)V
    .locals 3
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    #@0
    .prologue
    .line 145
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/telecom/Call;

    #@c
    .line 146
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    #@e
    .line 147
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    #@11
    .line 148
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    #@13
    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    #@16
    .line 144
    :cond_0
    return-void
.end method

.method public final removeListener(Landroid/telecom/Phone$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Phone$Listener;

    #@0
    .prologue
    .line 211
    if-eqz p1, :cond_0

    #@2
    .line 212
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@7
    .line 210
    :cond_0
    return-void
.end method

.method public final setAudioRoute(I)V
    .locals 1
    .param p1, "route"    # I

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->setAudioRoute(I)V

    #@5
    .line 250
    return-void
.end method

.method public final setMuted(Z)V
    .locals 1
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->mute(Z)V

    #@5
    .line 240
    return-void
.end method

.method public final setProximitySensorOff(Z)V
    .locals 1
    .param p1, "screenOnImmediately"    # Z

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->turnProximitySensorOff(Z)V

    #@5
    .line 277
    return-void
.end method

.method public final setProximitySensorOn()V
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->turnProximitySensorOn()V

    #@5
    .line 262
    return-void
.end method
