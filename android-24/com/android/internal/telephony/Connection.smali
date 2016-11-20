.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$Capability;,
        Lcom/android/internal/telephony/Connection$Listener;,
        Lcom/android/internal/telephony/Connection$ListenerBase;,
        Lcom/android/internal/telephony/Connection$PostDialListener;,
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

.field protected mCause:I

.field protected mCnapName:Ljava/lang/String;

.field protected mCnapNamePresentation:I

.field protected mConnectTime:J

.field protected mConnectTimeReal:J

.field private mConnectionCapabilities:I

.field protected mConvertedNumber:Ljava/lang/String;

.field protected mCreateTime:J

.field protected mDialString:Ljava/lang/String;

.field protected mDuration:J

.field private mExtras:Landroid/os/Bundle;

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

.field protected mNextPostDialChar:I

.field protected mNumberConverted:Z

.field protected mNumberPresentation:I

.field protected mOrigConnection:Lcom/android/internal/telephony/Connection;

.field private mPhoneType:I

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

.field protected mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field protected mPostDialString:Ljava/lang/String;

.field public mPreHandoverState:Lcom/android/internal/telephony/Call$State;

.field private mTelecomCallId:Ljava/lang/String;

.field mUserData:Ljava/lang/Object;

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 175
    const-string/jumbo v0, "Connection"

    #@3
    sput-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    #@5
    .line 36
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2
    .param p1, "phoneType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 142
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    #@7
    .line 145
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    #@9
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@10
    .line 164
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    #@12
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    #@15
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@17
    .line 166
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    #@19
    .line 172
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    #@1b
    .line 173
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@1f
    .line 184
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@23
    .line 189
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    #@25
    .line 188
    return-void
.end method

.method public static addCapability(II)I
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 647
    or-int v0, p0, p1

    #@2
    return v0
.end method

.method public static removeCapability(II)I
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 658
    not-int v0, p1

    #@1
    and-int/2addr v0, p0

    #@2
    return v0
.end method


# virtual methods
.method public final addListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    #@0
    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 609
    return-void
.end method

.method public final addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    #@0
    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 468
    :cond_0
    return-void
.end method

.method public abstract cancelPostDial()V
.end method

.method protected final clearPostDialListeners()V
    .locals 1

    #@0
    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 478
    return-void
.end method

.method public clearUserData()V
    .locals 1

    #@0
    .prologue
    .line 465
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    #@3
    .line 464
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAudioQuality()I
    .locals 1

    #@0
    .prologue
    .line 685
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
    .line 695
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    #@2
    return v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    #@0
    .prologue
    .line 244
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
    .line 392
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    #@4
    move-result-object v0

    #@5
    .line 394
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    #@7
    .line 395
    return-object v1

    #@8
    .line 397
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
    .line 269
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    #@2
    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    #@0
    .prologue
    .line 288
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    #@2
    return-wide v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 636
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    #@2
    return v0
.end method

.method public getConnectionExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    #@0
    .prologue
    .line 259
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    #@2
    return-wide v0
.end method

.method public getDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 337
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    #@2
    return v0
.end method

.method public abstract getDisconnectTime()J
.end method

.method public getDurationMillis()J
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 305
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 306
    return-wide v2

    #@9
    .line 307
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    #@b
    cmp-long v0, v0, v2

    #@d
    if-nez v0, :cond_1

    #@f
    .line 308
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
    .line 310
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
    .line 320
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
    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    #@2
    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 235
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    #@0
    .prologue
    .line 869
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    #@2
    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    #@0
    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    return-object v0
.end method

.method public abstract getPreciseDisconnectCause()I
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@8
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 509
    :cond_0
    const-string/jumbo v0, ""

    #@f
    return-object v0

    #@10
    .line 507
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    #@16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@19
    move-result v0

    #@1a
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    #@1c
    if-le v0, v1, :cond_0

    #@1e
    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    #@20
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    #@0
    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    .line 370
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    #@6
    .line 371
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@8
    return-object v1

    #@9
    .line 373
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
    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@2
    return-object v0
.end method

.method public getTelecomCallId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mTelecomCallId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 425
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
    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@2
    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 628
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
    .line 409
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

.method public isConferenceHost()Z
    .locals 1

    #@0
    .prologue
    .line 578
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isIncoming()Z
    .locals 1

    #@0
    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    #@2
    return v0
.end method

.method public isMemberOfPeerConference()Z
    .locals 1

    #@0
    .prologue
    .line 588
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRinging()Z
    .locals 1

    #@0
    .prologue
    .line 417
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
    .line 667
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    #@2
    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 592
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 593
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@7
    .line 594
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    #@d
    .line 595
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    #@13
    .line 596
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    #@19
    .line 597
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    #@1c
    move-result-wide v0

    #@1d
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    #@1f
    .line 598
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getHoldingStartTime()J

    #@22
    move-result-wide v0

    #@23
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    #@25
    .line 599
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigConnection()Lcom/android/internal/telephony/Connection;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    #@2b
    .line 600
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    #@2d
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    #@2f
    .line 601
    iget v0, p1, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    #@31
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    #@33
    .line 591
    return-void
.end method

.method protected final notifyPostDialListeners()V
    .locals 4

    #@0
    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    #@3
    move-result-object v2

    #@4
    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 484
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
    .line 485
    .local v0, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialWait()V

    #@22
    goto :goto_0

    #@23
    .line 482
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
    .line 491
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
    .line 492
    .local v0, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialChar(C)V

    #@1a
    goto :goto_0

    #@1b
    .line 490
    .end local v0    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    :cond_0
    return-void
.end method

.method public onConferenceMergeFailed()V
    .locals 3

    #@0
    .prologue
    .line 835
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
    .line 836
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceMergedFailed()V

    #@15
    goto :goto_0

    #@16
    .line 834
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onDisconnect(I)Z
    .locals 1
    .param p1, "cause"    # I

    #@0
    .prologue
    .line 532
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 855
    return-void
.end method

.method public onExitedEcmMode()V
    .locals 3

    #@0
    .prologue
    .line 844
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
    .line 845
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onExitedEcmMode()V

    #@15
    goto :goto_0

    #@16
    .line 843
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public abstract proceedAfterWaitChar()V
.end method

.method public abstract proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public pullExternalCall()V
    .locals 0

    #@0
    .prologue
    .line 862
    return-void
.end method

.method public final removeListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    #@0
    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    .line 618
    return-void
.end method

.method public final removePostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    .line 474
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
    .line 746
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    #@2
    .line 747
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
    .line 748
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onAudioQualityChanged(I)V

    #@19
    goto :goto_0

    #@1a
    .line 745
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setCallSubstate(I)V
    .locals 3
    .param p1, "callSubstate"    # I

    #@0
    .prologue
    .line 784
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    #@2
    .line 785
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
    .line 786
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onCallSubstateChanged(I)V

    #@19
    goto :goto_0

    #@1a
    .line 783
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setConnectTime(J)V
    .locals 1
    .param p1, "connectTime"    # J

    #@0
    .prologue
    .line 278
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    #@2
    .line 277
    return-void
.end method

.method public setConnectionCapabilities(I)V
    .locals 3
    .param p1, "capabilities"    # I

    #@0
    .prologue
    .line 720
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    #@2
    if-eq v2, p1, :cond_0

    #@4
    .line 721
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    #@6
    .line 722
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    #@18
    .line 723
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    #@1a
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onConnectionCapabilitiesChanged(I)V

    #@1d
    goto :goto_0

    #@1e
    .line 719
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setConnectionExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 759
    if-eqz p1, :cond_0

    #@3
    .line 760
    new-instance v2, Landroid/os/Bundle;

    #@5
    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@8
    iput-object v2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    #@a
    .line 764
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    #@1c
    .line 765
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    #@1e
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onExtrasChanged(Landroid/os/Bundle;)V

    #@21
    goto :goto_1

    #@22
    .line 762
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    iput-object v2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    #@24
    goto :goto_0

    #@25
    .line 758
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setConverted(Ljava/lang/String;)V
    .locals 1
    .param p1, "oriNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 803
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    #@3
    .line 804
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    #@7
    .line 805
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    #@9
    .line 806
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    #@b
    .line 802
    return-void
.end method

.method public setTelecomCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "telecomCallId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mTelecomCallId:Ljava/lang/String;

    #@2
    .line 207
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userdata"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    #@2
    .line 432
    return-void
.end method

.method public setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    #@0
    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@2
    .line 797
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
    .line 798
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    #@19
    goto :goto_0

    #@1a
    .line 795
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setVideoState(I)V
    .locals 3
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 706
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    #@2
    .line 707
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
    .line 708
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoStateChanged(I)V

    #@19
    goto :goto_0

    #@1a
    .line 705
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setWifi(Z)V
    .locals 3
    .param p1, "isWifi"    # Z

    #@0
    .prologue
    .line 734
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    #@2
    .line 735
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
    .line 736
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onWifiChanged(Z)V

    #@19
    goto :goto_0

    #@1a
    .line 733
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 880
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " callId: "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 881
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    #@17
    const/4 v2, 0x3

    #@18
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 882
    const-string/jumbo v1, "addr: "

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 883
    const-string/jumbo v2, " pres.: "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    #@37
    move-result v2

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 884
    const-string/jumbo v2, " dial: "

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    .line 885
    const-string/jumbo v2, " postdial: "

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    .line 886
    const-string/jumbo v2, " cnap name: "

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    .line 887
    const-string/jumbo v2, "("

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    #@73
    move-result v2

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    const-string/jumbo v2, ")"

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    .line 889
    :cond_0
    const-string/jumbo v1, " incoming: "

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    #@88
    move-result v2

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    .line 890
    const-string/jumbo v2, " state: "

    #@90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@97
    move-result-object v2

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    .line 891
    const-string/jumbo v2, " post dial state: "

    #@9f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    #@a6
    move-result-object v2

    #@a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    .line 892
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v1

    #@ae
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
    .line 815
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
    .line 816
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceParticipantsChanged(Ljava/util/List;)V

    #@15
    goto :goto_0

    #@16
    .line 814
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public updateMultipartyState(Z)V
    .locals 3
    .param p1, "isMultiparty"    # Z

    #@0
    .prologue
    .line 826
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
    .line 827
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onMultipartyStateChanged(Z)V

    #@15
    goto :goto_0

    #@16
    .line 825
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method
