.class public Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
.super Lcom/android/internal/telephony/Call;
.source "ImsPhoneCall.java"


# static fields
.field public static final blacklist CONTEXT_BACKGROUND:Ljava/lang/String; = "BG"

.field public static final blacklist CONTEXT_FOREGROUND:Ljava/lang/String; = "FG"

.field public static final blacklist CONTEXT_HANDOVER:Ljava/lang/String; = "HO"

.field public static final blacklist CONTEXT_RINGING:Ljava/lang/String; = "RG"

.field public static final blacklist CONTEXT_UNKNOWN:Ljava/lang/String; = "UK"

.field private static final blacklist DBG:Z

.field private static final blacklist VDBG:Z


# instance fields
.field private final blacklist mCallContext:Ljava/lang/String;

.field private blacklist mIsRingbackTonePlaying:Z

.field blacklist mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const/4 v0, 0x3

    .line 49
    const-string v1, "ImsPhoneCall"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->DBG:Z

    const/4 v0, 0x2

    .line 50
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    .line 71
    const-string v0, "UK"

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 4

    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 76
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    return-void
.end method

.method static blacklist isLocalTone(Lcom/android/ims/ImsCall;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3d

    .line 368
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 369
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-nez v1, :cond_12

    goto :goto_3d

    .line 373
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    iget-object p0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 375
    iget v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-nez v1, :cond_1d

    const/4 v0, 0x1

    .line 377
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLocalTone: audioDirection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", playRingback="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ImsPhoneCall"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :goto_3d
    return v0
.end method

.method private blacklist maybeChangeRingbackState(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V
    .registers 7

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeChangeRingbackState: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneCall"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    const-string v3, "maybeChangeRingbackState: stop ringback"

    if-ne p2, v0, :cond_4e

    .line 422
    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    if-eqz p2, :cond_34

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/ImsCall;)Z

    move-result p2

    if-nez p2, :cond_34

    .line 423
    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->stopRingbackTone()V

    .line 425
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    return-void

    .line 426
    :cond_34
    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    if-nez p2, :cond_5e

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/ImsCall;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 427
    const-string p1, "maybeChangeRingbackState: start ringback"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->startRingbackTone()V

    const/4 p1, 0x1

    .line 429
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    return-void

    .line 432
    :cond_4e
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    if-eqz p1, :cond_5e

    .line 433
    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->stopRingbackTone()V

    .line 435
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    :cond_5e
    return-void
.end method

.method private blacklist takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .registers 5

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Call;->copyConnectionFrom(Lcom/android/internal/telephony/Call;)V

    .line 483
    iget-object p1, p1, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 484
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 485
    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    goto :goto_10

    :cond_20
    return-void
.end method


# virtual methods
.method public blacklist attach(Lcom/android/internal/telephony/Connection;)V
    .registers 4

    .line 170
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v0, :cond_24

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attach : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " conn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneCall"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->clearDisconnected()V

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Call;->addConnection(Lcom/android/internal/telephony/Connection;)V

    .line 176
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    return-void
.end method

.method public greylist-max-r attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .registers 5

    .line 181
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v0, :cond_28

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attach : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "ImsPhoneCall"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    .line 186
    iput-object p2, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public greylist-max-r attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .registers 3

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method

.method public blacklist connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z
    .registers 7

    .line 198
    iget-object p1, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_54

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :cond_10
    if-ge v2, v0, :cond_23

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 205
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_10

    goto :goto_54

    .line 212
    :cond_23
    monitor-enter p0

    .line 213
    :try_start_24
    sget-object p1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 214
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_51

    .line 215
    sget-boolean p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz p1, :cond_4f

    .line 216
    const-string p1, "ImsPhoneCall"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionDisconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    const/4 p0, 0x1

    return p0

    :catchall_51
    move-exception p1

    .line 214
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p1

    :cond_54
    :goto_54
    return v1
.end method

.method public blacklist detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 4

    .line 227
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v0, :cond_24

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detach : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " conn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneCall"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Call;->removeConnection(Lcom/android/internal/telephony/Connection;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->clearDisconnected()V

    .line 233
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    return-void
.end method

.method public blacklist dispose()V
    .registers 6

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 81
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_8
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_8} :catch_36
    .catchall {:try_start_3 .. :try_end_8} :catchall_1e

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_10
    if-ge v1, v2, :cond_4c

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 88
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    goto :goto_10

    :catchall_1e
    move-exception v2

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_27
    if-ge v1, v3, :cond_35

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 88
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    goto :goto_27

    .line 90
    :cond_35
    throw v2

    .line 86
    :catch_36
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3e
    if-ge v1, v2, :cond_4c

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 88
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    goto :goto_3e

    :cond_4c
    return-void
.end method

.method public blacklist getCallSessionId()Ljava/lang/String;
    .registers 3

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v0, v1

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    :goto_11
    if-nez v0, :cond_14

    return-object v1

    .line 338
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCallType()I
    .registers 2

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 362
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x4

    return p0

    :cond_14
    const/4 p0, 0x2

    return p0
.end method

.method public blacklist getConferenceParticipants()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isConferenceEventPackageEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 160
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_11

    return-object v1

    .line 164
    :cond_11
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getConferenceParticipants()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getConnections()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-super {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 2

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    .line 270
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const/4 v0, 0x0

    .line 272
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object p0
.end method

.method public greylist-max-r getImsCall()Lcom/android/ims/ImsCall;
    .registers 1

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 329
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getServiceType()I
    .registers 2

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 349
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public greylist-max-r hangup()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    return-void
.end method

.method public blacklist hangup(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;I)V

    return-void
.end method

.method blacklist isFull()Z
    .registers 2

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnectionsCount()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMultiparty()Z
    .registers 1

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 115
    :cond_8
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result p0

    return p0
.end method

.method public blacklist isRingbackTonePlaying()Z
    .registers 1

    .line 469
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    return p0
.end method

.method public blacklist maybeChangeRingbackState(Lcom/android/ims/ImsCall;)V
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->maybeChangeRingbackState(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method

.method public blacklist maybeClearRemotelyHeldStatus()V
    .registers 5

    .line 473
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    if-ge v1, v0, :cond_1f

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 474
    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 475
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isHeldByRemote()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 476
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setRemotelyUnheld()V

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public blacklist maybeStopRingback()V
    .registers 2

    .line 462
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    if-eqz v0, :cond_e

    .line 463
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->stopRingbackTone()V

    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    :cond_e
    return-void
.end method

.method greylist-max-r merge(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Lcom/android/internal/telephony/Call$State;)V
    .registers 9

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 299
    const-string v1, "ImsPhoneCall"

    if-eqz v0, :cond_26

    .line 300
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConferenceConnectTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1d

    .line 302
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/Connection;->setConnectTime(J)V

    .line 303
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/Connection;->setConnectTimeReal(J)V

    goto :goto_26

    .line 305
    :cond_1d
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->DBG:Z

    if-eqz v0, :cond_26

    .line 306
    const-string v0, "merge: conference connect time is 0"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_26
    :goto_26
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->DBG:Z

    if-eqz v0, :cond_50

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "merge("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "state = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-void
.end method

.method public greylist-max-r onHangupLocal()V
    .registers 5

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 254
    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 255
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onHangupLocal()V

    goto :goto_9

    .line 257
    :cond_19
    monitor-enter p0

    .line 258
    :try_start_1a
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 259
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    goto :goto_29

    :catchall_27
    move-exception v0

    goto :goto_51

    .line 261
    :cond_29
    :goto_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_27

    .line 262
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v0, :cond_50

    .line 263
    const-string v0, "ImsPhoneCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHangupLocal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-void

    .line 261
    :goto_51
    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_27

    throw v0
.end method

.method public blacklist setMute(Z)V
    .registers 3

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    .line 282
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    :goto_c
    if-eqz p0, :cond_2d

    .line 285
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->setMute(Z)V
    :try_end_11
    .catch Lcom/android/ims/ImsException; {:try_start_e .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMute failed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhoneCall"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void
.end method

.method public blacklist switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .registers 5

    .line 446
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v0, :cond_22

    .line 447
    const-string v0, "ImsPhoneCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchWith : switchCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " withCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_22
    const-class v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    monitor-enter v0

    .line 450
    :try_start_25
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>()V

    .line 451
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 452
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 453
    invoke-direct {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 454
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_3a

    .line 455
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    return-void

    :catchall_3a
    move-exception p0

    .line 454
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    .line 138
    const-string v2, "[ImsPhoneCall "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v2, " state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object p0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_32

    .line 144
    const-string v2, " ERROR_MULTIPLE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v2, :cond_48

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 147
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 151
    :cond_48
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .registers 5

    .line 384
    iget-object p1, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 387
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->maybeChangeRingbackState(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V

    .line 389
    iget-object p2, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 v0, 0x1

    if-eq p3, p2, :cond_11

    sget-object p2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq p3, p2, :cond_11

    .line 390
    iput-object p3, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    goto :goto_17

    .line 392
    :cond_11
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p3, p2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 396
    :goto_17
    sget-boolean p2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz p2, :cond_45

    .line 397
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " --> "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhoneCall"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return v0
.end method
