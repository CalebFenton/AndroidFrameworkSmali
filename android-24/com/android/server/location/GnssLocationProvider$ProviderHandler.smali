.class final Lcom/android/server/location/GnssLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2052
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    .line 2053
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 2052
    return-void
.end method

.method private handleInitialize()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x1

    #@1
    const/4 v13, 0x0

    #@2
    .line 2120
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@4
    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@6
    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    #@9
    move-result-object v11

    #@a
    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@c
    invoke-static {v12}, Lcom/android/server/location/GnssLocationProvider;->-get11(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;

    #@f
    move-result-object v12

    #@10
    invoke-static {v10, v11, v12}, Lcom/android/server/location/GnssLocationProvider;->-wrap28(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V

    #@13
    .line 2129
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@15
    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    #@18
    move-result-object v10

    #@19
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@1c
    move-result-object v10

    #@1d
    .line 2130
    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@1f
    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get10(Lcom/android/server/location/GnssLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@22
    move-result-object v11

    #@23
    .line 2129
    invoke-virtual {v10, v11}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@26
    .line 2134
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap1()Z

    #@29
    move-result v10

    #@2a
    if-eqz v10, :cond_1

    #@2c
    .line 2135
    new-instance v1, Landroid/content/IntentFilter;

    #@2e
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@31
    .line 2136
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v10, "android.intent.action.DATA_SMS_RECEIVED"

    #@34
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@37
    .line 2137
    const-string/jumbo v10, "sms"

    #@3a
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@3d
    .line 2138
    const-string/jumbo v10, "localhost"

    #@40
    const-string/jumbo v11, "7275"

    #@43
    invoke-virtual {v1, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    #@46
    .line 2139
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@48
    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    #@4b
    move-result-object v10

    #@4c
    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@4e
    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    #@51
    move-result-object v11

    #@52
    invoke-virtual {v10, v11, v1, v13, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@55
    .line 2141
    new-instance v1, Landroid/content/IntentFilter;

    #@57
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@5a
    .line 2142
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v10, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    #@5d
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@60
    .line 2144
    :try_start_0
    const-string/jumbo v10, "application/vnd.omaloc-supl-init"

    #@63
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    #@66
    .line 2148
    :goto_0
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@68
    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    #@6b
    move-result-object v10

    #@6c
    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@6e
    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    #@71
    move-result-object v11

    #@72
    invoke-virtual {v10, v11, v1, v13, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@75
    .line 2154
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    #@77
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@7a
    .line 2155
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v10, "com.android.internal.location.ALARM_WAKEUP"

    #@7d
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@80
    .line 2156
    const-string/jumbo v10, "com.android.internal.location.ALARM_TIMEOUT"

    #@83
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@86
    .line 2157
    const-string/jumbo v10, "android.os.action.POWER_SAVE_MODE_CHANGED"

    #@89
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@8c
    .line 2158
    const-string/jumbo v10, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@8f
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@92
    .line 2159
    const-string/jumbo v10, "android.intent.action.SCREEN_OFF"

    #@95
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@98
    .line 2160
    const-string/jumbo v10, "android.intent.action.SCREEN_ON"

    #@9b
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@9e
    .line 2161
    const-string/jumbo v10, "android.intent.action.SIM_STATE_CHANGED"

    #@a1
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@a4
    .line 2162
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@a6
    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    #@a9
    move-result-object v10

    #@aa
    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@ac
    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    #@af
    move-result-object v11

    #@b0
    invoke-virtual {v10, v11, v1, v13, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@b3
    .line 2166
    new-instance v7, Landroid/net/NetworkRequest$Builder;

    #@b5
    invoke-direct {v7}, Landroid/net/NetworkRequest$Builder;-><init>()V

    #@b8
    .line 2167
    .local v7, "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    const/4 v10, 0x0

    #@b9
    invoke-virtual {v7, v10}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    #@bc
    .line 2168
    invoke-virtual {v7, v14}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    #@bf
    .line 2169
    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    #@c2
    move-result-object v6

    #@c3
    .line 2170
    .local v6, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@c5
    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get2(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;

    #@c8
    move-result-object v10

    #@c9
    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@cb
    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@ce
    move-result-object v11

    #@cf
    invoke-virtual {v10, v6, v11}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@d2
    .line 2174
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@d4
    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    #@d7
    move-result-object v10

    #@d8
    const-string/jumbo v11, "location"

    #@db
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@de
    move-result-object v2

    #@df
    check-cast v2, Landroid/location/LocationManager;

    #@e1
    .line 2175
    .local v2, "locManager":Landroid/location/LocationManager;
    const-wide/16 v4, 0x0

    #@e3
    .line 2176
    .local v4, "minTime":J
    const/4 v3, 0x0

    #@e4
    .line 2177
    .local v3, "minDistance":F
    const/4 v8, 0x0

    #@e5
    .line 2179
    .local v8, "oneShot":Z
    const-string/jumbo v10, "passive"

    #@e8
    .line 2178
    invoke-static {v10, v4, v5, v3, v8}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    #@eb
    move-result-object v9

    #@ec
    .line 2185
    .local v9, "request":Landroid/location/LocationRequest;
    invoke-virtual {v9, v14}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    #@ef
    .line 2188
    new-instance v10, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    #@f1
    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@f3
    invoke-direct {v10, v11, v13}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;)V

    #@f6
    .line 2189
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    #@f9
    move-result-object v11

    #@fa
    .line 2186
    invoke-virtual {v2, v9, v10, v11}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    #@fd
    .line 2117
    return-void

    #@fe
    .line 2145
    .end local v2    # "locManager":Landroid/location/LocationManager;
    .end local v3    # "minDistance":F
    .end local v4    # "minTime":J
    .end local v6    # "networkRequest":Landroid/net/NetworkRequest;
    .end local v7    # "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    .end local v8    # "oneShot":Z
    .end local v9    # "request":Landroid/location/LocationRequest;
    :catch_0
    move-exception v0

    #@ff
    .line 2146
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v10, "GnssLocationProvider"

    #@102
    const-string/jumbo v11, "Malformed SUPL init mime type"

    #@105
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@108
    goto/16 :goto_0

    #@10a
    .line 2149
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    #@10d
    move-result v10

    #@10e
    if-eqz v10, :cond_0

    #@110
    .line 2150
    const-string/jumbo v10, "GnssLocationProvider"

    #@113
    const-string/jumbo v11, "Skipped registration for SMS/WAP-PUSH messages because AGPS Ril in GPS HAL is not supported"

    #@116
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@119
    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    .line 2058
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    .line 2059
    .local v1, "message":I
    packed-switch v1, :pswitch_data_0

    #@7
    .line 2104
    :cond_0
    :goto_0
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@9
    if-ne v2, v5, :cond_1

    #@b
    .line 2106
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@d
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get13(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@14
    .line 2107
    const-string/jumbo v2, "GnssLocationProvider"

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "WakeLock released by handleMessage("

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, ", "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    const-string/jumbo v4, ", "

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 2108
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3d
    .line 2107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    .line 2108
    const-string/jumbo v4, ")"

    #@44
    .line 2107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 2057
    :cond_1
    return-void

    #@50
    .line 2061
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@52
    if-ne v2, v5, :cond_2

    #@54
    .line 2062
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@56
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap16(Lcom/android/server/location/GnssLocationProvider;)V

    #@59
    goto :goto_0

    #@5a
    .line 2064
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@5c
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap14(Lcom/android/server/location/GnssLocationProvider;)V

    #@5f
    goto :goto_0

    #@60
    .line 2068
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@62
    check-cast v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    #@64
    .line 2069
    .local v0, "gpsRequest":Lcom/android/server/location/GnssLocationProvider$GpsRequest;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@66
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    #@68
    iget-object v4, v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    #@6a
    invoke-static {v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap20(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    #@6d
    goto :goto_0

    #@6e
    .line 2072
    .end local v0    # "gpsRequest":Lcom/android/server/location/GnssLocationProvider$GpsRequest;
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@70
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@72
    check-cast v2, Landroid/net/Network;

    #@74
    invoke-static {v3, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap22(Lcom/android/server/location/GnssLocationProvider;Landroid/net/Network;)V

    #@77
    goto :goto_0

    #@78
    .line 2075
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@7a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7c
    check-cast v2, Ljava/net/InetAddress;

    #@7e
    invoke-static {v3, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap19(Lcom/android/server/location/GnssLocationProvider;Ljava/net/InetAddress;)V

    #@81
    goto :goto_0

    #@82
    .line 2078
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@84
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@86
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap18(Lcom/android/server/location/GnssLocationProvider;I)V

    #@89
    goto/16 :goto_0

    #@8b
    .line 2081
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@8d
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap17(Lcom/android/server/location/GnssLocationProvider;)V

    #@90
    goto/16 :goto_0

    #@92
    .line 2084
    :pswitch_7
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@94
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get12(Lcom/android/server/location/GnssLocationProvider;)Z

    #@97
    move-result v2

    #@98
    if-eqz v2, :cond_0

    #@9a
    .line 2085
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@9c
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap15(Lcom/android/server/location/GnssLocationProvider;)V

    #@9f
    goto/16 :goto_0

    #@a1
    .line 2089
    :pswitch_8
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@a3
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-set1(Lcom/android/server/location/GnssLocationProvider;I)I

    #@a6
    goto/16 :goto_0

    #@a8
    .line 2092
    :pswitch_9
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@aa
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-set0(Lcom/android/server/location/GnssLocationProvider;I)I

    #@ad
    goto/16 :goto_0

    #@af
    .line 2095
    :pswitch_a
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@b1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b3
    check-cast v2, Landroid/location/Location;

    #@b5
    invoke-static {v3, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap21(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V

    #@b8
    goto/16 :goto_0

    #@ba
    .line 2098
    :pswitch_b
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@bc
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@be
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    #@c1
    move-result-object v3

    #@c2
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap32(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    #@c5
    goto/16 :goto_0

    #@c7
    .line 2101
    :pswitch_c
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->handleInitialize()V

    #@ca
    goto/16 :goto_0

    #@cc
    .line 2059
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
