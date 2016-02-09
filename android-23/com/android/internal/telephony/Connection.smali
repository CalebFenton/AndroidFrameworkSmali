.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialListener;,
        Lcom/android/internal/telephony/Connection$Listener;,
        Lcom/android/internal/telephony/Connection$ListenerBase;,
        Lcom/android/internal/telephony/Connection$PostDialState;
    }
.end annotation


# static fields
.field public static final AUDIO_QUALITY_HIGH_DEFINITION:I = 0x2

.field public static final AUDIO_QUALITY_STANDARD:I = 0x1

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mAddress:Ljava/lang/String;

.field private mAudioQuality:I

.field private mCallSubstate:I

.field protected mCnapName:Ljava/lang/String;

.field protected mCnapNamePresentation:I

.field protected mConnectTime:J

.field protected mConnectTimeReal:J

.field protected mConvertedNumber:Ljava/lang/String;

.field protected mCreateTime:J

.field protected mDialString:Ljava/lang/String;

.field protected mDuration:J

.field protected mHoldingStartTime:J

.field protected mIsIncoming:Z

.field private mIsWifi:Z

.field public mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalVideoCapable:Z

.field protected mNumberConverted:Z

.field protected mNumberPresentation:I

.field protected mOrigConnection:Lcom/android/internal/telephony/Connection;

.field private mPostDialListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection$PostDialListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPreHandoverState:Lcom/android/internal/telephony/Call$State;

.field private mRemoteVideoCapable:Z

.field mUserData:Ljava/lang/Object;

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 117
    const-string/jumbo v0, "Connection"

    #@3
    sput-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    #@5
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 90
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    #@6
    .line 93
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    #@8
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@f
    .line 112
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    #@11
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@16
    .line 114
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    #@19
    .line 127
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@1b
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@1d
    .line 34
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    #@0
    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 492
    return-void
.end method

.method public final addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 386
    :cond_0
    return-void
.end method

.method public abstract cancelPostDial()V
.end method

.method protected final clearPostDialListeners()V
    .locals 1

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 396
    return-void
.end method

.method public clearUserData()V
    .locals 1

    #@0
    .prologue
    .line 383
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    #@3
    .line 382
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAudioQuality()I
    .locals 1

    #@0
    .prologue
    .line 556
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    #@2
    return v0
.end method

.method public abstract getCall()Lcom/android/internal/telephony/Call;
.end method

.method public getCallSubstate()I
    .locals 1

    #@0
    .prologue
    .line 566
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    #@2
    return v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    #@0
    .prologue
    .line 164
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    #@2
    return v0
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 310
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    #@4
    move-result-object v0

    #@5
    .line 312
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    #@7
    .line 313
    return-object v1

    #@8
    .line 315
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConferenceParticipants()Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getConnectTime()J
    .locals 2

    #@0
    .prologue
    .line 189
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    #@2
    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    #@0
    .prologue
    .line 208
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    #@2
    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    #@0
    .prologue
    .line 179
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    #@2
    return-wide v0
.end method

.method public abstract getDisconnectCause()I
.end method

.method public abstract getDisconnectTime()J
.end method

.method public getDurationMillis()J
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 225
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 226
    return-wide v2

    #@9
    .line 227
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    #@b
    cmp-long v0, v0, v2

    #@d
    if-nez v0, :cond_1

    #@f
    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@12
    move-result-wide v0

    #@13
    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    #@15
    sub-long/2addr v0, v2

    #@16
    return-wide v0

    #@17
    .line 230
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    #@19
    return-wide v0
.end method

.method public abstract getHoldDurationMillis()J
.end method

.method public getHoldingStartTime()J
    .locals 2

    #@0
    .prologue
    .line 240
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    #@2
    return-wide v0
.end method

.method public abstract getNumberPresentation()I
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    #@0
    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    #@2
    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
.end method

.method public abstract getPreciseDisconnectCause()I
.end method

.method public abstract getRemainingPostDialString()Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    #@0
    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    .line 288
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    #@6
    .line 289
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@8
    return-object v1

    #@9
    .line 291
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;
    .locals 1

    #@0
    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@2
    return-object v0
.end method

.method public abstract getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public abstract getVendorDisconnectCause()Ljava/lang/String;
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    #@0
    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@2
    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 511
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    #@2
    return v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public isAlive()Z
    .locals 1

    #@0
    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isIncoming()Z
    .locals 1

    #@0
    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    #@2
    return v0
.end method

.method public isLocalVideoCapable()Z
    .locals 1

    #@0
    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    #@2
    return v0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRemoteVideoCapable()Z
    .locals 1

    #@0
    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    #@2
    return v0
.end method

.method public isRinging()Z
    .locals 1

    #@0
    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isWifi()Z
    .locals 1

    #@0
    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    #@2
    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 472
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 473
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@7
    .line 474
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    #@d
    .line 475
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    #@13
    .line 476
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    #@19
    .line 477
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    #@1f
    .line 478
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    #@22
    move-result v0

    #@23
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    #@25
    .line 479
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    #@28
    move-result v0

    #@29
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    #@2b
    .line 480
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    #@2e
    move-result-wide v0

    #@2f
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    #@31
    .line 481
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    #@34
    move-result-wide v0

    #@35
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    #@37
    .line 482
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    #@3a
    move-result-wide v0

    #@3b
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    #@3d
    .line 483
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getHoldingStartTime()J

    #@40
    move-result-wide v0

    #@41
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    #@43
    .line 484
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigConnection()Lcom/android/internal/telephony/Connection;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    #@49
    .line 471
    return-void
.end method

.method protected final notifyPostDialListeners()V
    .locals 4

    #@0
    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    #@3
    move-result-object v2

    #@4
    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 402
    new-instance v2, Ljava/util/ArrayList;

    #@a
    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@c
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/internal/telephony/Connection$PostDialListener;

    #@1f
    .line 403
    .local v0, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialWait()V

    #@22
    goto :goto_0

    #@23
    .line 400
    .end local v0    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected final notifyPostDialListenersNextChar(C)V
    .locals 4
    .param p1, "c"    # C

    #@0
    .prologue
    .line 409
    new-instance v2, Ljava/util/ArrayList;

    #@2
    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@4
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/internal/telephony/Connection$PostDialListener;

    #@17
    .line 410
    .local v0, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialChar(C)V

    #@1a
    goto :goto_0

    #@1b
    .line 408
    .end local v0    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    :cond_0
    return-void
.end method

.method public onConferenceMergeFailed()V
    .locals 3

    #@0
    .prologue
    .line 689
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
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
    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    #@12
    .line 690
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceMergedFailed()V

    #@15
    goto :goto_0

    #@16
    .line 688
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 700
    return-void
.end method

.method public abstract proceedAfterWaitChar()V
.end method

.method public abstract proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public final removeListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    .line 501
    return-void
.end method

.method public final removePostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    .line 392
    return-void
.end method

.method public abstract separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public setAudioQuality(I)V
    .locals 3
    .param p1, "audioQuality"    # I

    #@0
    .prologue
    .line 625
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    #@2
    .line 626
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    #@14
    .line 627
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onAudioQualityChanged(I)V

    #@19
    goto :goto_0

    #@1a
    .line 624
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setCallSubstate(I)V
    .locals 3
    .param p1, "callSubstate"    # I

    #@0
    .prologue
    .line 638
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    #@2
    .line 639
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    #@14
    .line 640
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onCallSubstateChanged(I)V

    #@19
    goto :goto_0

    #@1a
    .line 637
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setConnectTime(J)V
    .locals 1
    .param p1, "connectTime"    # J

    #@0
    .prologue
    .line 198
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    #@2
    .line 197
    return-void
.end method

.method public setConverted(Ljava/lang/String;)V
    .locals 1
    .param p1, "oriNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 657
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    #@3
    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    #@7
    .line 659
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    #@9
    .line 660
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    #@b
    .line 656
    return-void
.end method

.method public setLocalVideoCapable(Z)V
    .locals 3
    .param p1, "capable"    # Z

    #@0
    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    #@2
    .line 590
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    #@14
    .line 591
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onLocalVideoCapabilityChanged(Z)V

    #@19
    goto :goto_0

    #@1a
    .line 588
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setRemoteVideoCapable(Z)V
    .locals 3
    .param p1, "capable"    # Z

    #@0
    .prologue
    .line 601
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    #@2
    .line 602
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    #@14
    .line 603
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onRemoteVideoCapabilityChanged(Z)V

    #@19
    goto :goto_0

    #@1a
    .line 600
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userdata"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    #@2
    .line 350
    return-void
.end method

.method public setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    #@0
    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@2
    .line 651
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    #@14
    .line 652
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    #@19
    goto :goto_0

    #@1a
    .line 649
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setVideoState(I)V
    .locals 3
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 577
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    #@2
    .line 578
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    #@14
    .line 579
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoStateChanged(I)V

    #@19
    goto :goto_0

    #@1a
    .line 576
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setWifi(Z)V
    .locals 3
    .param p1, "isWifi"    # Z

    #@0
    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    #@2
    .line 614
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    #@14
    .line 615
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onWifiChanged(Z)V

    #@19
    goto :goto_0

    #@1a
    .line 612
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 711
    .local v0, "str":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    #@9
    const/4 v2, 0x3

    #@a
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 712
    const-string/jumbo v1, "addr: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 713
    const-string/jumbo v2, " pres.: "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    #@29
    move-result v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 714
    const-string/jumbo v2, " dial: "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 715
    const-string/jumbo v2, " postdial: "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 716
    const-string/jumbo v2, " cnap name: "

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    .line 717
    const-string/jumbo v2, "("

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    #@65
    move-result v2

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    const-string/jumbo v2, ")"

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 719
    :cond_0
    const-string/jumbo v1, " incoming: "

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    #@7a
    move-result v2

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    .line 720
    const-string/jumbo v2, " state: "

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@89
    move-result-object v2

    #@8a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    .line 721
    const-string/jumbo v2, " post dial state: "

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    .line 722
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    return-object v1
.end method

.method public updateConferenceParticipants(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 669
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
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
    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    #@12
    .line 670
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceParticipantsChanged(Ljava/util/List;)V

    #@15
    goto :goto_0

    #@16
    .line 668
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public updateMultipartyState(Z)V
    .locals 3
    .param p1, "isMultiparty"    # Z

    #@0
    .prologue
    .line 680
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
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
    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    #@12
    .line 681
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onMultipartyStateChanged(Z)V

    #@15
    goto :goto_0

    #@16
    .line 679
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method
