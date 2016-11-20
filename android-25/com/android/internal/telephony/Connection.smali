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

.field private mAllowAddCallDuringVideoCall:Z

.field private mAnsweringDisconnectsActiveCall:Z

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

.field private mIsPulledCall:Z

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

.field private mPulledDialogId:I

.field private mTelecomCallId:Ljava/lang/String;

.field mUserData:Ljava/lang/Object;

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 185
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
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 152
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    #@7
    .line 155
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    #@9
    .line 173
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@10
    .line 174
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    #@12
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    #@15
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@17
    .line 176
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    #@19
    .line 182
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    #@1b
    .line 183
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@1f
    .line 194
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@23
    .line 204
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    #@25
    .line 214
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    #@27
    .line 213
    return-void
.end method

.method public static addCapability(II)I
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 679
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
    .line 690
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
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 634
    return-void
.end method

.method public final addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    #@0
    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 493
    :cond_0
    return-void
.end method

.method public abstract cancelPostDial()V
.end method

.method protected final clearPostDialListeners()V
    .locals 1

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 503
    return-void
.end method

.method public clearUserData()V
    .locals 1

    #@0
    .prologue
    .line 490
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    #@3
    .line 489
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAudioQuality()I
    .locals 1

    #@0
    .prologue
    .line 717
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
    .line 727
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    #@2
    return v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    #@0
    .prologue
    .line 269
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
    .line 417
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    #@4
    move-result-object v0

    #@5
    .line 419
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    #@7
    .line 420
    return-object v1

    #@8
    .line 422
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
    .line 294
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    #@2
    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    #@0
    .prologue
    .line 313
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    #@2
    return-wide v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 661
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    #@2
    return v0
.end method

.method public getConnectionExtras()Landroid/os/Bundle;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 807
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@8
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    #@a
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@d
    goto :goto_0
.end method

.method public getCreateTime()J
    .locals 2

    #@0
    .prologue
    .line 284
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    #@2
    return-wide v0
.end method

.method public getDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 362
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
    .line 330
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 331
    return-wide v2

    #@9
    .line 332
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    #@b
    cmp-long v0, v0, v2

    #@d
    if-nez v0, :cond_1

    #@f
    .line 333
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
    .line 335
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
    .line 345
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
    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    #@2
    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 260
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    #@0
    .prologue
    .line 992
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    #@2
    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    #@0
    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    return-object v0
.end method

.method public abstract getPreciseDisconnectCause()I
.end method

.method public getPulledDialogId()I
    .locals 1

    #@0
    .prologue
    .line 865
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mPulledDialogId:I

    #@2
    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@8
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 534
    :cond_0
    const-string/jumbo v0, ""

    #@f
    return-object v0

    #@10
    .line 532
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 533
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
    .line 537
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
    .line 393
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    .line 395
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    #@6
    .line 396
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@8
    return-object v1

    #@9
    .line 398
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
    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@2
    return-object v0
.end method

.method public getTelecomCallId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 224
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
    .line 450
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
    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@2
    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 653
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

.method public hasCapabilities(I)Z
    .locals 1
    .param p1, "connectionCapabilities"    # I

    #@0
    .prologue
    .line 668
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    #@2
    and-int/2addr v0, p1

    #@3
    if-ne v0, p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isActiveCallDisconnectedOnAnswer()Z
    .locals 1

    #@0
    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAnsweringDisconnectsActiveCall:Z

    #@2
    return v0
.end method

.method public isAlive()Z
    .locals 1

    #@0
    .prologue
    .line 434
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
    .line 603
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isIncoming()Z
    .locals 1

    #@0
    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    #@2
    return v0
.end method

.method public isMemberOfPeerConference()Z
    .locals 1

    #@0
    .prologue
    .line 613
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isPulledCall()Z
    .locals 1

    #@0
    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    #@2
    return v0
.end method

.method public isRinging()Z
    .locals 1

    #@0
    .prologue
    .line 442
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
    .line 699
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    #@2
    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 617
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 618
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@7
    .line 619
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    #@d
    .line 620
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    #@13
    .line 621
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    #@19
    .line 622
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    #@1c
    move-result-wide v0

    #@1d
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    #@1f
    .line 623
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getHoldingStartTime()J

    #@22
    move-result-wide v0

    #@23
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    #@25
    .line 624
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigConnection()Lcom/android/internal/telephony/Connection;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    #@2b
    .line 625
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    #@2d
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    #@2f
    .line 626
    iget v0, p1, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    #@31
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    #@33
    .line 616
    return-void
.end method

.method protected final notifyPostDialListeners()V
    .locals 4

    #@0
    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    #@3
    move-result-object v2

    #@4
    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 509
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
    .line 510
    .local v0, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialWait()V

    #@22
    goto :goto_0

    #@23
    .line 507
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
    .line 516
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
    .line 517
    .local v0, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialChar(C)V

    #@1a
    goto :goto_0

    #@1b
    .line 515
    .end local v0    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    :cond_0
    return-void
.end method

.method public onCallPullFailed(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "externalConnection"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 949
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
    .line 950
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onCallPullFailed(Lcom/android/internal/telephony/Connection;)V

    #@15
    goto :goto_0

    #@16
    .line 948
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onConferenceMergeFailed()V
    .locals 3

    #@0
    .prologue
    .line 926
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
    .line 927
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceMergedFailed()V

    #@15
    goto :goto_0

    #@16
    .line 925
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 967
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
    .line 968
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Connection$Listener;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@15
    goto :goto_0

    #@16
    .line 966
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onDisconnect(I)Z
    .locals 1
    .param p1, "cause"    # I

    #@0
    .prologue
    .line 557
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 978
    return-void
.end method

.method public onExitedEcmMode()V
    .locals 3

    #@0
    .prologue
    .line 935
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
    .line 936
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onExitedEcmMode()V

    #@15
    goto :goto_0

    #@16
    .line 934
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onHandoverToWifiFailed()V
    .locals 3

    #@0
    .prologue
    .line 958
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
    .line 959
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onHandoverToWifiFailed()V

    #@15
    goto :goto_0

    #@16
    .line 957
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
    .line 985
    return-void
.end method

.method public final removeListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    #@0
    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    .line 643
    return-void
.end method

.method public final removePostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    .line 499
    return-void
.end method

.method public abstract separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public setActiveCallDisconnectedOnAnswer(Z)V
    .locals 0
    .param p1, "answeringDisconnectsActiveCall"    # Z

    #@0
    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAnsweringDisconnectsActiveCall:Z

    #@2
    .line 826
    return-void
.end method

.method public setAllowAddCallDuringVideoCall(Z)V
    .locals 0
    .param p1, "allowAddCallDuringVideoCall"    # Z

    #@0
    .prologue
    .line 835
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAllowAddCallDuringVideoCall:Z

    #@2
    .line 834
    return-void
.end method

.method public setAudioQuality(I)V
    .locals 3
    .param p1, "audioQuality"    # I

    #@0
    .prologue
    .line 778
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    #@2
    .line 779
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
    .line 780
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onAudioQualityChanged(I)V

    #@19
    goto :goto_0

    #@1a
    .line 777
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setCallSubstate(I)V
    .locals 3
    .param p1, "callSubstate"    # I

    #@0
    .prologue
    .line 875
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    #@2
    .line 876
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
    .line 877
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onCallSubstateChanged(I)V

    #@19
    goto :goto_0

    #@1a
    .line 874
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setConnectTime(J)V
    .locals 1
    .param p1, "connectTime"    # J

    #@0
    .prologue
    .line 303
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    #@2
    .line 302
    return-void
.end method

.method public setConnectionCapabilities(I)V
    .locals 3
    .param p1, "capabilities"    # I

    #@0
    .prologue
    .line 752
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    #@2
    if-eq v2, p1, :cond_0

    #@4
    .line 753
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    #@6
    .line 754
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
    .line 755
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    #@1a
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onConnectionCapabilitiesChanged(I)V

    #@1d
    goto :goto_0

    #@1e
    .line 751
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
    .line 791
    if-eqz p1, :cond_0

    #@3
    .line 792
    new-instance v2, Landroid/os/Bundle;

    #@5
    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@8
    iput-object v2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    #@a
    .line 797
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
    .line 798
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    #@1e
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onExtrasChanged(Landroid/os/Bundle;)V

    #@21
    goto :goto_1

    #@22
    .line 794
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    iput-object v2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    #@24
    goto :goto_0

    #@25
    .line 790
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setConverted(Ljava/lang/String;)V
    .locals 1
    .param p1, "oriNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 894
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    #@3
    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    #@7
    .line 896
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    #@9
    .line 897
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    #@b
    .line 893
    return-void
.end method

.method public setIsPulledCall(Z)V
    .locals 0
    .param p1, "isPulledCall"    # Z

    #@0
    .prologue
    .line 846
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    #@2
    .line 845
    return-void
.end method

.method public setPulledDialogId(I)V
    .locals 0
    .param p1, "pulledDialogId"    # I

    #@0
    .prologue
    .line 861
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mPulledDialogId:I

    #@2
    .line 860
    return-void
.end method

.method public setTelecomCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "telecomCallId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mTelecomCallId:Ljava/lang/String;

    #@2
    .line 232
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userdata"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    #@2
    .line 457
    return-void
.end method

.method public setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    #@0
    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@2
    .line 888
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
    .line 889
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    #@19
    goto :goto_0

    #@1a
    .line 886
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setVideoState(I)V
    .locals 3
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 738
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    #@2
    .line 739
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
    .line 740
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoStateChanged(I)V

    #@19
    goto :goto_0

    #@1a
    .line 737
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setWifi(Z)V
    .locals 3
    .param p1, "isWifi"    # Z

    #@0
    .prologue
    .line 766
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    #@2
    .line 767
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
    .line 768
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    #@16
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onWifiChanged(Z)V

    #@19
    goto :goto_0

    #@1a
    .line 765
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public shouldAllowAddCallDuringVideoCall()Z
    .locals 1

    #@0
    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAllowAddCallDuringVideoCall:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 1003
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
    .line 1004
    const-string/jumbo v1, " isExternal: "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    #@1e
    and-int/lit8 v1, v1, 0x10

    #@20
    .line 1005
    const/16 v3, 0x10

    #@22
    .line 1004
    if-ne v1, v3, :cond_1

    #@24
    .line 1005
    const-string/jumbo v1, "Y"

    #@27
    .line 1004
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 1006
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    #@2c
    const/4 v2, 0x3

    #@2d
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_0

    #@33
    .line 1007
    const-string/jumbo v1, "addr: "

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 1008
    const-string/jumbo v2, " pres.: "

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    #@4c
    move-result v2

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 1009
    const-string/jumbo v2, " dial: "

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    .line 1010
    const-string/jumbo v2, " postdial: "

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 1011
    const-string/jumbo v2, " cnap name: "

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    .line 1012
    const-string/jumbo v2, "("

    #@81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    #@88
    move-result v2

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    const-string/jumbo v2, ")"

    #@90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    .line 1014
    :cond_0
    const-string/jumbo v1, " incoming: "

    #@96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    #@9d
    move-result v2

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    .line 1015
    const-string/jumbo v2, " state: "

    #@a5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v1

    #@b1
    .line 1016
    const-string/jumbo v2, " post dial state: "

    #@b4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v1

    #@b8
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf
    .line 1017
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v1

    #@c3
    return-object v1

    #@c4
    .line 1005
    :cond_1
    const-string/jumbo v1, "N"

    #@c7
    goto/16 :goto_0
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
    .line 906
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
    .line 907
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceParticipantsChanged(Ljava/util/List;)V

    #@15
    goto :goto_0

    #@16
    .line 905
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public updateMultipartyState(Z)V
    .locals 3
    .param p1, "isMultiparty"    # Z

    #@0
    .prologue
    .line 917
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
    .line 918
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onMultipartyStateChanged(Z)V

    #@15
    goto :goto_0

    #@16
    .line 916
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method
