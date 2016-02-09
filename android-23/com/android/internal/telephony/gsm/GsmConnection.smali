.class public Lcom/android/internal/telephony/gsm/GsmConnection;
.super Lcom/android/internal/telephony/Connection;
.source "GsmConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_DriverCall$StateSwitchesValues:[I = null

.field private static final DBG:Z = true

.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "GsmConnection"

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field mCause:I

.field mDisconnectTime:J

.field mDisconnected:Z

.field mHandler:Landroid/os/Handler;

.field mIndex:I

.field mNextPostDialChar:I

.field mOrigConnection:Lcom/android/internal/telephony/Connection;

.field mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field mParent:Lcom/android/internal/telephony/gsm/GsmCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field mPostDialString:Ljava/lang/String;

.field mPreciseCause:I

.field mUusInfo:Lcom/android/internal/telephony/UUSInfo;

.field mVendorCause:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_DriverCall$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmConnection;->-com_android_internal_telephony_DriverCall$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmConnection;->-com_android_internal_telephony_DriverCall$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DriverCall$State;->values()[Lcom/android/internal/telephony/DriverCall$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    #@44
    :goto_5
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmConnection;->-com_android_internal_telephony_DriverCall$StateSwitchesValues:[I

    #@46
    return-object v0

    #@47
    :catch_0
    move-exception v1

    #@48
    goto :goto_5

    #@49
    :catch_1
    move-exception v1

    #@4a
    goto :goto_4

    #@4b
    :catch_2
    move-exception v1

    #@4c
    goto :goto_3

    #@4d
    :catch_3
    move-exception v1

    #@4e
    goto :goto_2

    #@4f
    :catch_4
    move-exception v1

    #@50
    goto :goto_1

    #@51
    :catch_5
    move-exception v1

    #@52
    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .param p4, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 111
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    #@4
    .line 63
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    #@6
    .line 64
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@a
    .line 66
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    #@c
    .line 112
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    #@f
    .line 113
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    #@12
    .line 115
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@14
    .line 116
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    #@16
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@18
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    #@1f
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    #@21
    .line 118
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@23
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    #@25
    .line 120
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@27
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    #@29
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2c
    move-result-wide v0

    #@2d
    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCreateTime:J

    #@2f
    .line 122
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    #@31
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    #@33
    .line 123
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    #@35
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    #@37
    .line 124
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    #@39
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    #@3b
    .line 125
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@3d
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@3f
    .line 127
    iput p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    #@41
    .line 129
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@43
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@49
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@4b
    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    #@4e
    .line 111
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/gsm/GsmCall;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 135
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    #@5
    .line 63
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    #@7
    .line 64
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@b
    .line 66
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    #@d
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    #@10
    .line 137
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    #@13
    .line 139
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@15
    .line 140
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    #@17
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    #@20
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    #@22
    .line 142
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDialString:Ljava/lang/String;

    #@24
    .line 144
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    #@2a
    .line 145
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    #@30
    .line 147
    const/4 v0, -0x1

    #@31
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    #@33
    .line 149
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    #@35
    .line 150
    const/4 v0, 0x0

    #@36
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    #@38
    .line 151
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    #@3a
    .line 152
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    #@3c
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3f
    move-result-wide v0

    #@40
    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCreateTime:J

    #@42
    .line 155
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@44
    .line 156
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@46
    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    #@49
    .line 135
    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    #@0
    .prologue
    .line 729
    const-string/jumbo v0, "acquireWakeLock"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    #@6
    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@b
    .line 728
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 723
    const-string/jumbo v1, "power"

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/os/PowerManager;

    #@9
    .line 724
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "GsmConnection"

    #@c
    const/4 v2, 0x1

    #@d
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@13
    .line 722
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 164
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

.method private isConnectingInOrOut()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 672
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@9
    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@b
    if-ne v1, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    .line 673
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@10
    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@12
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@14
    if-eq v1, v2, :cond_0

    #@16
    .line 674
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@18
    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@1a
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@1c
    if-eq v1, v2, :cond_0

    #@1e
    const/4 v0, 0x0

    #@1f
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 744
    const-string/jumbo v0, "GsmConnection"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[GSMConn] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 743
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/DriverCall$State;

    #@0
    .prologue
    .line 679
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmConnection;->-getcom_android_internal_telephony_DriverCall$StateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 696
    new-instance v0, Ljava/lang/RuntimeException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "illegal call state: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 683
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@29
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@2b
    return-object v0

    #@2c
    .line 687
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2e
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@30
    return-object v0

    #@31
    .line 692
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@33
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@35
    return-object v0

    #@36
    .line 679
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processNextPostDialChar()V
    .locals 9

    #@0
    .prologue
    .line 611
    const/4 v1, 0x0

    #@1
    .line 614
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@3
    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@5
    if-ne v6, v7, :cond_0

    #@7
    .line 616
    return-void

    #@8
    .line 619
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    #@a
    if-eqz v6, :cond_1

    #@c
    .line 620
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    #@e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@11
    move-result v6

    #@12
    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    #@14
    if-gt v6, v7, :cond_4

    #@16
    .line 621
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@18
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@1b
    .line 624
    const/4 v1, 0x0

    #@1c
    .line 643
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->notifyPostDialListenersNextChar(C)V

    #@1f
    .line 646
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@21
    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@23
    iget-object v4, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    #@25
    .line 650
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_3

    #@27
    .line 651
    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    #@2a
    move-result-object v3

    #@2b
    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_3

    #@2d
    .line 653
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2f
    .line 654
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@32
    move-result-object v0

    #@33
    .line 655
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@35
    .line 656
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@37
    .line 659
    iput v1, v3, Landroid/os/Message;->arg1:I

    #@39
    .line 662
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@3c
    .line 610
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_3
    return-void

    #@3d
    .line 628
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .restart local v1    # "c":C
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@3f
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@42
    .line 630
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    #@44
    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    #@46
    add-int/lit8 v8, v7, 0x1

    #@48
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    #@4a
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    #@4d
    move-result v1

    #@4e
    .line 632
    .local v1, "c":C
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->processPostDialChar(C)Z

    #@51
    move-result v2

    #@52
    .line 634
    .local v2, "isValid":Z
    if-nez v2, :cond_2

    #@54
    .line 636
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    #@56
    const/4 v7, 0x3

    #@57
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    #@5e
    .line 638
    const-string/jumbo v6, "GSM"

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
    .line 639
    return-void
.end method

.method private processPostDialChar(C)Z
    .locals 5
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 551
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@9
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    #@d
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    #@14
    .line 576
    :goto_0
    return v4

    #@15
    .line 553
    :cond_0
    const/16 v0, 0x2c

    #@17
    if-ne p1, v0, :cond_1

    #@19
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    #@1b
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    #@1d
    const/4 v2, 0x2

    #@1e
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@21
    move-result-object v1

    #@22
    .line 567
    const-wide/16 v2, 0xbb8

    #@24
    .line 566
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@27
    goto :goto_0

    #@28
    .line 568
    :cond_1
    const/16 v0, 0x3b

    #@2a
    if-ne p1, v0, :cond_2

    #@2c
    .line 569
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@31
    goto :goto_0

    #@32
    .line 570
    :cond_2
    const/16 v0, 0x4e

    #@34
    if-ne p1, v0, :cond_3

    #@36
    .line 571
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    #@38
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@3b
    goto :goto_0

    #@3c
    .line 573
    :cond_3
    const/4 v0, 0x0

    #@3d
    return v0
.end method

.method private releaseWakeLock()V
    .locals 2

    #@0
    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    monitor-enter v1

    #@3
    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 737
    const-string/jumbo v0, "releaseWakeLock"

    #@e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    #@11
    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@13
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v1

    #@17
    .line 734
    return-void

    #@18
    .line 735
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 707
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@3
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@5
    if-eq v1, v2, :cond_1

    #@7
    .line 708
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@9
    if-ne p1, v1, :cond_1

    #@b
    .line 709
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    #@e
    .line 710
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    #@10
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    .line 711
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    #@16
    const-wide/32 v2, 0xea60

    #@19
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1c
    .line 717
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@1e
    .line 718
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->notifyPostDialListeners()V

    #@21
    .line 706
    return-void

    #@22
    .line 712
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@24
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@26
    if-ne v1, v2, :cond_0

    #@28
    .line 713
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2a
    if-eq p1, v1, :cond_0

    #@2c
    .line 714
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    #@2e
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    #@31
    .line 715
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    #@34
    goto :goto_0
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    #@0
    .prologue
    .line 285
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@5
    .line 284
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/DriverCall;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 174
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-boolean v1, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@7
    :goto_0
    if-nez v1, :cond_1

    #@9
    return v2

    #@a
    :cond_0
    move v1, v2

    #@b
    goto :goto_0

    #@c
    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    #@e
    if-eqz v1, :cond_2

    #@10
    return v2

    #@11
    .line 184
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@13
    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    #@15
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 185
    .local v0, "cAddress":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    #@1b
    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@1d
    if-ne v1, v2, :cond_3

    #@1f
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    #@21
    invoke-static {v1, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    :goto_1
    return v1

    #@26
    :cond_3
    const/4 v1, 0x0

    #@27
    goto :goto_1
.end method

.method disconnectCauseFromCode(I)I
    .locals 7
    .param p1, "causeCode"    # I

    #@0
    .prologue
    const/16 v6, 0x24

    #@2
    const/4 v5, 0x2

    #@3
    .line 311
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 347
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@8
    iget-object v1, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@a
    .line 348
    .local v1, "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    #@11
    move-result v2

    #@12
    .line 349
    .local v2, "serviceState":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@15
    move-result-object v0

    #@16
    .line 350
    .local v0, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@18
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@1b
    move-result-object v3

    #@1c
    .line 352
    .local v3, "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :goto_0
    const/4 v4, 0x3

    #@1d
    if-ne v2, v4, :cond_1

    #@1f
    .line 353
    const/16 v4, 0x11

    #@21
    return v4

    #@22
    .line 313
    .end local v0    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v2    # "serviceState":I
    .end local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :sswitch_0
    const/4 v4, 0x4

    #@23
    return v4

    #@24
    .line 321
    :sswitch_1
    const/4 v4, 0x5

    #@25
    return v4

    #@26
    .line 324
    :sswitch_2
    const/16 v4, 0xf

    #@28
    return v4

    #@29
    .line 327
    :sswitch_3
    const/16 v4, 0x14

    #@2b
    return v4

    #@2c
    .line 330
    :sswitch_4
    const/16 v4, 0x15

    #@2e
    return v4

    #@2f
    .line 333
    :sswitch_5
    const/16 v4, 0x19

    #@31
    return v4

    #@32
    .line 336
    :sswitch_6
    const/16 v4, 0x2e

    #@34
    return v4

    #@35
    .line 339
    :sswitch_7
    const/16 v4, 0x2f

    #@37
    return v4

    #@38
    .line 342
    :sswitch_8
    const/16 v4, 0x30

    #@3a
    return v4

    #@3b
    .line 351
    .restart local v0    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v2    # "serviceState":I
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@3d
    .restart local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    #@3e
    .line 354
    :cond_1
    const/4 v4, 0x1

    #@3f
    if-eq v2, v4, :cond_2

    #@41
    .line 355
    if-ne v2, v5, :cond_3

    #@43
    .line 356
    :cond_2
    const/16 v4, 0x12

    #@45
    return v4

    #@46
    .line 357
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@48
    if-eq v3, v4, :cond_4

    #@4a
    .line 358
    const/16 v4, 0x13

    #@4c
    return v4

    #@4d
    .line 359
    :cond_4
    const v4, 0xffff

    #@50
    if-ne p1, v4, :cond_8

    #@52
    .line 360
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@54
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@56
    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_5

    #@5c
    .line 361
    const/16 v4, 0x16

    #@5e
    return v4

    #@5f
    .line 362
    :cond_5
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@61
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@63
    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@66
    move-result v4

    #@67
    if-eqz v4, :cond_6

    #@69
    .line 363
    const/16 v4, 0x18

    #@6b
    return v4

    #@6c
    .line 364
    :cond_6
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@6e
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@70
    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@73
    move-result v4

    #@74
    if-eqz v4, :cond_7

    #@76
    .line 365
    const/16 v4, 0x17

    #@78
    return v4

    #@79
    .line 367
    :cond_7
    return v6

    #@7a
    .line 369
    :cond_8
    const/16 v4, 0x10

    #@7c
    if-ne p1, v4, :cond_9

    #@7e
    .line 370
    return v5

    #@7f
    .line 374
    :cond_9
    return v6

    #@80
    .line 311
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x11 -> :sswitch_0
        0x22 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2c -> :sswitch_1
        0x31 -> :sswitch_1
        0x3a -> :sswitch_1
        0x44 -> :sswitch_2
        0xf0 -> :sswitch_3
        0xf1 -> :sswitch_4
        0xf4 -> :sswitch_6
        0xf5 -> :sswitch_7
        0xf6 -> :sswitch_8
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    #@0
    .prologue
    .line 159
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    #@0
    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@6
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    #@9
    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@b
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@f
    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@11
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@13
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    #@16
    .line 506
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    #@19
    .line 498
    return-void
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 603
    const-string/jumbo v0, "GsmConnection"

    #@b
    const-string/jumbo v1, "[GSMConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    #@e
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 605
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->clearPostDialListeners()V

    #@14
    .line 606
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    #@17
    .line 594
    return-void
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@2
    return-object v0
.end method

.method public getDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 210
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    #@2
    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    #@0
    .prologue
    .line 195
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnectTime:J

    #@2
    return-wide v0
.end method

.method getGSMIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 511
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 512
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    return v0

    #@9
    .line 514
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@b
    const-string/jumbo v1, "GSM index not yet assigned"

    #@e
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    #@0
    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 202
    const-wide/16 v0, 0x0

    #@a
    return-wide v0

    #@b
    .line 204
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e
    move-result-wide v0

    #@f
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHoldingStartTime:J

    #@11
    sub-long/2addr v0, v2

    #@12
    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    #@0
    .prologue
    .line 749
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    #@2
    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    #@0
    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    #@2
    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 758
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    #@2
    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@8
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 587
    :cond_0
    const-string/jumbo v0, ""

    #@f
    return-object v0

    #@10
    .line 584
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    #@16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@19
    move-result v0

    #@1a
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    #@1c
    if-le v0, v1, :cond_0

    #@1e
    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    #@20
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

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
    .line 215
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 216
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@6
    return-object v0

    #@7
    .line 218
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
    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@2
    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mVendorCause:Ljava/lang/String;

    #@2
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
    .line 224
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@6
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    #@9
    .line 223
    return-void

    #@a
    .line 227
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@c
    const-string/jumbo v1, "disconnected"

    #@f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method

.method public isMultiparty()Z
    .locals 1

    #@0
    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 788
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 768
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 770
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    #@6
    .line 772
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUUSInfo()Lcom/android/internal/telephony/UUSInfo;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@c
    .line 774
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setUserData(Ljava/lang/Object;)V

    #@13
    .line 767
    return-void
.end method

.method onConnectedInOrOut()V
    .locals 4

    #@0
    .prologue
    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTime:J

    #@6
    .line 524
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    #@c
    .line 525
    const-wide/16 v0, 0x0

    #@e
    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    #@10
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v1, "onConnectedInOrOut: connectTime="

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTime:J

    #@1e
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    #@29
    .line 533
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    #@2b
    if-nez v0, :cond_0

    #@2d
    .line 535
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    #@30
    .line 537
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    #@33
    .line 522
    return-void
.end method

.method onDisconnect(I)Z
    .locals 7
    .param p1, "cause"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 391
    const/4 v0, 0x0

    #@2
    .line 393
    .local v0, "changed":Z
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    #@4
    .line 395
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    #@6
    if-nez v1, :cond_1

    #@8
    .line 396
    const/4 v1, -0x1

    #@9
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    #@b
    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnectTime:J

    #@11
    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14
    move-result-wide v2

    #@15
    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    #@17
    sub-long/2addr v2, v4

    #@18
    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    #@1a
    .line 400
    const/4 v1, 0x1

    #@1b
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    #@1d
    .line 402
    const-string/jumbo v1, "GsmConnection"

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "onDisconnect: cause="

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 404
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@39
    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@3b
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    #@3e
    .line 406
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@40
    if-eqz v1, :cond_0

    #@42
    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@44
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)Z

    #@47
    move-result v0

    #@48
    .line 410
    .end local v0    # "changed":Z
    :cond_0
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    #@4a
    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->clearPostDialListeners()V

    #@4d
    .line 413
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    #@50
    .line 414
    return v0
.end method

.method onHangupLocal()V
    .locals 1

    #@0
    .prologue
    .line 295
    const/4 v0, 0x3

    #@1
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    #@3
    .line 296
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    #@6
    .line 297
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mVendorCause:Ljava/lang/String;

    #@9
    .line 294
    return-void
.end method

.method onRemoteDisconnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "causeCode"    # I
    .param p2, "vendorCause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 381
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    #@2
    .line 382
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mVendorCause:Ljava/lang/String;

    #@4
    .line 383
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    #@b
    .line 380
    return-void
.end method

.method onStartedHolding()V
    .locals 2

    #@0
    .prologue
    .line 542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHoldingStartTime:J

    #@6
    .line 541
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 248
    const-string/jumbo v0, "GsmConnection"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 249
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@17
    .line 248
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
    .line 250
    return-void

    #@23
    .line 253
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@25
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@28
    .line 255
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    #@2b
    .line 246
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 261
    const-string/jumbo v1, "GsmConnection"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 262
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@17
    .line 261
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
    .line 263
    return-void

    #@23
    .line 266
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@25
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@28
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2d
    .line 272
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    #@2f
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    #@3e
    .line 274
    const/4 v1, 0x0

    #@3f
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    #@41
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v2, "proceedAfterWildChar: new postDialString is "

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 277
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    #@4f
    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    #@5a
    .line 280
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    #@5d
    .line 259
    return-void
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
    .line 233
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@6
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    #@9
    .line 232
    return-void

    #@a
    .line 236
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@c
    const-string/jumbo v1, "disconnected"

    #@f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 7
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    #@0
    .prologue
    .line 421
    const/4 v0, 0x0

    #@1
    .line 422
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    #@4
    move-result v3

    #@5
    .line 423
    .local v3, "wasConnectingInOrOut":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@8
    move-result-object v5

    #@9
    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@b
    if-ne v5, v6, :cond_5

    #@d
    const/4 v4, 0x1

    #@e
    .line 425
    .local v4, "wasHolding":Z
    :goto_0
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@10
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    #@13
    move-result-object v1

    #@14
    .line 428
    .local v1, "newParent":Lcom/android/internal/telephony/gsm/GsmCall;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    #@16
    if-eqz v5, :cond_6

    #@18
    .line 429
    const-string/jumbo v5, "update: mOrigConnection is not null"

    #@1b
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    #@1e
    .line 441
    :cond_0
    :goto_1
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    #@20
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_8

    #@26
    .line 442
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    #@28
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2b
    move-result v5

    #@2c
    if-nez v5, :cond_1

    #@2e
    .line 443
    const/4 v0, 0x1

    #@2f
    .line 444
    const-string/jumbo v5, ""

    #@32
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    #@34
    .line 451
    :cond_1
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v6, "--dssds----"

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    #@4d
    .line 452
    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    #@4f
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    #@51
    .line 453
    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    #@53
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    #@55
    .line 455
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@57
    if-eq v1, v5, :cond_9

    #@59
    .line 456
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@5b
    if-eqz v5, :cond_2

    #@5d
    .line 457
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@5f
    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    #@62
    .line 459
    :cond_2
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    #@65
    .line 460
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@67
    .line 461
    const/4 v0, 0x1

    #@68
    .line 471
    .end local v0    # "changed":Z
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v6, "update: parent="

    #@70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    .line 472
    const-string/jumbo v6, ", hasNewParent="

    #@7d
    .line 471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    .line 472
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@83
    if-eq v1, v5, :cond_b

    #@85
    const/4 v5, 0x1

    #@86
    .line 471
    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@89
    move-result-object v5

    #@8a
    .line 473
    const-string/jumbo v6, ", wasConnectingInOrOut="

    #@8d
    .line 471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    .line 474
    const-string/jumbo v6, ", wasHolding="

    #@98
    .line 471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    .line 475
    const-string/jumbo v6, ", isConnectingInOrOut="

    #@a3
    .line 471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v5

    #@a7
    .line 475
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    #@aa
    move-result v6

    #@ab
    .line 471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v5

    #@af
    .line 476
    const-string/jumbo v6, ", changed="

    #@b2
    .line 471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v5

    #@ba
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v5

    #@be
    .line 470
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    #@c1
    .line 479
    if-eqz v3, :cond_3

    #@c3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    #@c6
    move-result v5

    #@c7
    if-eqz v5, :cond_c

    #@c9
    .line 483
    :cond_3
    :goto_5
    if-eqz v0, :cond_4

    #@cb
    if-eqz v4, :cond_d

    #@cd
    .line 488
    :cond_4
    :goto_6
    return v0

    #@ce
    .line 423
    .end local v1    # "newParent":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v4    # "wasHolding":Z
    .restart local v0    # "changed":Z
    :cond_5
    const/4 v4, 0x0

    #@cf
    .restart local v4    # "wasHolding":Z
    goto/16 :goto_0

    #@d1
    .line 431
    .restart local v1    # "newParent":Lcom/android/internal/telephony/gsm/GsmCall;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v6, " mNumberConverted "

    #@d9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v5

    #@dd
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberConverted:Z

    #@df
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v5

    #@e3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v5

    #@e7
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    #@ea
    .line 432
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    #@ec
    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@ee
    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f1
    move-result v5

    #@f2
    if-nez v5, :cond_0

    #@f4
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberConverted:Z

    #@f6
    if-eqz v5, :cond_7

    #@f8
    .line 433
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConvertedNumber:Ljava/lang/String;

    #@fa
    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@fc
    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@ff
    move-result v5

    #@100
    if-nez v5, :cond_0

    #@102
    .line 434
    :cond_7
    const-string/jumbo v5, "update: phone # changed!"

    #@105
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    #@108
    .line 435
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@10a
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    #@10c
    .line 436
    const/4 v0, 0x1

    #@10d
    goto/16 :goto_1

    #@10f
    .line 446
    :cond_8
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    #@111
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    #@113
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@116
    move-result v5

    #@117
    if-nez v5, :cond_1

    #@119
    .line 447
    const/4 v0, 0x1

    #@11a
    .line 448
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    #@11c
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    #@11e
    goto/16 :goto_2

    #@120
    .line 464
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    #@122
    invoke-virtual {v5, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->update(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z

    #@125
    move-result v2

    #@126
    .line 465
    .local v2, "parentStateChange":Z
    if-nez v0, :cond_a

    #@128
    move v0, v2

    #@129
    .local v0, "changed":Z
    goto/16 :goto_3

    #@12b
    .local v0, "changed":Z
    :cond_a
    const/4 v0, 0x1

    #@12c
    goto/16 :goto_3

    #@12e
    .line 472
    .end local v0    # "changed":Z
    .end local v2    # "parentStateChange":Z
    :cond_b
    const/4 v5, 0x0

    #@12f
    goto/16 :goto_4

    #@131
    .line 480
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onConnectedInOrOut()V

    #@134
    goto :goto_5

    #@135
    .line 483
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@138
    move-result-object v5

    #@139
    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@13b
    if-ne v5, v6, :cond_4

    #@13d
    .line 485
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    #@140
    goto :goto_6
.end method
