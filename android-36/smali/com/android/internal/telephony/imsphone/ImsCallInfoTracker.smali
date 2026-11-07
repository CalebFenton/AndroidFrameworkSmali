.class public Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;
.super Ljava/lang/Object;
.source "ImsCallInfoTracker.java"


# instance fields
.field private final blacklist mImsCallInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/internal/telephony/imsphone/ImsCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNextIndex:I

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsCallInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$D_tz1UDB94fY5UBCEc9noYsbYaU(Lcom/android/internal/telephony/imsphone/ImsCallInfo;)Z
    .registers 1

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->shouldIgnoreUpdate()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$fFT5zBfQPuNbKphi8iL96QIObg4(Lcom/android/internal/telephony/imsphone/ImsCallInfo;)V
    .registers 1

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->reset()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gVyCebTc4PMgfSV0PAFDbq6kY90(Lcom/android/internal/telephony/imsphone/ImsCallInfo;)V
    .registers 1

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->onDisconnect()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mNextIndex:I

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist clearAllCallInfo()V
    .registers 3

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 168
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mNextIndex:I
    :try_end_1f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsCallInfoTracker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifyImsCallStatus()V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->sort(Ljava/util/List;)V

    .line 179
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/Phone;->updateImsCallStatus(Ljava/util/List;Landroid/os/Message;)V

    return-void
.end method

.method public static blacklist sort(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsCallInfo;",
            ">;)V"
        }
    .end annotation

    .line 189
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public blacklist addImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 7

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    monitor-enter v0

    .line 65
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 66
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsCallInfo;

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mNextIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mNextIndex:I

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_42

    .line 69
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsCallInfo;

    .line 71
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->init(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 74
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->shouldIgnoreUpdate()Z

    move-result p1

    if-nez p1, :cond_40

    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->notifyImsCallStatus()V

    .line 81
    :cond_40
    monitor-exit v0

    return-void

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_1c

    throw p0
.end method

.method public blacklist clearAllOrphanedConnections()V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->notifyImsCallStatus()V

    .line 147
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->clearAllCallInfo()V

    return-void
.end method

.method public blacklist notifySrvccCompleted()V
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->clearAllCallInfo()V

    .line 157
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->notifyImsCallStatus()V

    return-void
.end method

.method public blacklist updateImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 3

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->updateImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;ZZ)V

    return-void
.end method

.method public blacklist updateImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;ZZ)V
    .registers 6

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsCallInfo;

    if-nez v1, :cond_11

    .line 112
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_49

    .line 115
    :cond_11
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;ZZ)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->notifyImsCallStatus()V

    .line 119
    :cond_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p2

    .line 124
    sget-object p3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq p2, p3, :cond_26

    sget-object p3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, p3, :cond_47

    .line 126
    :cond_26
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->reset()V

    .line 128
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getIndex()I

    move-result p1

    iget p2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mNextIndex:I

    add-int/lit8 p3, p2, -0x1

    if-ge p1, p3, :cond_43

    .line 129
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->sort(Ljava/util/List;)V

    goto :goto_47

    :cond_43
    add-int/lit8 p2, p2, -0x1

    .line 132
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mNextIndex:I

    .line 137
    :cond_47
    :goto_47
    monitor-exit v0

    return-void

    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_f

    throw p0
.end method
