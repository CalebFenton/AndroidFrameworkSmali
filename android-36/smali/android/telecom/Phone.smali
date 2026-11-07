.class public final Landroid/telecom/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Phone$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist SDK_VERSION_R:I = 0x1e


# instance fields
.field private greylist-max-o mCallAudioState:Landroid/telecom/CallAudioState;

.field private final greylist-max-o mCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCallingPackage:Ljava/lang/String;

.field private final greylist-max-o mCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCanAddCall:Z

.field private final greylist-max-o mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private final greylist-max-o mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Phone$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final greylist-max-o mTargetSdkVersion:I

.field private final greylist-max-o mUnmodifiableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V
    .registers 5
    .param p1, "adapter"    # Landroid/telecom/InCallAdapter;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "targetSdkVersion"    # I

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    .line 129
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    .line 132
    iget-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Phone;->mUnmodifiableCalls:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mLock:Ljava/lang/Object;

    .line 152
    iput-object p1, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 153
    iput-object p2, p0, Landroid/telecom/Phone;->mCallingPackage:Ljava/lang/String;

    .line 154
    iput p3, p0, Landroid/telecom/Phone;->mTargetSdkVersion:I

    .line 155
    return-void
.end method

.method private greylist-max-o checkCallTree(Landroid/telecom/ParcelableCall;)V
    .registers 5
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .line 493
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 494
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 495
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 496
    nop

    .line 497
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 496
    const-string v2, "ParcelableCall %s has nonexistent child %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 501
    .end local v0    # "i":I
    :cond_3a
    return-void
.end method

.method private greylist-max-o fireBringToForeground(Z)V
    .registers 4
    .param p1, "showDialpad"    # Z

    .line 475
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 476
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onBringToForeground(Landroid/telecom/Phone;Z)V

    .line 477
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    goto :goto_6

    .line 478
    :cond_16
    return-void
.end method

.method private greylist-max-o fireCallAdded(Landroid/telecom/Call;)V
    .registers 4
    .param p1, "call"    # Landroid/telecom/Call;

    .line 456
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 457
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    .line 458
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    goto :goto_6

    .line 459
    :cond_16
    return-void
.end method

.method private greylist-max-o fireCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 5
    .param p1, "audioState"    # Landroid/telecom/CallAudioState;

    .line 468
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 469
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/CallAudioState;)V

    .line 470
    new-instance v2, Landroid/telecom/AudioState;

    invoke-direct {v2, p1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Phone$Listener;->onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V

    .line 471
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    goto :goto_6

    .line 472
    :cond_1e
    return-void
.end method

.method private greylist-max-o fireCallRemoved(Landroid/telecom/Call;)V
    .registers 4
    .param p1, "call"    # Landroid/telecom/Call;

    .line 462
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 463
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    .line 464
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    goto :goto_6

    .line 465
    :cond_16
    return-void
.end method

.method private greylist-max-o fireCanAddCallChanged(Z)V
    .registers 4
    .param p1, "canAddCall"    # Z

    .line 481
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 482
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCanAddCallChanged(Landroid/telecom/Phone;Z)V

    .line 483
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    goto :goto_6

    .line 484
    :cond_16
    return-void
.end method

.method private greylist-max-o fireSilenceRinger()V
    .registers 3

    .line 487
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 488
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Phone$Listener;->onSilenceRinger(Landroid/telecom/Phone;)V

    .line 489
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    goto :goto_6

    .line 490
    :cond_16
    return-void
.end method


# virtual methods
.method public final whitelist addListener(Landroid/telecom/Phone$Listener;)V
    .registers 3
    .param p1, "listener"    # Landroid/telecom/Phone$Listener;

    .line 323
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method public final whitelist canAddCall()Z
    .registers 2

    .line 352
    iget-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    return v0
.end method

.method final greylist-max-o destroy()V
    .registers 6

    .line 306
    iget-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call;

    .line 307
    .local v1, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    .line 308
    .local v2, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-eqz v2, :cond_1b

    .line 309
    invoke-virtual {v2}, Landroid/telecom/InCallService$VideoCall;->destroy()V

    .line 311
    :cond_1b
    invoke-virtual {v1}, Landroid/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_25

    .line 312
    invoke-virtual {v1}, Landroid/telecom/Call;->internalSetDisconnected()V

    .line 314
    .end local v1    # "call":Landroid/telecom/Call;
    .end local v2    # "videoCall":Landroid/telecom/InCallService$VideoCall;
    :cond_25
    goto :goto_6

    .line 315
    :cond_26
    return-void
.end method

.method public final whitelist getAudioState()Landroid/telecom/AudioState;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 443
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final whitelist getCallAudioState()Landroid/telecom/CallAudioState;
    .registers 2

    .line 452
    iget-object v0, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method blacklist getCallById(Ljava/lang/String;)Landroid/telecom/Call;
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Landroid/telecom/Phone;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_3
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call;

    monitor-exit v0

    return-object v1

    .line 231
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public final whitelist getCalls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Landroid/telecom/Phone;->mUnmodifiableCalls:Ljava/util/List;

    return-object v0
.end method

.method final greylist-max-o internalAddCall(Landroid/telecom/ParcelableCall;)V
    .registers 10
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .line 158
    iget v0, p0, Landroid/telecom/Phone;->mTargetSdkVersion:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_17

    .line 159
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_17

    .line 160
    const-string v0, "Skipping adding audio processing call for sdk compatibility"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    return-void

    .line 164
    :cond_17
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 165
    .local v0, "call":Landroid/telecom/Call;
    if-nez v0, :cond_61

    .line 166
    new-instance v1, Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 167
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v5

    iget-object v6, p0, Landroid/telecom/Phone;->mCallingPackage:Ljava/lang/String;

    iget v7, p0, Landroid/telecom/Phone;->mTargetSdkVersion:I

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/telecom/Call;-><init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;ILjava/lang/String;I)V

    .line 169
    .end local v0    # "call":Landroid/telecom/Call;
    .local v1, "call":Landroid/telecom/Call;
    iget-object v3, v2, Landroid/telecom/Phone;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 170
    :try_start_38
    iget-object v0, v2, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, v2, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_5e

    .line 174
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    .line 175
    iget-object v0, v2, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v1, p1, v0}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    .line 176
    invoke-direct {p0, v1}, Landroid/telecom/Phone;->fireCallAdded(Landroid/telecom/Call;)V

    .line 177
    invoke-virtual {v1}, Landroid/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_5c

    .line 178
    invoke-virtual {p0, v1}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 185
    :cond_5c
    move-object v0, v1

    goto :goto_77

    .line 172
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0

    .line 181
    .end local v1    # "call":Landroid/telecom/Call;
    .restart local v0    # "call":Landroid/telecom/Call;
    :cond_61
    move-object v2, p0

    const-string v1, "Call %s added, but it was already present"

    invoke-virtual {v0}, Landroid/telecom/Call;->internalGetCallId()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v1, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    .line 183
    iget-object v1, v2, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    .line 185
    :goto_77
    return-void
.end method

.method final greylist-max-o internalBringToForeground(Z)V
    .registers 2
    .param p1, "showDialpad"    # Z

    .line 253
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireBringToForeground(Z)V

    .line 254
    return-void
.end method

.method final greylist-max-o internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 3
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;

    .line 242
    iget-object v0, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 243
    iput-object p1, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 244
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 246
    :cond_d
    return-void
.end method

.method final greylist-max-o internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;
    .registers 3
    .param p1, "telecomId"    # Ljava/lang/String;

    .line 249
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o internalOnConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "telecomId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 268
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 269
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_9

    .line 270
    invoke-virtual {v0, p2, p3}, Landroid/telecom/Call;->internalOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 272
    :cond_9
    return-void
.end method

.method final greylist-max-o internalOnHandoverComplete(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 296
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 297
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_9

    .line 298
    invoke-virtual {v0}, Landroid/telecom/Call;->internalOnHandoverComplete()V

    .line 300
    :cond_9
    return-void
.end method

.method final greylist-max-o internalOnHandoverFailed(Ljava/lang/String;I)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "error"    # I

    .line 289
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 290
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_9

    .line 291
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalOnHandoverFailed(I)V

    .line 293
    :cond_9
    return-void
.end method

.method final greylist-max-o internalOnRttInitiationFailure(Ljava/lang/String;I)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 282
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 283
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_9

    .line 284
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalOnRttInitiationFailure(I)V

    .line 286
    :cond_9
    return-void
.end method

.method final greylist-max-o internalOnRttUpgradeRequest(Ljava/lang/String;I)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "requestId"    # I

    .line 275
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 276
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_9

    .line 277
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalOnRttUpgradeRequest(I)V

    .line 279
    :cond_9
    return-void
.end method

.method final greylist-max-o internalRemoveCall(Landroid/telecom/Call;)V
    .registers 5
    .param p1, "call"    # Landroid/telecom/Call;

    .line 188
    iget-object v0, p0, Landroid/telecom/Phone;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/Call;->internalGetCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 191
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 193
    invoke-virtual {p1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 194
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-eqz v0, :cond_1b

    .line 195
    invoke-virtual {v0}, Landroid/telecom/InCallService$VideoCall;->destroy()V

    .line 197
    :cond_1b
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCallRemoved(Landroid/telecom/Call;)V

    .line 198
    return-void

    .line 191
    .end local v0    # "videoCall":Landroid/telecom/InCallService$VideoCall;
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method final greylist-max-o internalSetCanAddCall(Z)V
    .registers 3
    .param p1, "canAddCall"    # Z

    .line 257
    iget-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    if-eq v0, p1, :cond_9

    .line 258
    iput-boolean p1, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    .line 259
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCanAddCallChanged(Z)V

    .line 261
    :cond_9
    return-void
.end method

.method final greylist-max-o internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "telecomId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .line 235
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 236
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_9

    .line 237
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalSetPostDialWait(Ljava/lang/String;)V

    .line 239
    :cond_9
    return-void
.end method

.method final greylist-max-o internalSilenceRinger()V
    .registers 1

    .line 264
    invoke-direct {p0}, Landroid/telecom/Phone;->fireSilenceRinger()V

    .line 265
    return-void
.end method

.method final greylist-max-o internalUpdateCall(Landroid/telecom/ParcelableCall;)V
    .registers 6
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .line 201
    iget v0, p0, Landroid/telecom/Phone;->mTargetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_25

    .line 202
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_25

    .line 203
    const-string/jumbo v0, "removing audio processing call during update for sdk compatibility"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 205
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_24

    .line 206
    invoke-virtual {p0, v0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 208
    :cond_24
    return-void

    .line 211
    .end local v0    # "call":Landroid/telecom/Call;
    :cond_25
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 212
    .restart local v0    # "call":Landroid/telecom/Call;
    if-eqz v0, :cond_38

    .line 213
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    .line 214
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    goto :goto_55

    .line 220
    :cond_38
    iget v3, p0, Landroid/telecom/Phone;->mTargetSdkVersion:I

    if-ge v3, v2, :cond_55

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4b

    .line 221
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_55

    .line 222
    :cond_4b
    const-string v2, "adding call during update for sdk compatibility"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    .line 226
    :cond_55
    :goto_55
    return-void
.end method

.method public final whitelist removeListener(Landroid/telecom/Phone$Listener;)V
    .registers 3
    .param p1, "listener"    # Landroid/telecom/Phone$Listener;

    .line 332
    if-eqz p1, :cond_7

    .line 333
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 335
    :cond_7
    return-void
.end method

.method public whitelist requestBluetoothAudio(Ljava/lang/String;)V
    .registers 3
    .param p1, "bluetoothAddress"    # Ljava/lang/String;

    .line 384
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->requestBluetoothAudio(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public blacklist requestCallEndpointChange(Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "endpoint"    # Landroid/telecom/CallEndpoint;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/CallEndpoint;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallEndpointException;",
            ">;)V"
        }
    .end annotation

    .line 399
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/telecom/CallEndpointException;>;"
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telecom/InCallAdapter;->requestCallEndpointChange(Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 400
    return-void
.end method

.method public final whitelist setAudioRoute(I)V
    .registers 3
    .param p1, "route"    # I

    .line 372
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->setAudioRoute(I)V

    .line 373
    return-void
.end method

.method public final whitelist setMuted(Z)V
    .registers 3
    .param p1, "state"    # Z

    .line 362
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->mute(Z)V

    .line 363
    return-void
.end method

.method public final greylist-max-p setProximitySensorOff(Z)V
    .registers 3
    .param p1, "screenOnImmediately"    # Z

    .line 432
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->turnProximitySensorOff(Z)V

    .line 433
    return-void
.end method

.method public final greylist-max-p setProximitySensorOn()V
    .registers 2

    .line 414
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->turnProximitySensorOn()V

    .line 415
    return-void
.end method
