.class public Lcom/android/internal/telephony/cdma/CdmaConnection;
.super Lcom/android/internal/telephony/Connection;
.source "CdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_DriverCall$StateSwitchesValues:[I = null

.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CdmaConnection"

.field static final PAUSE_DELAY_MILLIS:I = 0x7d0

.field private static final VDBG:Z = false

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field mCause:I

.field mDisconnectTime:J

.field mDisconnected:Z

.field mHandler:Landroid/os/Handler;

.field mIndex:I

.field mNextPostDialChar:I

.field mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field mPostDialString:Ljava/lang/String;

.field mPreciseCause:I

.field mVendorCause:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_DriverCall$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->-com_android_internal_telephony_DriverCall$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->-com_android_internal_telephony_DriverCall$StateSwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->-com_android_internal_telephony_DriverCall$StateSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p4, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 109
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    #@4
    .line 64
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    #@6
    .line 65
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@a
    .line 66
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    #@c
    .line 110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    #@f
    .line 111
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    #@12
    .line 113
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@14
    .line 114
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    #@16
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@18
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    #@1f
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    #@21
    .line 116
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@23
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    #@25
    .line 118
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@27
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    #@29
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2c
    move-result-wide v0

    #@2d
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCreateTime:J

    #@2f
    .line 120
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    #@31
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    #@33
    .line 121
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    #@35
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    #@37
    .line 122
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    #@39
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    #@3b
    .line 124
    iput p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    #@3d
    .line 126
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@3f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@45
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@47
    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/cdma/CdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    #@4a
    .line 109
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    .param p3, "ct"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    #@4
    .line 64
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    #@6
    .line 65
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@a
    .line 66
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    #@c
    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    #@f
    .line 172
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    #@12
    .line 174
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@14
    .line 175
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    #@16
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@18
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    #@1f
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    #@21
    .line 176
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    #@23
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    #@25
    .line 177
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    #@27
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    #@29
    .line 178
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    #@2b
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    #@2d
    .line 179
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    #@2f
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    #@31
    .line 180
    const/4 v0, -0x1

    #@32
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    #@34
    .line 181
    const/4 v0, 0x1

    #@35
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    #@37
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3a
    move-result-wide v0

    #@3b
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCreateTime:J

    #@3d
    .line 183
    const-wide/16 v0, 0x0

    #@3f
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    #@41
    .line 184
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@43
    .line 185
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@45
    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    #@48
    .line 170
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    #@6
    .line 64
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    #@8
    .line 65
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@c
    .line 66
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    #@e
    .line 133
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    #@11
    .line 134
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    #@14
    .line 136
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@16
    .line 137
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    #@18
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@1a
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    #@23
    .line 139
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialString:Ljava/lang/String;

    #@25
    .line 140
    const-string/jumbo v0, "CdmaConnection"

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "[CDMAConn] CdmaConnection: dialString="

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 141
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object p2

    #@47
    .line 142
    const-string/jumbo v0, "CdmaConnection"

    #@4a
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v2, "[CDMAConn] CdmaConnection:formated dialString="

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    .line 142
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 145
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    #@6b
    .line 146
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    #@71
    .line 148
    const/4 v0, -0x1

    #@72
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    #@74
    .line 150
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    #@76
    .line 151
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    #@78
    .line 152
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    #@7a
    .line 153
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    #@7c
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7f
    move-result-wide v0

    #@80
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCreateTime:J

    #@82
    .line 156
    if-eqz p4, :cond_0

    #@84
    .line 157
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@86
    .line 160
    iget-object v0, p4, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@88
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@8a
    if-ne v0, v1, :cond_1

    #@8c
    .line 161
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@8e
    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    #@91
    .line 132
    :cond_0
    :goto_0
    return-void

    #@92
    .line 163
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@94
    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    #@97
    goto :goto_0
.end method

.method private acquireWakeLock()V
    .locals 1

    #@0
    .prologue
    .line 784
    const-string/jumbo v0, "acquireWakeLock"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    #@6
    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@b
    .line 783
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 779
    const-string/jumbo v1, "power"

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/os/PowerManager;

    #@9
    .line 780
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "CdmaConnection"

    #@c
    const/4 v2, 0x1

    #@d
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@13
    .line 778
    return-void
.end method

.method private doDisconnect()V
    .locals 4

    #@0
    .prologue
    .line 572
    const/4 v0, -0x1

    #@1
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    #@3
    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnectTime:J

    #@9
    .line 574
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v0

    #@d
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTimeReal:J

    #@f
    sub-long/2addr v0, v2

    #@10
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDuration:J

    #@12
    .line 575
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    #@15
    .line 576
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->clearPostDialListeners()V

    #@18
    .line 571
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 193
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

.method private static findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "currIndex"    # I

    #@0
    .prologue
    .line 810
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@3
    move-result v4

    #@4
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    #@7
    move-result v3

    #@8
    .line 811
    .local v3, "wMatched":Z
    add-int/lit8 v1, p1, 0x1

    #@a
    .line 812
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v2

    #@e
    .line 813
    .end local v3    # "wMatched":Z
    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@10
    .line 814
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 816
    .local v0, "cNext":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 817
    const/4 v3, 0x1

    #@1b
    .line 821
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    #@1e
    move-result v4

    #@1f
    if-nez v4, :cond_1

    #@21
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 824
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 829
    .end local v0    # "cNext":C
    :cond_2
    if-ge v1, v2, :cond_3

    #@2c
    add-int/lit8 v4, p1, 0x1

    #@2e
    if-le v1, v4, :cond_3

    #@30
    .line 830
    if-nez v3, :cond_3

    #@32
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@35
    move-result v4

    #@36
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    #@39
    move-result v4

    #@3a
    .line 829
    if-eqz v4, :cond_3

    #@3c
    .line 831
    add-int/lit8 v4, p1, 0x1

    #@3e
    return v4

    #@3f
    .line 833
    :cond_3
    return v1
.end method

.method private static findPOrWCharToAppend(Ljava/lang/String;II)C
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "currPwIndex"    # I
    .param p2, "nextNonPwCharIndex"    # I

    #@0
    .prologue
    .line 841
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@3
    move-result v0

    #@4
    .line 845
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    const/16 v1, 0x2c

    #@c
    .line 853
    .local v1, "ret":C
    :goto_0
    add-int/lit8 v2, p1, 0x1

    #@e
    if-le p2, v2, :cond_0

    #@10
    .line 854
    const/16 v1, 0x3b

    #@12
    .line 856
    :cond_0
    return v1

    #@13
    .line 845
    .end local v1    # "ret":C
    :cond_1
    const/16 v1, 0x3b

    #@15
    .restart local v1    # "ret":C
    goto :goto_0
.end method

.method public static formatDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 877
    if-nez p0, :cond_0

    #@3
    .line 878
    return-object v6

    #@4
    .line 880
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    .line 881
    .local v2, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 883
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@e
    .line 885
    .local v1, "currIndex":I
    :goto_0
    if-ge v1, v2, :cond_5

    #@10
    .line 886
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 887
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    #@17
    move-result v6

    #@18
    if-nez v6, :cond_1

    #@1a
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_4

    #@20
    .line 888
    :cond_1
    add-int/lit8 v6, v2, -0x1

    #@22
    if-ge v1, v6, :cond_2

    #@24
    .line 890
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I

    #@27
    move-result v3

    #@28
    .line 892
    .local v3, "nextIndex":I
    if-ge v3, v2, :cond_3

    #@2a
    .line 893
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findPOrWCharToAppend(Ljava/lang/String;II)C

    #@2d
    move-result v4

    #@2e
    .line 894
    .local v4, "pC":C
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 898
    add-int/lit8 v6, v1, 0x1

    #@33
    if-le v3, v6, :cond_2

    #@35
    .line 899
    add-int/lit8 v1, v3, -0x1

    #@37
    .line 909
    .end local v3    # "nextIndex":I
    .end local v4    # "pC":C
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 901
    .restart local v3    # "nextIndex":I
    :cond_3
    if-ne v3, v2, :cond_2

    #@3c
    .line 903
    add-int/lit8 v1, v2, -0x1

    #@3e
    goto :goto_1

    #@3f
    .line 907
    .end local v3    # "nextIndex":I
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    goto :goto_1

    #@43
    .line 911
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    return-object v6
.end method

.method private isConnectingInOrOut()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 724
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@7
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@9
    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@b
    if-ne v1, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    .line 725
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@10
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@12
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@14
    if-eq v1, v2, :cond_0

    #@16
    .line 726
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@18
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@1a
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@1c
    if-eq v1, v2, :cond_0

    #@1e
    const/4 v0, 0x0

    #@1f
    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 798
    const/16 v0, 0x2c

    #@2
    if-ne p0, v0, :cond_0

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
.end method

.method private static isWait(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 802
    const/16 v0, 0x3b

    #@2
    if-ne p0, v0, :cond_0

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
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 915
    const-string/jumbo v0, "CdmaConnection"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[CDMAConn] "

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
    .line 914
    return-void
.end method

.method private maskDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 923
    const-string/jumbo v0, "<MASKED>"

    #@3
    return-object v0
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/DriverCall$State;

    #@0
    .prologue
    .line 731
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaConnection;->-getcom_android_internal_telephony_DriverCall$StateSwitchesValues()[I

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
    .line 748
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
    .line 735
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@29
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@2b
    return-object v0

    #@2c
    .line 739
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2e
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@30
    return-object v0

    #@31
    .line 744
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@33
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@35
    return-object v0

    #@36
    .line 731
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

.method private processPostDialChar(C)Z
    .locals 5
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 590
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@9
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    #@d
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    #@14
    .line 608
    :goto_0
    return v4

    #@15
    .line 592
    :cond_0
    const/16 v0, 0x2c

    #@17
    if-ne p1, v0, :cond_1

    #@19
    .line 593
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@1b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@1e
    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    #@20
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    #@22
    const/4 v2, 0x2

    #@23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@26
    move-result-object v1

    #@27
    .line 599
    const-wide/16 v2, 0x7d0

    #@29
    .line 598
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2c
    goto :goto_0

    #@2d
    .line 600
    :cond_1
    const/16 v0, 0x3b

    #@2f
    if-ne p1, v0, :cond_2

    #@31
    .line 601
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    #@33
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@36
    goto :goto_0

    #@37
    .line 602
    :cond_2
    const/16 v0, 0x4e

    #@39
    if-ne p1, v0, :cond_3

    #@3b
    .line 603
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    #@3d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@40
    goto :goto_0

    #@41
    .line 605
    :cond_3
    const/4 v0, 0x0

    #@42
    return v0
.end method

.method private releaseWakeLock()V
    .locals 2

    #@0
    .prologue
    .line 789
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    monitor-enter v1

    #@3
    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 791
    const-string/jumbo v0, "releaseWakeLock"

    #@e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    #@11
    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@13
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v1

    #@17
    .line 788
    return-void

    #@18
    .line 789
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 6
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    .line 759
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@3
    if-eq p1, v1, :cond_0

    #@5
    .line 760
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@7
    if-ne p1, v1, :cond_2

    #@9
    .line 761
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@b
    monitor-enter v2

    #@c
    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@e
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 763
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    #@16
    const/4 v3, 0x4

    #@17
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    #@1a
    .line 767
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    #@1c
    const/4 v3, 0x4

    #@1d
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@20
    move-result-object v0

    #@21
    .line 768
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    #@23
    const-wide/32 v4, 0xea60

    #@26
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit v2

    #@2a
    .line 774
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2c
    .line 775
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->notifyPostDialListeners()V

    #@2f
    .line 758
    return-void

    #@30
    .line 765
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 761
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1

    #@37
    .line 771
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    #@39
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@3c
    .line 772
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    #@3f
    goto :goto_1
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    #@0
    .prologue
    .line 315
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@5
    .line 314
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/DriverCall;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 203
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

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
    .line 208
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@e
    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    #@10
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 209
    .local v0, "cAddress":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    #@16
    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@18
    if-ne v1, v2, :cond_2

    #@1a
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    #@1c
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    :goto_1
    return v1

    #@21
    :cond_2
    const/4 v1, 0x0

    #@22
    goto :goto_1
.end method

.method disconnectCauseFromCode(I)I
    .locals 7
    .param p1, "causeCode"    # I

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    .line 341
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 381
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@6
    iget-object v1, v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@8
    .line 382
    .local v1, "phone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    #@f
    move-result v2

    #@10
    .line 383
    .local v2, "serviceState":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@13
    move-result-object v4

    #@14
    .line 385
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@17
    move-result v5

    #@18
    .line 383
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1b
    move-result-object v0

    #@1c
    .line 386
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@1e
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@21
    move-result-object v3

    #@22
    .line 387
    .local v3, "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :goto_0
    const/4 v4, 0x3

    #@23
    if-ne v2, v4, :cond_1

    #@25
    .line 388
    const/16 v4, 0x11

    #@27
    return v4

    #@28
    .line 343
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "phone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .end local v2    # "serviceState":I
    .end local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :sswitch_0
    const/4 v4, 0x4

    #@29
    return v4

    #@2a
    .line 345
    :sswitch_1
    const/4 v4, 0x5

    #@2b
    return v4

    #@2c
    .line 347
    :sswitch_2
    const/16 v4, 0xf

    #@2e
    return v4

    #@2f
    .line 349
    :sswitch_3
    const/16 v4, 0x14

    #@31
    return v4

    #@32
    .line 351
    :sswitch_4
    const/16 v4, 0x15

    #@34
    return v4

    #@35
    .line 353
    :sswitch_5
    const/16 v4, 0x2e

    #@37
    return v4

    #@38
    .line 355
    :sswitch_6
    const/16 v4, 0x2f

    #@3a
    return v4

    #@3b
    .line 357
    :sswitch_7
    const/16 v4, 0x30

    #@3d
    return v4

    #@3e
    .line 359
    :sswitch_8
    const/16 v4, 0x1a

    #@40
    return v4

    #@41
    .line 361
    :sswitch_9
    const/16 v4, 0x1b

    #@43
    return v4

    #@44
    .line 363
    :sswitch_a
    const/16 v4, 0x1c

    #@46
    return v4

    #@47
    .line 365
    :sswitch_b
    const/16 v4, 0x1d

    #@49
    return v4

    #@4a
    .line 367
    :sswitch_c
    const/16 v4, 0x1e

    #@4c
    return v4

    #@4d
    .line 369
    :sswitch_d
    const/16 v4, 0x1f

    #@4f
    return v4

    #@50
    .line 371
    :sswitch_e
    const/16 v4, 0x20

    #@52
    return v4

    #@53
    .line 373
    :sswitch_f
    const/16 v4, 0x21

    #@55
    return v4

    #@56
    .line 375
    :sswitch_10
    const/16 v4, 0x22

    #@58
    return v4

    #@59
    .line 377
    :sswitch_11
    const/16 v4, 0x23

    #@5b
    return v4

    #@5c
    .line 386
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "phone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .restart local v2    # "serviceState":I
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@5e
    .restart local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    #@5f
    .line 389
    :cond_1
    const/4 v4, 0x1

    #@60
    if-eq v2, v4, :cond_2

    #@62
    .line 390
    if-ne v2, v6, :cond_3

    #@64
    .line 391
    :cond_2
    const/16 v4, 0x12

    #@66
    return v4

    #@67
    .line 392
    :cond_3
    iget v4, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    #@69
    if-nez v4, :cond_4

    #@6b
    .line 394
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@6d
    if-eq v3, v4, :cond_4

    #@6f
    .line 395
    const/16 v4, 0x13

    #@71
    return v4

    #@72
    .line 396
    :cond_4
    const/16 v4, 0x10

    #@74
    if-ne p1, v4, :cond_5

    #@76
    .line 397
    return v6

    #@77
    .line 399
    :cond_5
    const/16 v4, 0x24

    #@79
    return v4

    #@7a
    .line 341
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x22 -> :sswitch_1
        0x44 -> :sswitch_2
        0xf0 -> :sswitch_3
        0xf1 -> :sswitch_4
        0xf4 -> :sswitch_5
        0xf5 -> :sswitch_6
        0xf6 -> :sswitch_7
        0x3e8 -> :sswitch_8
        0x3e9 -> :sswitch_9
        0x3ea -> :sswitch_a
        0x3eb -> :sswitch_b
        0x3ec -> :sswitch_c
        0x3ed -> :sswitch_d
        0x3ee -> :sswitch_e
        0x3ef -> :sswitch_f
        0x3f0 -> :sswitch_10
        0x3f1 -> :sswitch_11
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    #@0
    .prologue
    .line 188
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    #@0
    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@6
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    #@9
    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@b
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@f
    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@11
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@13
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    #@16
    .line 533
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    #@19
    .line 525
    return-void
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 654
    const-string/jumbo v0, "CdmaConnection"

    #@b
    const-string/jumbo v1, "[CdmaConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    #@e
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 656
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    #@14
    .line 645
    return-void
.end method

.method getCDMAIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 538
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 539
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    return v0

    #@9
    .line 541
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@b
    const-string/jumbo v1, "CDMA connection index not assigned"

    #@e
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@2
    return-object v0
.end method

.method public getDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 240
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    #@2
    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    #@0
    .prologue
    .line 225
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnectTime:J

    #@2
    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    #@0
    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 232
    const-wide/16 v0, 0x0

    #@a
    return-wide v0

    #@b
    .line 234
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e
    move-result-wide v0

    #@f
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHoldingStartTime:J

    #@11
    sub-long/2addr v0, v2

    #@12
    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    #@0
    .prologue
    .line 928
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    #@2
    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    #@0
    .prologue
    .line 948
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 938
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    #@2
    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 613
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@3
    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@5
    if-eq v3, v4, :cond_0

    #@7
    .line 614
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@9
    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@b
    if-ne v3, v4, :cond_1

    #@d
    .line 617
    :cond_0
    const-string/jumbo v3, ""

    #@10
    return-object v3

    #@11
    .line 615
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 616
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    #@17
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1a
    move-result v3

    #@1b
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    #@1d
    if-le v3, v4, :cond_0

    #@1f
    .line 620
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    #@21
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 621
    .local v1, "subStr":Ljava/lang/String;
    if-eqz v1, :cond_3

    #@29
    .line 622
    const/16 v3, 0x3b

    #@2b
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    #@2e
    move-result v2

    #@2f
    .line 623
    .local v2, "wIndex":I
    const/16 v3, 0x2c

    #@31
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    #@34
    move-result v0

    #@35
    .line 625
    .local v0, "pIndex":I
    if-lez v2, :cond_4

    #@37
    if-lt v2, v0, :cond_2

    #@39
    if-gtz v0, :cond_4

    #@3b
    .line 626
    :cond_2
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 631
    .end local v0    # "pIndex":I
    .end local v2    # "wIndex":I
    :cond_3
    :goto_0
    return-object v1

    #@40
    .line 627
    .restart local v0    # "pIndex":I
    .restart local v2    # "wIndex":I
    :cond_4
    if-lez v0, :cond_3

    #@42
    .line 628
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    #@0
    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 246
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@6
    return-object v0

    #@7
    .line 248
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
    .line 934
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mVendorCause:Ljava/lang/String;

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
    .line 254
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@6
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    #@9
    .line 253
    return-void

    #@a
    .line 257
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
    .line 953
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method onConnectedInOrOut()V
    .locals 4

    #@0
    .prologue
    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    #@6
    .line 551
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTimeReal:J

    #@c
    .line 552
    const-wide/16 v0, 0x0

    #@e
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDuration:J

    #@10
    .line 557
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
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    #@1e
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    #@29
    .line 560
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    #@2b
    if-nez v0, :cond_0

    #@2d
    .line 562
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    #@30
    .line 549
    :goto_0
    return-void

    #@31
    .line 566
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    #@34
    goto :goto_0
.end method

.method onDisconnect(I)Z
    .locals 2
    .param p1, "cause"    # I

    #@0
    .prologue
    .line 417
    const/4 v0, 0x0

    #@1
    .line 419
    .local v0, "changed":Z
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    #@3
    .line 421
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 422
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->doDisconnect()V

    #@a
    .line 425
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@c
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@e
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    #@11
    .line 427
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 428
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@17
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->connectionDisconnected(Lcom/android/internal/telephony/cdma/CdmaConnection;)Z

    #@1a
    move-result v0

    #@1b
    .line 431
    .end local v0    # "changed":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    #@1e
    .line 432
    return v0
.end method

.method onHangupLocal()V
    .locals 1

    #@0
    .prologue
    .line 325
    const/4 v0, 0x3

    #@1
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    #@3
    .line 326
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    #@6
    .line 327
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mVendorCause:Ljava/lang/String;

    #@9
    .line 324
    return-void
.end method

.method onLocalDisconnect()V
    .locals 1

    #@0
    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 439
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->doDisconnect()V

    #@7
    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@d
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    #@10
    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    #@13
    .line 437
    return-void
.end method

.method onRemoteDisconnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "causeCode"    # I
    .param p2, "vendorCause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 406
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    #@2
    .line 407
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mVendorCause:Ljava/lang/String;

    #@4
    .line 408
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnectCauseFromCode(I)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(I)Z

    #@b
    .line 405
    return-void
.end method

.method onStartedHolding()V
    .locals 2

    #@0
    .prologue
    .line 581
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHoldingStartTime:J

    #@6
    .line 580
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 278
    const-string/jumbo v0, "CdmaConnection"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 279
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@17
    .line 278
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
    .line 280
    return-void

    #@23
    .line 283
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@25
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@28
    .line 285
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    #@2b
    .line 276
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@2
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 291
    const-string/jumbo v1, "CdmaConnection"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 292
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@17
    .line 291
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
    .line 293
    return-void

    #@23
    .line 296
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@25
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@28
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2d
    .line 302
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    #@2f
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    #@3e
    .line 304
    const/4 v1, 0x0

    #@3f
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    #@41
    .line 306
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
    .line 307
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    #@4f
    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    #@5a
    .line 310
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    #@5d
    .line 289
    return-void
.end method

.method processNextPostDialChar()V
    .locals 9

    #@0
    .prologue
    .line 660
    const/4 v1, 0x0

    #@1
    .line 663
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@3
    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@5
    if-ne v6, v7, :cond_0

    #@7
    .line 664
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    #@a
    .line 666
    return-void

    #@b
    .line 669
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    #@d
    if-eqz v6, :cond_1

    #@f
    .line 670
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    #@11
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@14
    move-result v6

    #@15
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    #@17
    if-gt v6, v7, :cond_4

    #@19
    .line 671
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    #@1b
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@1e
    .line 674
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    #@21
    .line 677
    const/4 v1, 0x0

    #@22
    .line 696
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->notifyPostDialListenersNextChar(C)V

    #@25
    .line 699
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@27
    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@29
    iget-object v4, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPostDialHandler:Landroid/os/Registrant;

    #@2b
    .line 703
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_3

    #@2d
    .line 704
    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    #@30
    move-result-object v3

    #@31
    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_3

    #@33
    .line 706
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    #@35
    .line 707
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@38
    move-result-object v0

    #@39
    .line 708
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@3b
    .line 709
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@3d
    .line 712
    iput v1, v3, Landroid/os/Message;->arg1:I

    #@3f
    .line 714
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@42
    .line 659
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_3
    return-void

    #@43
    .line 681
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .restart local v1    # "c":C
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    #@45
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    #@48
    .line 683
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    #@4a
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    #@4c
    add-int/lit8 v8, v7, 0x1

    #@4e
    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    #@53
    move-result v1

    #@54
    .line 685
    .local v1, "c":C
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processPostDialChar(C)Z

    #@57
    move-result v2

    #@58
    .line 687
    .local v2, "isValid":Z
    if-nez v2, :cond_2

    #@5a
    .line 689
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    #@5c
    const/4 v7, 0x3

    #@5d
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    #@64
    .line 691
    const-string/jumbo v6, "CDMA"

    #@67
    new-instance v7, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v8, "processNextPostDialChar: c="

    #@6f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@76
    move-result-object v7

    #@77
    const-string/jumbo v8, " isn\'t valid!"

    #@7a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v7

    #@82
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 692
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
    .line 263
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@6
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->separate(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    #@9
    .line 262
    return-void

    #@a
    .line 266
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
    .line 453
    const/4 v0, 0x0

    #@1
    .line 454
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    #@4
    move-result v3

    #@5
    .line 455
    .local v3, "wasConnectingInOrOut":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@8
    move-result-object v5

    #@9
    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@b
    if-ne v5, v6, :cond_5

    #@d
    const/4 v4, 0x1

    #@e
    .line 457
    .local v4, "wasHolding":Z
    :goto_0
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@10
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;

    #@13
    move-result-object v1

    #@14
    .line 459
    .local v1, "newParent":Lcom/android/internal/telephony/cdma/CdmaCall;
    new-instance v5, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v6, "parent= "

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    const-string/jumbo v6, ", newParent= "

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    #@38
    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v6, " mNumberConverted "

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberConverted:Z

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    #@51
    .line 462
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    #@53
    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@55
    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@58
    move-result v5

    #@59
    if-nez v5, :cond_0

    #@5b
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberConverted:Z

    #@5d
    if-eqz v5, :cond_6

    #@5f
    .line 463
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConvertedNumber:Ljava/lang/String;

    #@61
    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@63
    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@66
    move-result v5

    #@67
    if-eqz v5, :cond_6

    #@69
    .line 470
    :cond_0
    :goto_1
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    #@6b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6e
    move-result v5

    #@6f
    if-eqz v5, :cond_7

    #@71
    .line 471
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    #@73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@76
    move-result v5

    #@77
    if-nez v5, :cond_1

    #@79
    .line 472
    const/4 v0, 0x1

    #@7a
    .line 473
    const-string/jumbo v5, ""

    #@7d
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    #@7f
    .line 480
    :cond_1
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v6, "--dssds----"

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    #@8d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v5

    #@95
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    #@98
    .line 481
    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    #@9a
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    #@9c
    .line 482
    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    #@9e
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    #@a0
    .line 484
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@a2
    if-eq v1, v5, :cond_8

    #@a4
    .line 485
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@a6
    if-eqz v5, :cond_2

    #@a8
    .line 486
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@aa
    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    #@ad
    .line 488
    :cond_2
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    #@b0
    .line 489
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@b2
    .line 490
    const/4 v0, 0x1

    #@b3
    .line 500
    .end local v0    # "changed":Z
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v6, "Update, wasConnectingInOrOut="

    #@bb
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v5

    #@bf
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v5

    #@c3
    .line 501
    const-string/jumbo v6, ", wasHolding="

    #@c6
    .line 500
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v5

    #@ca
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v5

    #@ce
    .line 502
    const-string/jumbo v6, ", isConnectingInOrOut="

    #@d1
    .line 500
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v5

    #@d5
    .line 502
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    #@d8
    move-result v6

    #@d9
    .line 500
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v5

    #@dd
    .line 503
    const-string/jumbo v6, ", changed="

    #@e0
    .line 500
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v5

    #@e4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v5

    #@e8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v5

    #@ec
    .line 499
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    #@ef
    .line 506
    if-eqz v3, :cond_3

    #@f1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    #@f4
    move-result v5

    #@f5
    if-eqz v5, :cond_a

    #@f7
    .line 510
    :cond_3
    :goto_4
    if-eqz v0, :cond_4

    #@f9
    if-eqz v4, :cond_b

    #@fb
    .line 515
    :cond_4
    :goto_5
    return v0

    #@fc
    .line 455
    .end local v1    # "newParent":Lcom/android/internal/telephony/cdma/CdmaCall;
    .end local v4    # "wasHolding":Z
    .restart local v0    # "changed":Z
    :cond_5
    const/4 v4, 0x0

    #@fd
    .restart local v4    # "wasHolding":Z
    goto/16 :goto_0

    #@ff
    .line 464
    .restart local v1    # "newParent":Lcom/android/internal/telephony/cdma/CdmaCall;
    :cond_6
    const-string/jumbo v5, "update: phone # changed!"

    #@102
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    #@105
    .line 465
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@107
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    #@109
    .line 466
    const/4 v0, 0x1

    #@10a
    goto/16 :goto_1

    #@10c
    .line 475
    :cond_7
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    #@10e
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    #@110
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@113
    move-result v5

    #@114
    if-nez v5, :cond_1

    #@116
    .line 476
    const/4 v0, 0x1

    #@117
    .line 477
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    #@119
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    #@11b
    goto/16 :goto_2

    #@11d
    .line 493
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@11f
    invoke-virtual {v5, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->update(Lcom/android/internal/telephony/cdma/CdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z

    #@122
    move-result v2

    #@123
    .line 494
    .local v2, "parentStateChange":Z
    if-nez v0, :cond_9

    #@125
    move v0, v2

    #@126
    .local v0, "changed":Z
    goto :goto_3

    #@127
    .local v0, "changed":Z
    :cond_9
    const/4 v0, 0x1

    #@128
    goto :goto_3

    #@129
    .line 507
    .end local v0    # "changed":Z
    .end local v2    # "parentStateChange":Z
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    #@12c
    goto :goto_4

    #@12d
    .line 510
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@130
    move-result-object v5

    #@131
    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@133
    if-ne v5, v6, :cond_4

    #@135
    .line 512
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    #@138
    goto :goto_5
.end method

.method public updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 1
    .param p1, "oldParent"    # Lcom/android/internal/telephony/cdma/CdmaCall;
    .param p2, "newParent"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    #@0
    .prologue
    .line 635
    if-eq p2, p1, :cond_1

    #@2
    .line 636
    if-eqz p1, :cond_0

    #@4
    .line 637
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    #@7
    .line 639
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@9
    invoke-virtual {p2, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    #@c
    .line 640
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@e
    .line 634
    :cond_1
    return-void
.end method
