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
    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1034
    const-wide/16 v0, -0x1

    #@6
    iput-wide v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mLastPnoChangeTimeStamp:J

    #@8
    .line 1035
    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mExpectedPnoState:Z

    #@a
    .line 1036
    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    #@c
    .line 1037
    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    #@e
    .line 1080
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$1;

    #@10
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$1;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;)V

    #@13
    .line 1079
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@15
    .line 1052
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@17
    .line 1053
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mAlarmManager:Landroid/app/AlarmManager;

    #@19
    .line 1054
    iput-object p3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mEventHandler:Landroid/os/Handler;

    #@1b
    .line 1055
    iput-object p4, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mClock:Lcom/android/server/wifi/Clock;

    #@1d
    .line 1051
    return-void
.end method

.method private setPnoState(Z)Z
    .locals 12
    .param p1, "enable"    # Z

    #@0
    .prologue
    const-wide/16 v4, 0x1388

    #@2
    .line 1097
    const/4 v7, 0x1

    #@3
    .line 1098
    .local v7, "isSuccess":Z
    iput-boolean p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mExpectedPnoState:Z

    #@5
    .line 1099
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1100
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
    .line 1101
    .local v10, "timeDifference":J
    cmp-long v0, v10, v4

    #@15
    if-ltz v0, :cond_1

    #@17
    .line 1102
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->updatePnoState(Z)Z

    #@1a
    move-result v7

    #@1b
    .line 1112
    .end local v7    # "isSuccess":Z
    .end local v10    # "timeDifference":J
    :cond_0
    :goto_0
    return v7

    #@1c
    .line 1104
    .restart local v7    # "isSuccess":Z
    .restart local v10    # "timeDifference":J
    :cond_1
    sub-long v8, v4, v10

    #@1e
    .line 1105
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
    .line 1106
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mAlarmManager:Landroid/app/AlarmManager;

    #@3a
    .line 1107
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
    .line 1108
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@46
    iget-object v6, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mEventHandler:Landroid/os/Handler;

    #@48
    .line 1106
    const/4 v1, 0x2

    #@49
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@4c
    .line 1109
    const/4 v0, 0x1

    #@4d
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    #@4f
    goto :goto_0
.end method

.method private updatePnoState(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1063
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    #@4
    if-ne v0, p1, :cond_0

    #@6
    .line 1065
    return v4

    #@7
    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mClock:Lcom/android/server/wifi/Clock;

    #@9
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mLastPnoChangeTimeStamp:J

    #@f
    .line 1068
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@11
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->setPnoScan(Z)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 1069
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "Changed PNO state from "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget-boolean v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    const-string/jumbo v2, " to "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 1070
    iput-boolean p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    #@40
    .line 1071
    return v4

    #@41
    .line 1073
    :cond_1
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@44
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v2, "PNO state change to "

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    const-string/jumbo v2, " failed"

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 1074
    iput-boolean v3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    #@64
    .line 1075
    return v3
.end method


# virtual methods
.method public forceStopPnoScan()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1144
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1145
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mAlarmManager:Landroid/app/AlarmManager;

    #@7
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@9
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@c
    .line 1146
    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    #@e
    .line 1148
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->updatePnoState(Z)Z

    #@11
    .line 1141
    return-void
.end method

.method public startPnoScan(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1120
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@3
    .line 1121
    invoke-direct {p0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->setPnoState(Z)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1122
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@c
    .line 1123
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 1125
    :cond_0
    return v1
.end method

.method public stopPnoScan()V
    .locals 1

    #@0
    .prologue
    .line 1133
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->setPnoState(Z)Z

    #@4
    .line 1134
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->mListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@7
    .line 1131
    return-void
.end method
