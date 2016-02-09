.class final Lcom/android/server/location/GpsLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1950
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@2
    .line 1951
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 1950
    return-void
.end method

.method private initialize()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 2010
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@3
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@5
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->-get2(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    #@8
    move-result-object v9

    #@9
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@b
    invoke-static {v10}, Lcom/android/server/location/GpsLocationProvider;->-get9(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;

    #@e
    move-result-object v10

    #@f
    invoke-static {v8, v9, v10}, Lcom/android/server/location/GpsLocationProvider;->-wrap25(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V

    #@12
    .line 2019
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@14
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->-get2(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    #@17
    move-result-object v8

    #@18
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@1b
    move-result-object v8

    #@1c
    .line 2020
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@1e
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->-get7(Lcom/android/server/location/GpsLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@21
    move-result-object v9

    #@22
    .line 2019
    invoke-virtual {v8, v9}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@25
    .line 2024
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->-wrap1()Z

    #@28
    move-result v8

    #@29
    if-eqz v8, :cond_1

    #@2b
    .line 2025
    new-instance v1, Landroid/content/IntentFilter;

    #@2d
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@30
    .line 2026
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "android.intent.action.DATA_SMS_RECEIVED"

    #@33
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@36
    .line 2027
    const-string/jumbo v8, "sms"

    #@39
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@3c
    .line 2028
    const-string/jumbo v8, "localhost"

    #@3f
    const-string/jumbo v9, "7275"

    #@42
    invoke-virtual {v1, v8, v9}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    #@45
    .line 2029
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@47
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->-get2(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    #@4a
    move-result-object v8

    #@4b
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@4d
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->-get1(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;

    #@50
    move-result-object v9

    #@51
    invoke-virtual {v8, v9, v1, v11, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@54
    .line 2031
    new-instance v1, Landroid/content/IntentFilter;

    #@56
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@59
    .line 2032
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    #@5c
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@5f
    .line 2034
    :try_start_0
    const-string/jumbo v8, "application/vnd.omaloc-supl-init"

    #@62
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    #@65
    .line 2038
    :goto_0
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@67
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->-get2(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    #@6a
    move-result-object v8

    #@6b
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@6d
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->-get1(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;

    #@70
    move-result-object v9

    #@71
    invoke-virtual {v8, v9, v1, v11, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@74
    .line 2044
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    #@76
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@79
    .line 2045
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "com.android.internal.location.ALARM_WAKEUP"

    #@7c
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@7f
    .line 2046
    const-string/jumbo v8, "com.android.internal.location.ALARM_TIMEOUT"

    #@82
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@85
    .line 2047
    const-string/jumbo v8, "android.net.conn.CONNECTIVITY_CHANGE"

    #@88
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@8b
    .line 2048
    const-string/jumbo v8, "android.os.action.POWER_SAVE_MODE_CHANGED"

    #@8e
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@91
    .line 2049
    const-string/jumbo v8, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@94
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@97
    .line 2050
    const-string/jumbo v8, "android.intent.action.SCREEN_OFF"

    #@9a
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@9d
    .line 2051
    const-string/jumbo v8, "android.intent.action.SCREEN_ON"

    #@a0
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@a3
    .line 2052
    const-string/jumbo v8, "android.intent.action.SIM_STATE_CHANGED"

    #@a6
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@a9
    .line 2053
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@ab
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->-get2(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    #@ae
    move-result-object v8

    #@af
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@b1
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->-get1(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;

    #@b4
    move-result-object v9

    #@b5
    invoke-virtual {v8, v9, v1, v11, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@b8
    .line 2057
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@ba
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->-get2(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    #@bd
    move-result-object v8

    #@be
    const-string/jumbo v9, "location"

    #@c1
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c4
    move-result-object v2

    #@c5
    check-cast v2, Landroid/location/LocationManager;

    #@c7
    .line 2058
    .local v2, "locManager":Landroid/location/LocationManager;
    const-wide/16 v4, 0x0

    #@c9
    .line 2059
    .local v4, "minTime":J
    const/4 v3, 0x0

    #@ca
    .line 2060
    .local v3, "minDistance":F
    const/4 v6, 0x0

    #@cb
    .line 2062
    .local v6, "oneShot":Z
    const-string/jumbo v8, "passive"

    #@ce
    .line 2061
    invoke-static {v8, v4, v5, v3, v6}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    #@d1
    move-result-object v7

    #@d2
    .line 2068
    .local v7, "request":Landroid/location/LocationRequest;
    const/4 v8, 0x1

    #@d3
    invoke-virtual {v7, v8}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    #@d6
    .line 2071
    new-instance v8, Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;

    #@d8
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@da
    invoke-direct {v8, v9, v11}, Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;)V

    #@dd
    .line 2072
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    #@e0
    move-result-object v9

    #@e1
    .line 2069
    invoke-virtual {v2, v7, v8, v9}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    #@e4
    .line 2007
    return-void

    #@e5
    .line 2035
    .end local v2    # "locManager":Landroid/location/LocationManager;
    .end local v3    # "minDistance":F
    .end local v4    # "minTime":J
    .end local v6    # "oneShot":Z
    .end local v7    # "request":Landroid/location/LocationRequest;
    :catch_0
    move-exception v0

    #@e6
    .line 2036
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v8, "GpsLocationProvider"

    #@e9
    const-string/jumbo v9, "Malformed SUPL init mime type"

    #@ec
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ef
    goto/16 :goto_0

    #@f1
    .line 2039
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->-get0()Z

    #@f4
    move-result v8

    #@f5
    if-eqz v8, :cond_0

    #@f7
    .line 2040
    const-string/jumbo v8, "GpsLocationProvider"

    #@fa
    const-string/jumbo v9, "Skipped registration for SMS/WAP-PUSH messages because AGPS Ril in GPS HAL is not supported"

    #@fd
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@100
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
    .line 1956
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    .line 1957
    .local v1, "message":I
    packed-switch v1, :pswitch_data_0

    #@7
    .line 1996
    :cond_0
    :goto_0
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@9
    if-ne v2, v5, :cond_1

    #@b
    .line 1998
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@d
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->-get11(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@14
    .line 1955
    :cond_1
    return-void

    #@15
    .line 1959
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@17
    if-ne v2, v5, :cond_2

    #@19
    .line 1960
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@1b
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->-wrap16(Lcom/android/server/location/GpsLocationProvider;)V

    #@1e
    goto :goto_0

    #@1f
    .line 1962
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@21
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->-wrap14(Lcom/android/server/location/GpsLocationProvider;)V

    #@24
    goto :goto_0

    #@25
    .line 1966
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@27
    check-cast v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;

    #@29
    .line 1967
    .local v0, "gpsRequest":Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@2b
    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    #@2d
    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    #@2f
    invoke-static {v2, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->-wrap18(Lcom/android/server/location/GpsLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    #@32
    goto :goto_0

    #@33
    .line 1970
    .end local v0    # "gpsRequest":Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@35
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@37
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@39
    check-cast v2, Landroid/net/NetworkInfo;

    #@3b
    invoke-static {v3, v4, v2}, Lcom/android/server/location/GpsLocationProvider;->-wrap20(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V

    #@3e
    goto :goto_0

    #@3f
    .line 1973
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@41
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->-wrap17(Lcom/android/server/location/GpsLocationProvider;)V

    #@44
    goto :goto_0

    #@45
    .line 1976
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@47
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->-get10(Lcom/android/server/location/GpsLocationProvider;)Z

    #@4a
    move-result v2

    #@4b
    if-eqz v2, :cond_0

    #@4d
    .line 1977
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@4f
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->-wrap15(Lcom/android/server/location/GpsLocationProvider;)V

    #@52
    goto :goto_0

    #@53
    .line 1981
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@55
    invoke-static {v2, v3}, Lcom/android/server/location/GpsLocationProvider;->-set1(Lcom/android/server/location/GpsLocationProvider;I)I

    #@58
    goto :goto_0

    #@59
    .line 1984
    :pswitch_7
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@5b
    invoke-static {v2, v3}, Lcom/android/server/location/GpsLocationProvider;->-set0(Lcom/android/server/location/GpsLocationProvider;I)I

    #@5e
    goto :goto_0

    #@5f
    .line 1987
    :pswitch_8
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@61
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@63
    check-cast v2, Landroid/location/Location;

    #@65
    invoke-static {v3, v2}, Lcom/android/server/location/GpsLocationProvider;->-wrap19(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V

    #@68
    goto :goto_0

    #@69
    .line 1990
    :pswitch_9
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@6b
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@6d
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->-get2(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    #@70
    move-result-object v3

    #@71
    invoke-static {v2, v3}, Lcom/android/server/location/GpsLocationProvider;->-wrap28(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V

    #@74
    goto :goto_0

    #@75
    .line 1993
    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->initialize()V

    #@78
    goto :goto_0

    #@79
    .line 1957
    nop

    #@7a
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
