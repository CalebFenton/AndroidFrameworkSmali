.class Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionEvent"
.end annotation


# static fields
.field public static final FAILURE_ASSOCIATION_REJECTION:I = 0x2

.field public static final FAILURE_AUTHENTICATION_FAILURE:I = 0x3

.field public static final FAILURE_CONNECT_NETWORK_FAILED:I = 0x5

.field public static final FAILURE_DHCP:I = 0xa

.field public static final FAILURE_NETWORK_DISCONNECTION:I = 0x6

.field public static final FAILURE_NEW_CONNECTION_ATTEMPT:I = 0x7

.field public static final FAILURE_NONE:I = 0x1

.field public static final FAILURE_REDUNDANT_CONNECTION_ATTEMPT:I = 0x8

.field public static final FAILURE_ROAM_TIMEOUT:I = 0x9

.field public static final FAILURE_SSID_TEMP_DISABLED:I = 0x4

.field public static final FAILURE_UNKNOWN:I


# instance fields
.field private mConfigBssid:Ljava/lang/String;

.field private mConfigSsid:Ljava/lang/String;

.field mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

.field private mRealEndTime:J

.field private mRealStartTime:J

.field mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

.field private mScreenOn:Z

.field private mWifiState:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigBssid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigSsid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealEndTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealStartTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigBssid:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigSsid:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealEndTime:J

    #@2
    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealStartTime:J

    #@2
    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mScreenOn:Z

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mWifiState:I

    #@2
    return p1
.end method

.method private constructor <init>(Lcom/android/server/wifi/WifiMetrics;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiMetrics;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 193
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->this$0:Lcom/android/server/wifi/WifiMetrics;

    #@5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 194
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@a
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@f
    .line 195
    iput-wide v4, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealEndTime:J

    #@11
    .line 196
    iput-wide v4, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealStartTime:J

    #@13
    .line 197
    new-instance v0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@15
    invoke-direct {v0, p1}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;-><init>(Lcom/android/server/wifi/WifiMetrics;)V

    #@18
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@1a
    .line 198
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@1c
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@1e
    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@21
    move-result-object v1

    #@22
    iput-object v1, v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@24
    .line 199
    const-string/jumbo v0, "<NULL>"

    #@27
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigSsid:Ljava/lang/String;

    #@29
    .line 200
    const-string/jumbo v0, "<NULL>"

    #@2c
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigBssid:Ljava/lang/String;

    #@2e
    .line 201
    iput v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mWifiState:I

    #@30
    .line 202
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mScreenOn:Z

    #@32
    .line 193
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiMetrics;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;-><init>(Lcom/android/server/wifi/WifiMetrics;)V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 207
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "startTime="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@e
    move-result-object v0

    #@f
    .line 209
    .local v0, "c":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->this$0:Lcom/android/server/wifi/WifiMetrics;

    #@11
    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics;->-get1(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    monitor-enter v3

    #@16
    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@18
    iget-wide v4, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@1a
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@1d
    .line 211
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@1f
    iget-wide v4, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@21
    const-wide/16 v6, 0x0

    #@23
    cmp-long v2, v4, v6

    #@25
    if-nez v2, :cond_0

    #@27
    const-string/jumbo v2, "            <null>"

    #@2a
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 213
    const-string/jumbo v2, ", SSID="

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 214
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigSsid:Ljava/lang/String;

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 215
    const-string/jumbo v2, ", BSSID="

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 216
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigBssid:Ljava/lang/String;

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 217
    const-string/jumbo v2, ", durationMillis="

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 218
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@4b
    iget v2, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    .line 219
    const-string/jumbo v2, ", roamType="

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 220
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@58
    iget v2, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@5a
    packed-switch v2, :pswitch_data_0

    #@5d
    .line 237
    const-string/jumbo v2, "ROAM_UNKNOWN"

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 239
    :goto_1
    const-string/jumbo v2, ", connectionResult="

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 240
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@6b
    iget v2, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    .line 241
    const-string/jumbo v2, ", level2FailureCode="

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 242
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@78
    iget v2, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@7a
    packed-switch v2, :pswitch_data_1

    #@7d
    .line 273
    :goto_2
    const-string/jumbo v2, "UNKNOWN"

    #@80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    .line 276
    :goto_3
    const-string/jumbo v2, ", connectivityLevelFailureCode="

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    .line 277
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@8b
    iget v2, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@8d
    packed-switch v2, :pswitch_data_2

    #@90
    .line 291
    const-string/jumbo v2, "UNKNOWN"

    #@93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    .line 294
    :goto_4
    const-string/jumbo v2, ", signalStrength="

    #@99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    .line 295
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@9e
    iget v2, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@a0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a3
    .line 296
    const-string/jumbo v2, ", wifiState="

    #@a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    .line 297
    iget v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mWifiState:I

    #@ab
    packed-switch v2, :pswitch_data_3

    #@ae
    .line 308
    const-string/jumbo v2, "WIFI_UNKNOWN"

    #@b1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    .line 311
    :goto_5
    const-string/jumbo v2, ", screenOn="

    #@b7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    .line 312
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mScreenOn:Z

    #@bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@bf
    .line 313
    const-string/jumbo v2, ". mRouterFingerprint: "

    #@c2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    .line 314
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@c7
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->toString()Ljava/lang/String;

    #@ca
    move-result-object v2

    #@cb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ce
    monitor-exit v3

    #@cf
    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v2

    #@d3
    return-object v2

    #@d4
    .line 212
    :cond_0
    :try_start_1
    const-string/jumbo v2, "%tm-%td %tH:%tM:%tS.%tL"

    #@d7
    const/4 v4, 0x6

    #@d8
    new-array v4, v4, [Ljava/lang/Object;

    #@da
    const/4 v5, 0x0

    #@db
    aput-object v0, v4, v5

    #@dd
    const/4 v5, 0x1

    #@de
    aput-object v0, v4, v5

    #@e0
    const/4 v5, 0x2

    #@e1
    aput-object v0, v4, v5

    #@e3
    const/4 v5, 0x3

    #@e4
    aput-object v0, v4, v5

    #@e6
    const/4 v5, 0x4

    #@e7
    aput-object v0, v4, v5

    #@e9
    const/4 v5, 0x5

    #@ea
    aput-object v0, v4, v5

    #@ec
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ef
    move-result-object v2

    #@f0
    goto/16 :goto_0

    #@f2
    .line 222
    :pswitch_0
    const-string/jumbo v2, "ROAM_NONE"

    #@f5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f8
    goto/16 :goto_1

    #@fa
    .line 209
    :catchall_0
    move-exception v2

    #@fb
    monitor-exit v3

    #@fc
    throw v2

    #@fd
    .line 225
    :pswitch_1
    :try_start_2
    const-string/jumbo v2, "ROAM_DBDC"

    #@100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    goto/16 :goto_1

    #@105
    .line 228
    :pswitch_2
    const-string/jumbo v2, "ROAM_ENTERPRISE"

    #@108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    goto/16 :goto_1

    #@10d
    .line 231
    :pswitch_3
    const-string/jumbo v2, "ROAM_USER_SELECTED"

    #@110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    goto/16 :goto_1

    #@115
    .line 234
    :pswitch_4
    const-string/jumbo v2, "ROAM_UNRELATED"

    #@118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    goto/16 :goto_1

    #@11d
    .line 244
    :pswitch_5
    const-string/jumbo v2, "NONE"

    #@120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    goto/16 :goto_3

    #@125
    .line 247
    :pswitch_6
    const-string/jumbo v2, "ASSOCIATION_REJECTION"

    #@128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    goto/16 :goto_3

    #@12d
    .line 250
    :pswitch_7
    const-string/jumbo v2, "AUTHENTICATION_FAILURE"

    #@130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    goto/16 :goto_3

    #@135
    .line 253
    :pswitch_8
    const-string/jumbo v2, "SSID_TEMP_DISABLED"

    #@138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    goto/16 :goto_3

    #@13d
    .line 256
    :pswitch_9
    const-string/jumbo v2, "CONNECT_NETWORK_FAILED"

    #@140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    goto/16 :goto_3

    #@145
    .line 259
    :pswitch_a
    const-string/jumbo v2, "NETWORK_DISCONNECTION"

    #@148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    goto/16 :goto_3

    #@14d
    .line 262
    :pswitch_b
    const-string/jumbo v2, "NEW_CONNECTION_ATTEMPT"

    #@150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    goto/16 :goto_3

    #@155
    .line 265
    :pswitch_c
    const-string/jumbo v2, "REDUNDANT_CONNECTION_ATTEMPT"

    #@158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    goto/16 :goto_3

    #@15d
    .line 268
    :pswitch_d
    const-string/jumbo v2, "ROAM_TIMEOUT"

    #@160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    goto/16 :goto_3

    #@165
    .line 271
    :pswitch_e
    const-string/jumbo v2, "DHCP"

    #@168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    goto/16 :goto_2

    #@16d
    .line 279
    :pswitch_f
    const-string/jumbo v2, "NONE"

    #@170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    goto/16 :goto_4

    #@175
    .line 282
    :pswitch_10
    const-string/jumbo v2, "DHCP"

    #@178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    goto/16 :goto_4

    #@17d
    .line 285
    :pswitch_11
    const-string/jumbo v2, "NO_INTERNET"

    #@180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    goto/16 :goto_4

    #@185
    .line 288
    :pswitch_12
    const-string/jumbo v2, "UNWANTED"

    #@188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    goto/16 :goto_4

    #@18d
    .line 299
    :pswitch_13
    const-string/jumbo v2, "WIFI_DISABLED"

    #@190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    goto/16 :goto_5

    #@195
    .line 302
    :pswitch_14
    const-string/jumbo v2, "WIFI_DISCONNECTED"

    #@198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    goto/16 :goto_5

    #@19d
    .line 305
    :pswitch_15
    const-string/jumbo v2, "WIFI_ASSOCIATED"

    #@1a0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a3
    goto/16 :goto_5

    #@1a5
    .line 220
    nop

    #@1a6
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@1b4
    .line 242
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    #@1cc
    .line 277
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    #@1d8
    .line 297
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
