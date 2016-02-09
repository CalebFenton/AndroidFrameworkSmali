.class public Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.super Lcom/android/internal/telephony/Connection;
.source "ImsPhoneConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DTMF_DONE:I = 0x1

.field private static final EVENT_NEXT_POST_DIAL:I = 0x3

.field private static final EVENT_PAUSE_DONE:I = 0x2

.field private static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneConnection"

.field private static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field private static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field private mCause:I

.field private mConferenceConnectTime:J

.field private mDisconnectTime:J

.field private mDisconnected:Z

.field private mHandler:Landroid/os/Handler;

.field private mImsCall:Lcom/android/ims/ImsCall;

.field private mNextPostDialChar:I

.field private mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field private mPostDialString:Ljava/lang/String;

.field private mUusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v2, 0x0

    #@2
    .line 120
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    #@5
    .line 74
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    #@8
    .line 75
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@c
    .line 82
    const-wide/16 v0, 0x0

    #@e
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    #@10
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    #@13
    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    #@16
    .line 125
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@18
    .line 126
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    #@1a
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1c
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    #@23
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@25
    .line 127
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@27
    .line 129
    if-eqz p2, :cond_0

    #@29
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@2c
    move-result-object v0

    #@2d
    if-eqz v0, :cond_0

    #@2f
    .line 130
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@32
    move-result-object v0

    #@33
    const-string/jumbo v1, "oi"

    #@36
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    #@3c
    .line 131
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@3f
    move-result-object v0

    #@40
    const-string/jumbo v1, "cna"

    #@43
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    #@49
    .line 133
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@4c
    move-result-object v0

    #@4d
    const-string/jumbo v1, "oir"

    #@50
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    #@53
    move-result v0

    #@54
    .line 132
    invoke-static {v0}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    #@57
    move-result v0

    #@58
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    #@5a
    .line 135
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@5d
    move-result-object v0

    #@5e
    const-string/jumbo v1, "cnap"

    #@61
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    #@64
    move-result v0

    #@65
    .line 134
    invoke-static {v0}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    #@68
    move-result v0

    #@69
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    #@6b
    .line 136
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    #@6e
    .line 142
    :goto_0
    const/4 v0, 0x1

    #@6f
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    #@71
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@74
    move-result-wide v0

    #@75
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    #@77
    .line 144
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@79
    .line 148
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiState()Z

    #@7c
    .line 150
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@7e
    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@80
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@82
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    #@85
    .line 121
    return-void

    #@86
    .line 138
    :cond_0
    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    #@88
    .line 139
    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    #@8a
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 156
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    #@5
    .line 74
    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    #@7
    .line 75
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@b
    .line 82
    const-wide/16 v0, 0x0

    #@d
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    #@f
    .line 158
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    #@12
    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    #@15
    .line 161
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@17
    .line 162
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    #@19
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1b
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    #@22
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@24
    .line 164
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    #@26
    .line 166
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    #@2c
    .line 167
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@32
    .line 171
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    #@34
    .line 172
    const/4 v0, 0x0

    #@35
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    #@37
    .line 173
    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    #@39
    .line 174
    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    #@3b
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3e
    move-result-wide v0

    #@3f
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    #@41
    .line 177
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@43
    .line 178
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@45
    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    #@48
    .line 157
    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    #@0
    .prologue
    .line 514
    const-string/jumbo v0, "ImsPhoneConnection"

    #@3
    const-string/jumbo v1, "acquireWakeLock"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@b
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@e
    .line 513
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 508
    const-string/jumbo v1, "power"

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/os/PowerManager;

    #@9
    .line 509
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "ImsPhoneConnection"

    #@c
    const/4 v2, 0x1

    #@d
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@13
    .line 507
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 186
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method private getAudioQualityFromCallProfile(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/ImsCallProfile;)I
    .locals 5
    .param p1, "localCallProfile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "remoteCallProfile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v2, 0x1

    #@2
    .line 799
    if-eqz p1, :cond_0

    #@4
    if-nez p2, :cond_1

    #@6
    .line 801
    :cond_0
    return v2

    #@7
    .line 800
    :cond_1
    iget-object v3, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 804
    iget-object v3, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@d
    iget v3, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@f
    if-eq v3, v1, :cond_2

    #@11
    .line 806
    iget-object v3, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@13
    iget v3, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@15
    .line 807
    const/4 v4, 0x6

    #@16
    .line 806
    if-ne v3, v4, :cond_4

    #@18
    .line 808
    :cond_2
    iget v3, p2, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    #@1a
    if-nez v3, :cond_3

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 809
    .local v0, "isHighDef":Z
    :goto_0
    if-eqz v0, :cond_5

    #@1f
    :goto_1
    return v1

    #@20
    .line 808
    .end local v0    # "isHighDef":Z
    :cond_3
    const/4 v0, 0x0

    #@21
    .restart local v0    # "isHighDef":Z
    goto :goto_0

    #@22
    .line 804
    .end local v0    # "isHighDef":Z
    :cond_4
    const/4 v0, 0x0

    #@23
    .restart local v0    # "isHighDef":Z
    goto :goto_0

    #@24
    :cond_5
    move v1, v2

    #@25
    .line 809
    goto :goto_1
.end method

.method private processNextPostDialChar()V
    .locals 9

    #@0
    .prologue
    .line 430
    const/4 v1, 0x0

    #@1
    .line 433
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@3
    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@5
    if-ne v6, v7, :cond_0

    #@7
    .line 435
    return-void

    #@8
    .line 438
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@a
    if-eqz v6, :cond_1

    #@c
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@11
    move-result v6

    #@12
    iget v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    #@14
    if-gt v6, v7, :cond_4

    #@16
    .line 439
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@18
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@1b
    .line 442
    const/4 v1, 0x0

    #@1c
    .line 461
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListenersNextChar(C)V

    #@1f
    .line 464
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@21
    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@23
    iget-object v4, v6, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPostDialHandler:Landroid/os/Registrant;

    #@25
    .line 468
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_3

    #@27
    .line 469
    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    #@2a
    move-result-object v3

    #@2b
    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_3

    #@2d
    .line 471
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2f
    .line 472
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@32
    move-result-object v0

    #@33
    .line 473
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@35
    .line 474
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@37
    .line 477
    iput v1, v3, Landroid/os/Message;->arg1:I

    #@39
    .line 481
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@3c
    .line 429
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_3
    return-void

    #@3d
    .line 446
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .restart local v1    # "c":C
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@3f
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@42
    .line 448
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@44
    iget v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    #@46
    add-int/lit8 v8, v7, 0x1

    #@48
    iput v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    #@4a
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    #@4d
    move-result v1

    #@4e
    .line 450
    .local v1, "c":C
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processPostDialChar(C)Z

    #@51
    move-result v2

    #@52
    .line 452
    .local v2, "isValid":Z
    if-nez v2, :cond_2

    #@54
    .line 454
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@56
    const/4 v7, 0x3

    #@57
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    #@5e
    .line 456
    const-string/jumbo v6, "ImsPhoneConnection"

    #@61
    new-instance v7, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v8, "processNextPostDialChar: c="

    #@69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v7

    #@6d
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@70
    move-result-object v7

    #@71
    const-string/jumbo v8, " isn\'t valid!"

    #@74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v7

    #@78
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v7

    #@7c
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    .line 457
    return-void
.end method

.method private processPostDialChar(C)Z
    .locals 5
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 380
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@9
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    #@12
    .line 405
    :goto_0
    return v4

    #@13
    .line 382
    :cond_0
    const/16 v0, 0x2c

    #@15
    if-ne p1, v0, :cond_1

    #@17
    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@19
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@1b
    const/4 v2, 0x2

    #@1c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@1f
    move-result-object v1

    #@20
    .line 396
    const-wide/16 v2, 0xbb8

    #@22
    .line 395
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@25
    goto :goto_0

    #@26
    .line 397
    :cond_1
    const/16 v0, 0x3b

    #@28
    if-ne p1, v0, :cond_2

    #@2a
    .line 398
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@2f
    goto :goto_0

    #@30
    .line 399
    :cond_2
    const/16 v0, 0x4e

    #@32
    if-ne p1, v0, :cond_3

    #@34
    .line 400
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    #@36
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@39
    goto :goto_0

    #@3a
    .line 402
    :cond_3
    const/4 v0, 0x0

    #@3b
    return v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@3
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@5
    if-eq v1, v2, :cond_1

    #@7
    .line 493
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@9
    if-ne p1, v1, :cond_1

    #@b
    .line 494
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    #@e
    .line 495
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@10
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    .line 496
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@16
    const-wide/32 v2, 0xea60

    #@19
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1c
    .line 502
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@1e
    .line 503
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListeners()V

    #@21
    .line 491
    return-void

    #@22
    .line 497
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@24
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@26
    if-ne v1, v2, :cond_0

    #@28
    .line 498
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2a
    if-eq p1, v1, :cond_0

    #@2c
    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    #@2e
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    #@31
    .line 500
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    #@34
    goto :goto_0
.end method

.method private updateAddressDisplay(Lcom/android/ims/ImsCall;)Z
    .locals 9
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 665
    if-nez p1, :cond_0

    #@2
    .line 666
    const/4 v6, 0x0

    #@3
    return v6

    #@4
    .line 669
    :cond_0
    const/4 v2, 0x0

    #@5
    .line 670
    .local v2, "changed":Z
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@8
    move-result-object v1

    #@9
    .line 671
    .local v1, "callProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v1, :cond_4

    #@b
    .line 672
    const-string/jumbo v6, "oi"

    #@e
    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 673
    .local v0, "address":Ljava/lang/String;
    const-string/jumbo v6, "cna"

    #@15
    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 675
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "oir"

    #@1c
    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    #@1f
    move-result v6

    #@20
    .line 674
    invoke-static {v6}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    #@23
    move-result v5

    #@24
    .line 677
    .local v5, "nump":I
    const-string/jumbo v6, "cnap"

    #@27
    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    #@2a
    move-result v6

    #@2b
    .line 676
    invoke-static {v6}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    #@2e
    move-result v4

    #@2f
    .line 679
    .local v4, "namep":I
    const-string/jumbo v6, "ImsPhoneConnection"

    #@32
    new-instance v7, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v8, "address = "

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    const-string/jumbo v8, " name = "

    #@45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    .line 680
    const-string/jumbo v8, " nump = "

    #@50
    .line 679
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    .line 680
    const-string/jumbo v8, " namep = "

    #@5b
    .line 679
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 682
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    #@6c
    invoke-static {v6, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6f
    move-result v6

    #@70
    if-eqz v6, :cond_1

    #@72
    .line 683
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    #@74
    .line 684
    const/4 v2, 0x1

    #@75
    .line 686
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_5

    #@7b
    .line 687
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    #@7d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@80
    move-result v6

    #@81
    if-nez v6, :cond_2

    #@83
    .line 688
    const-string/jumbo v6, ""

    #@86
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    #@88
    .line 689
    const/4 v2, 0x1

    #@89
    .line 695
    :cond_2
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    #@8b
    if-eq v6, v5, :cond_3

    #@8d
    .line 696
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    #@8f
    .line 697
    const/4 v2, 0x1

    #@90
    .line 699
    :cond_3
    iget v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    #@92
    if-eq v6, v4, :cond_4

    #@94
    .line 700
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    #@96
    .line 701
    const/4 v2, 0x1

    #@97
    .line 704
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "namep":I
    .end local v5    # "nump":I
    :cond_4
    return v2

    #@98
    .line 691
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "namep":I
    .restart local v5    # "nump":I
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    #@9a
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v6

    #@9e
    if-nez v6, :cond_2

    #@a0
    .line 692
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    #@a2
    .line 693
    const/4 v2, 0x1

    #@a3
    goto :goto_0
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    #@0
    .prologue
    .line 305
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@5
    .line 304
    return-void
.end method

.method changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@0
    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2
    .line 571
    return-void
.end method

.method public dispose()V
    .locals 0

    #@0
    .prologue
    .line 181
    return-void
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    #@3
    .line 423
    return-void
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2
    return-object v0
.end method

.method public getConferenceConnectTime()J
    .locals 2

    #@0
    .prologue
    .line 654
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    #@2
    return-wide v0
.end method

.method public getDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 221
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    #@2
    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    #@0
    .prologue
    .line 201
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    #@2
    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    #@0
    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 213
    const-wide/16 v0, 0x0

    #@a
    return-wide v0

    #@b
    .line 215
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e
    move-result-wide v0

    #@f
    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    #@11
    sub-long/2addr v0, v2

    #@12
    return-wide v0
.end method

.method public getHoldingStartTime()J
    .locals 2

    #@0
    .prologue
    .line 206
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    #@2
    return-wide v0
.end method

.method getImsCall()Lcom/android/ims/ImsCall;
    .locals 1

    #@0
    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@2
    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    #@0
    .prologue
    .line 530
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    #@2
    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    #@0
    .prologue
    .line 540
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 616
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@8
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 416
    :cond_0
    const-string/jumbo v0, ""

    #@f
    return-object v0

    #@10
    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@19
    move-result v0

    #@1a
    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    #@1c
    if-le v0, v1, :cond_0

    #@1e
    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@20
    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    #@0
    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 240
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@6
    return-object v0

    #@7
    .line 242
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@2
    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 230
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@6
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@9
    .line 247
    return-void

    #@a
    .line 251
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@c
    const-string/jumbo v1, "disconnected"

    #@f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method

.method public isConferenceHost()Z
    .locals 1

    #@0
    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 558
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@8
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public isMultiparty()Z
    .locals 1

    #@0
    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@6
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method onConnectedInOrOut()V
    .locals 4

    #@0
    .prologue
    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    #@6
    .line 355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    #@c
    .line 356
    const-wide/16 v0, 0x0

    #@e
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    #@10
    .line 359
    const-string/jumbo v0, "ImsPhoneConnection"

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "onConnectedInOrOut: connectTime="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    #@21
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 362
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    #@2e
    if-nez v0, :cond_0

    #@30
    .line 364
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    #@33
    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    #@36
    .line 353
    return-void
.end method

.method onDisconnect()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 326
    const/4 v0, 0x0

    #@2
    .line 328
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    #@4
    if-nez v1, :cond_1

    #@6
    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v2

    #@a
    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    #@c
    .line 332
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f
    move-result-wide v2

    #@10
    iget-wide v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    #@12
    sub-long/2addr v2, v4

    #@13
    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    #@15
    .line 333
    const/4 v1, 0x1

    #@16
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    #@18
    .line 335
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1a
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1c
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    #@1f
    .line 337
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 338
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@25
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z

    #@28
    move-result v0

    #@29
    .line 342
    .end local v0    # "changed":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@2b
    if-eqz v1, :cond_0

    #@2d
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@2f
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->close()V

    #@32
    .line 343
    :cond_0
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@34
    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    #@37
    .line 346
    return v0

    #@38
    .line 340
    .restart local v0    # "changed":Z
    :cond_2
    const-string/jumbo v1, "ImsPhoneConnection"

    #@3b
    const-string/jumbo v2, "onDisconnect: no parent"

    #@3e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    goto :goto_0
.end method

.method public onDisconnect(I)Z
    .locals 3
    .param p1, "cause"    # I

    #@0
    .prologue
    .line 319
    const-string/jumbo v0, "ImsPhoneConnection"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "onDisconnect: cause="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 320
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    #@1c
    const/4 v1, 0x3

    #@1d
    if-eq v0, v1, :cond_0

    #@1f
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    #@21
    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    #@24
    move-result v0

    #@25
    return v0
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 5
    .param p1, "endpoint"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    #@3
    move-result-object v1

    #@4
    .line 628
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_0

    #@6
    .line 629
    return-void

    #@7
    .line 632
    :cond_0
    const/4 v2, 0x1

    #@8
    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    #@a
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    aput-object v3, v2, v4

    #@11
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 626
    :goto_0
    return-void

    #@15
    .line 633
    :catch_0
    move-exception v0

    #@16
    .line 635
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v2, "ImsPhoneConnection"

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "onDisconnectConferenceParticipant: no session in place. Failed to disconnect endpoint = "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    goto :goto_0
.end method

.method onHangupLocal()V
    .locals 1

    #@0
    .prologue
    .line 313
    const/4 v0, 0x3

    #@1
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    #@3
    .line 312
    return-void
.end method

.method onStartedHolding()V
    .locals 2

    #@0
    .prologue
    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    #@6
    .line 370
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 268
    const-string/jumbo v0, "ImsPhoneConnection"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 269
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@17
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 270
    return-void

    #@23
    .line 273
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@25
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@28
    .line 275
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    #@2b
    .line 266
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 281
    const-string/jumbo v1, "ImsPhoneConnection"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 282
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@17
    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 283
    return-void

    #@23
    .line 286
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@25
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@28
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2d
    .line 292
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@2f
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@3e
    .line 294
    const/4 v1, 0x0

    #@3f
    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    #@41
    .line 296
    const-string/jumbo v1, "ImsPhoneConnection"

    #@44
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v3, "proceedAfterWildChar: new postDialString is "

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    .line 297
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    #@52
    .line 296
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 300
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    #@60
    .line 279
    return-void
.end method

.method releaseWakeLock()V
    .locals 3

    #@0
    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    monitor-enter v1

    #@3
    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 522
    const-string/jumbo v0, "ImsPhoneConnection"

    #@e
    const-string/jumbo v2, "releaseWakeLock"

    #@11
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@16
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 519
    return-void

    #@1b
    .line 520
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@2
    const-string/jumbo v1, "not supported"

    #@5
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setConferenceConnectTime(J)V
    .locals 1
    .param p1, "conferenceConnectTime"    # J

    #@0
    .prologue
    .line 647
    iput-wide p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    #@2
    .line 646
    return-void
.end method

.method public setDisconnectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    #@0
    .prologue
    .line 225
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    #@2
    .line 224
    return-void
.end method

.method setImsCall(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@2
    .line 567
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 821
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[ImsPhoneConnection objId: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 822
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    .line 823
    const-string/jumbo v1, " address:"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 824
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 825
    const-string/jumbo v1, " ImsCall:"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 826
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@2b
    if-nez v1, :cond_0

    #@2d
    .line 827
    const-string/jumbo v1, "null"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 831
    :goto_0
    const-string/jumbo v1, "]"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 832
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    return-object v1

    #@3e
    .line 829
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    goto :goto_0
.end method

.method update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 580
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@2
    if-ne p2, v3, :cond_5

    #@4
    .line 585
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isPendingHold()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 586
    const-string/jumbo v3, "ImsPhoneConnection"

    #@d
    const-string/jumbo v4, "update : state is ACTIVE, but call is pending hold, skipping"

    #@10
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 587
    const/4 v3, 0x0

    #@14
    return v3

    #@15
    .line 590
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@17
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_1

    #@21
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@23
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 591
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectedInOrOut()V

    #@30
    .line 594
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@32
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@39
    move-result v3

    #@3a
    if-nez v3, :cond_3

    #@3c
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3e
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@40
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@42
    if-ne v3, v4, :cond_4

    #@44
    .line 599
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@46
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@49
    .line 600
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4b
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4d
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4f
    .line 601
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@51
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    #@54
    .line 607
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@56
    invoke-virtual {v3, p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    #@59
    move-result v1

    #@5a
    .line 608
    .local v1, "updateParent":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiState()Z

    #@5d
    move-result v2

    #@5e
    .line 609
    .local v2, "updateWifiState":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    #@61
    move-result v0

    #@62
    .line 611
    .local v0, "updateAddressDisplay":Z
    if-nez v1, :cond_6

    #@64
    if-nez v2, :cond_6

    #@66
    .end local v0    # "updateAddressDisplay":Z
    :goto_1
    return v0

    #@67
    .line 603
    .end local v1    # "updateParent":Z
    .end local v2    # "updateWifiState":Z
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@69
    if-ne p2, v3, :cond_4

    #@6b
    .line 604
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onStartedHolding()V

    #@6e
    goto :goto_0

    #@6f
    .line 611
    .restart local v0    # "updateAddressDisplay":Z
    .restart local v1    # "updateParent":Z
    .restart local v2    # "updateWifiState":Z
    :cond_6
    const/4 v0, 0x1

    #@70
    goto :goto_1
.end method

.method public updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z
    .locals 13
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    const/4 v12, 0x4

    #@1
    .line 715
    if-nez p1, :cond_0

    #@3
    .line 716
    const/4 v11, 0x0

    #@4
    return v11

    #@5
    .line 719
    :cond_0
    const/4 v1, 0x0

    #@6
    .line 723
    .local v1, "changed":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@9
    move-result-object v4

    #@a
    .line 725
    .local v4, "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;

    #@d
    move-result-object v3

    #@e
    .line 727
    .local v3, "localCallProfile":Lcom/android/ims/ImsCallProfile;
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;

    #@11
    move-result-object v10

    #@12
    .line 729
    .local v10, "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v4, :cond_1

    #@14
    .line 730
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    #@17
    move-result v9

    #@18
    .line 731
    .local v9, "oldVideoState":I
    invoke-static {v4}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I

    #@1b
    move-result v8

    #@1c
    .line 734
    .local v8, "newVideoState":I
    if-eq v9, v8, :cond_1

    #@1e
    .line 735
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    #@21
    .line 736
    const/4 v1, 0x1

    #@22
    .line 740
    .end local v8    # "newVideoState":I
    .end local v9    # "oldVideoState":I
    :cond_1
    if-eqz v3, :cond_2

    #@24
    .line 741
    iget v0, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    #@26
    .line 743
    .local v0, "callType":I
    if-ne v0, v12, :cond_5

    #@28
    const/4 v6, 0x1

    #@29
    .line 744
    .local v6, "newLocalVideoCapable":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isLocalVideoCapable()Z

    #@2c
    move-result v11

    #@2d
    if-eq v11, v6, :cond_2

    #@2f
    .line 745
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setLocalVideoCapable(Z)V

    #@32
    .line 746
    const/4 v1, 0x1

    #@33
    .line 750
    .end local v0    # "callType":I
    .end local v6    # "newLocalVideoCapable":Z
    :cond_2
    if-eqz v10, :cond_3

    #@35
    .line 751
    iget v11, v10, Lcom/android/ims/ImsCallProfile;->mCallType:I

    #@37
    if-ne v11, v12, :cond_6

    #@39
    const/4 v7, 0x1

    #@3a
    .line 754
    .local v7, "newRemoteVideoCapable":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isRemoteVideoCapable()Z

    #@3d
    move-result v11

    #@3e
    if-eq v11, v7, :cond_3

    #@40
    .line 755
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setRemoteVideoCapable(Z)V

    #@43
    .line 756
    const/4 v1, 0x1

    #@44
    .line 761
    .end local v7    # "newRemoteVideoCapable":Z
    :cond_3
    invoke-direct {p0, v3, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQualityFromCallProfile(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/ImsCallProfile;)I

    #@47
    move-result v5

    #@48
    .line 762
    .local v5, "newAudioQuality":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQuality()I

    #@4b
    move-result v11

    #@4c
    if-eq v11, v5, :cond_4

    #@4e
    .line 763
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAudioQuality(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    .line 764
    const/4 v1, 0x1

    #@52
    .line 770
    .end local v3    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v5    # "newAudioQuality":I
    .end local v10    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_4
    :goto_2
    return v1

    #@53
    .line 743
    .restart local v0    # "callType":I
    .restart local v3    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    .restart local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .restart local v10    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_5
    const/4 v6, 0x0

    #@54
    .restart local v6    # "newLocalVideoCapable":Z
    goto :goto_0

    #@55
    .line 751
    .end local v0    # "callType":I
    .end local v6    # "newLocalVideoCapable":Z
    :cond_6
    const/4 v7, 0x0

    #@56
    .restart local v7    # "newRemoteVideoCapable":Z
    goto :goto_1

    #@57
    .line 766
    .end local v3    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v7    # "newRemoteVideoCapable":Z
    .end local v10    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :catch_0
    move-exception v2

    #@58
    .local v2, "e":Lcom/android/ims/ImsException;
    goto :goto_2
.end method

.method public updateWifiState()Z
    .locals 3

    #@0
    .prologue
    .line 780
    const-string/jumbo v0, "ImsPhoneConnection"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "updateWifiState: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 781
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isWifi()Z

    #@23
    move-result v0

    #@24
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@26
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    #@29
    move-result v1

    #@2a
    if-eq v0, v1, :cond_0

    #@2c
    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2e
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    #@31
    move-result v0

    #@32
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setWifi(Z)V

    #@35
    .line 783
    const/4 v0, 0x1

    #@36
    return v0

    #@37
    .line 785
    :cond_0
    const/4 v0, 0x0

    #@38
    return v0
.end method
