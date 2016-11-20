.class public Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;
.super Ljava/lang/Object;
.source "SupplicantWifiScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HwPnoDebouncer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$1;,
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;
    }
.end annotation


# static fields
.field private static final MINIMUM_PNO_GAP_MS:I = 0x1388

.field public static final PNO_DEBOUNCER_ALARM_TAG:Ljava/lang/String; = "SupplicantWifiScannerImplPno Monitor"


# instance fields
.field private final mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private mCurrentPnoState:Z

.field private final mEventHandler:Landroid/os/Handler;

.field private mExpectedPnoState:Z

.field private mLastPnoChangeTimeStamp:J

.field private mListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

.field private mWaitForTimer:Z

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mExpectedPnoState:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;)Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;Z)Z
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->updatePnoState(Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Landroid/app/AlarmManager;Landroid/os/Handler;Lcom/android/server/wifi/Clock;)V
    .locals 3
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1011
    const-wide/16 v0, -0x1

    #@6
    iput-wide v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mLastPnoChangeTimeStamp:J

    #@8
    .line 1012
    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mExpectedPnoState:Z

    #@a
    .line 1013
    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    #@c
    .line 1014
    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    #@e
    .line 1057
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$1;

    #@10
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$1;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;)V

    #@13
    .line 1056
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@15
    .line 1029
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@17
    .line 1030
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mAlarmManager:Landroid/app/AlarmManager;

    #@19
    .line 1031
    iput-object p3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mEventHandler:Landroid/os/Handler;

    #@1b
    .line 1032
    iput-object p4, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mClock:Lcom/android/server/wifi/Clock;

    #@1d
    .line 1028
    return-void
.end method

.method private setPnoState(Z)Z
    .locals 12
    .param p1, "enable"    # Z

    #@0
    .prologue
    const-wide/16 v4, 0x1388

    #@2
    .line 1074
    const/4 v7, 0x1

    #@3
    .line 1075
    .local v7, "isSuccess":Z
    iput-boolean p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mExpectedPnoState:Z

    #@5
    .line 1076
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1077
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mClock:Lcom/android/server/wifi/Clock;

    #@b
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@e
    move-result-wide v0

    #@f
    iget-wide v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mLastPnoChangeTimeStamp:J

    #@11
    sub-long v10, v0, v2

    #@13
    .line 1078
    .local v10, "timeDifference":J
    cmp-long v0, v10, v4

    #@15
    if-ltz v0, :cond_1

    #@17
    .line 1079
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->updatePnoState(Z)Z

    #@1a
    move-result v7

    #@1b
    .line 1089
    .end local v7    # "isSuccess":Z
    .end local v10    # "timeDifference":J
    :cond_0
    :goto_0
    return v7

    #@1c
    .line 1081
    .restart local v7    # "isSuccess":Z
    .restart local v10    # "timeDifference":J
    :cond_1
    sub-long v8, v4, v10

    #@1e
    .line 1082
    .local v8, "alarmTimeout":J
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "Start PNO timer with delay "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 1083
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mAlarmManager:Landroid/app/AlarmManager;

    #@3a
    .line 1084
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mClock:Lcom/android/server/wifi/Clock;

    #@3c
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@3f
    move-result-wide v2

    #@40
    add-long/2addr v2, v8

    #@41
    const-string/jumbo v4, "SupplicantWifiScannerImplPno Monitor"

    #@44
    .line 1085
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@46
    iget-object v6, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mEventHandler:Landroid/os/Handler;

    #@48
    .line 1083
    const/4 v1, 0x2

    #@49
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@4c
    .line 1086
    const/4 v0, 0x1

    #@4d
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    #@4f
    goto :goto_0
.end method

.method private updatePnoState(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1040
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    #@3
    if-ne v0, p1, :cond_0

    #@5
    .line 1042
    return v3

    #@6
    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mClock:Lcom/android/server/wifi/Clock;

    #@8
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mLastPnoChangeTimeStamp:J

    #@e
    .line 1046
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->setPnoScan(Z)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1047
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "Changed PNO state from "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget-boolean v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, " to "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 1048
    iput-boolean p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    #@3f
    .line 1049
    return v3

    #@40
    .line 1051
    :cond_1
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@43
    new-instance v1, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v2, "PNO state change to "

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    const-string/jumbo v2, " failed"

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 1052
    const/4 v0, 0x0

    #@62
    return v0
.end method


# virtual methods
.method public forceStopPnoScan()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1119
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1122
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1123
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mAlarmManager:Landroid/app/AlarmManager;

    #@b
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@d
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@10
    .line 1124
    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    #@12
    .line 1126
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->updatePnoState(Z)Z

    #@15
    .line 1118
    :cond_1
    return-void
.end method

.method public startPnoScan(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1097
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@3
    .line 1098
    invoke-direct {p0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->setPnoState(Z)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1099
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@c
    .line 1100
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 1102
    :cond_0
    return v1
.end method

.method public stopPnoScan()V
    .locals 1

    #@0
    .prologue
    .line 1110
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->setPnoState(Z)Z

    #@4
    .line 1111
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@7
    .line 1108
    return-void
.end method
