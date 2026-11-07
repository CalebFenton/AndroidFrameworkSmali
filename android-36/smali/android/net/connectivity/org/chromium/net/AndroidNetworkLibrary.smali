.class Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;
.super Ljava/lang/Object;
.source "AndroidNetworkLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;,
        Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SetFileDescriptor;,
        Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SocketFd;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidNetworkLibrary"

.field private static blacklist sHaveAccessNetworkState:Ljava/lang/Boolean;

.field private static blacklist sHaveAccessWifiState:Ljava/lang/Boolean;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addTestRootCertificate([B)V
    .registers 1
    .param p0, "rootCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 143
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/X509Util;->addTestRootCertificate([B)V

    .line 144
    return-void
.end method

.method public static blacklist clearTestRootCertificates()V
    .registers 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->clearTestRootCertificates()V

    .line 154
    return-void
.end method

.method public static blacklist getCurrentDnsStatus()Landroid/net/connectivity/org/chromium/net/DnsStatus;
    .registers 1

    .line 456
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->getDnsStatus(Landroid/net/Network;)Landroid/net/connectivity/org/chromium/net/DnsStatus;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDnsStatus(Landroid/net/Network;)Landroid/net/connectivity/org/chromium/net/DnsStatus;
    .registers 8
    .param p0, "network"    # Landroid/net/Network;

    .line 465
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->haveAccessNetworkState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 466
    return-object v1

    .line 470
    :cond_8
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 471
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 472
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_17

    .line 473
    return-object v1

    .line 475
    :cond_17
    if-nez p0, :cond_1d

    .line 476
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    .line 478
    :cond_1d
    if-nez p0, :cond_20

    .line 479
    return-object v1

    .line 483
    :cond_20
    :try_start_20
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_24} :catch_3f

    .line 486
    .local v2, "linkProperties":Landroid/net/LinkProperties;
    nop

    .line 487
    if-nez v2, :cond_28

    .line 488
    return-object v1

    .line 490
    :cond_28
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 491
    .local v1, "dnsServersList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, "searchDomains":Ljava/lang/String;
    nop

    .line 493
    new-instance v4, Landroid/net/connectivity/org/chromium/net/DnsStatus;

    .line 495
    invoke-virtual {v2}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    move-result v5

    .line 496
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6, v3}, Landroid/net/connectivity/org/chromium/net/DnsStatus;-><init>(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    .line 493
    return-object v4

    .line 484
    .end local v1    # "dnsServersList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2    # "linkProperties":Landroid/net/LinkProperties;
    .end local v3    # "searchDomains":Ljava/lang/String;
    :catch_3f
    move-exception v2

    .line 485
    .local v2, "e":Ljava/lang/RuntimeException;
    return-object v1
.end method

.method public static blacklist getDnsStatusForNetwork(J)Landroid/net/connectivity/org/chromium/net/DnsStatus;
    .registers 4
    .param p0, "networkHandle"    # J

    .line 442
    :try_start_0
    invoke-static {p0, p1}, Landroid/net/Network;->fromNetworkHandle(J)Landroid/net/Network;

    move-result-object v0

    .line 443
    .local v0, "network":Landroid/net/Network;
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->getDnsStatus(Landroid/net/Network;)Landroid/net/connectivity/org/chromium/net/DnsStatus;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v1

    .line 444
    .end local v0    # "network":Landroid/net/Network;
    :catch_9
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getIsCaptivePortal()Z
    .registers 5

    .line 198
    nop

    .line 201
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 203
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    .line 205
    :cond_11
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    .line 206
    .local v2, "network":Landroid/net/Network;
    if-nez v2, :cond_18

    return v1

    .line 208
    :cond_18
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 209
    .local v3, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v3, :cond_28

    .line 210
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 209
    :goto_29
    return v1
.end method

.method private static blacklist getIsRoaming()Z
    .registers 3

    .line 179
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 180
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 181
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 182
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_14

    const/4 v2, 0x0

    return v2

    .line 183
    :cond_14
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    return v2
.end method

.method public static blacklist getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "extension"    # Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foo."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNetworkOperator()Ljava/lang/String;
    .registers 2

    .line 165
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 167
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_11

    const-string v1, ""

    return-object v1

    .line 168
    :cond_11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getUserAddedRoots()[[B
    .registers 1

    .line 133
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->getUserAddedRoots()[[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 9

    .line 220
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->haveAccessWifiState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_43

    .line 225
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 226
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 227
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    .line 231
    .local v2, "allNetworks":[Landroid/net/Network;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    .line 232
    .local v5, "network":Landroid/net/Network;
    nop

    .line 233
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 234
    .local v6, "networkCapabilities":Landroid/net/NetworkCapabilities;
    if-eqz v6, :cond_3f

    .line 235
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 237
    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v7

    .line 238
    .local v7, "transportInfo":Landroid/net/TransportInfo;
    if-eqz v7, :cond_3f

    instance-of v8, v7, Landroid/net/wifi/WifiInfo;

    if-eqz v8, :cond_3f

    .line 239
    move-object v1, v7

    check-cast v1, Landroid/net/wifi/WifiInfo;

    return-object v1

    .line 231
    .end local v5    # "network":Landroid/net/Network;
    .end local v6    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .end local v7    # "transportInfo":Landroid/net/TransportInfo;
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 243
    :cond_42
    return-object v1

    .line 248
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "allNetworks":[Landroid/net/Network;
    :cond_43
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 249
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 250
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    return-object v1

    .line 257
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_54
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-static {v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_6e

    .line 261
    const-string v1, "wifiInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    return-object v1

    .line 263
    :cond_6e
    return-object v1
.end method

.method public static blacklist getWifiSSID()Ljava/lang/String;
    .registers 3

    .line 276
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 278
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_15

    .line 279
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "ssid":Ljava/lang/String;
    if-eqz v1, :cond_15

    const-string v2, "<unknown ssid>"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 283
    return-object v1

    .line 286
    .end local v1    # "ssid":Ljava/lang/String;
    :cond_15
    const-string v1, ""

    return-object v1
.end method

.method public static blacklist getWifiSignalLevel(I)I
    .registers 7
    .param p0, "countBuckets"    # I

    .line 309
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 310
    return v1

    .line 312
    :cond_8
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_13

    .line 313
    return v1

    .line 319
    :cond_13
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->haveAccessWifiState()Z

    move-result v0

    const/high16 v2, -0x80000000

    if-eqz v0, :cond_27

    .line 320
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 321
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_22

    .line 322
    return v1

    .line 324
    :cond_22
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 325
    .local v0, "rssi":I
    goto :goto_42

    .line 326
    .end local v0    # "rssi":I
    :cond_27
    const/4 v0, 0x0

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    :try_start_28
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 329
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_38} :catch_50

    .line 337
    .end local v0    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    nop

    .line 338
    if-nez v3, :cond_3c

    .line 339
    return v1

    .line 341
    :cond_3c
    const-string v0, "newRssi"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 344
    .end local v3    # "intent":Landroid/content/Intent;
    .local v0, "rssi":I
    :goto_42
    if-ne v0, v2, :cond_45

    .line 345
    return v1

    .line 348
    :cond_45
    invoke-static {v0, p0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 349
    .local v2, "signalLevel":I
    if-ltz v2, :cond_4f

    if-lt v2, p0, :cond_4e

    goto :goto_4f

    .line 353
    :cond_4e
    return v2

    .line 350
    :cond_4f
    :goto_4f
    return v1

    .line 333
    .end local v2    # "signalLevel":I
    .local v0, "intent":Landroid/content/Intent;
    :catch_50
    move-exception v2

    .line 336
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return v1
.end method

.method private static blacklist haveAccessNetworkState()Z
    .registers 4

    .line 403
    sget-object v0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->sHaveAccessNetworkState:Ljava/lang/Boolean;

    if-nez v0, :cond_21

    .line 407
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 409
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 410
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 406
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v3, v1, v2}, Landroid/net/connectivity/org/chromium/base/ApiCompatibilityUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 405
    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->sHaveAccessNetworkState:Ljava/lang/Boolean;

    .line 413
    :cond_21
    sget-object v0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->sHaveAccessNetworkState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static blacklist haveAccessWifiState()Z
    .registers 4

    .line 419
    sget-object v0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->sHaveAccessWifiState:Ljava/lang/Boolean;

    if-nez v0, :cond_21

    .line 423
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 425
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 426
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 422
    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0, v3, v1, v2}, Landroid/net/connectivity/org/chromium/base/ApiCompatibilityUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 421
    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->sHaveAccessWifiState:Ljava/lang/Boolean;

    .line 429
    :cond_21
    sget-object v0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->sHaveAccessWifiState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static blacklist haveOnlyLoopbackAddresses()Z
    .registers 5

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_29

    .line 86
    .end local v0    # "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .local v2, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v2, :cond_9

    return v1

    .line 90
    :cond_9
    nop

    .line 92
    :goto_a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 93
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 95
    .local v0, "netIf":Ljava/net/NetworkInterface;
    :try_start_16
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3
    :try_end_20
    .catch Ljava/net/SocketException; {:try_start_16 .. :try_end_20} :catch_25

    if-nez v3, :cond_23

    return v1

    .line 98
    :cond_23
    nop

    .line 99
    .end local v0    # "netIf":Ljava/net/NetworkInterface;
    goto :goto_a

    .line 96
    .restart local v0    # "netIf":Ljava/net/NetworkInterface;
    :catch_25
    move-exception v3

    .line 97
    .local v3, "e":Ljava/net/SocketException;
    goto :goto_a

    .line 100
    .end local v0    # "netIf":Ljava/net/NetworkInterface;
    .end local v3    # "e":Ljava/net/SocketException;
    :cond_27
    const/4 v0, 0x1

    return v0

    .line 87
    .end local v2    # "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .local v0, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_29
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not get network interfaces: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AndroidNetworkLibrary"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1
.end method

.method private static blacklist isCleartextPermitted(Ljava/lang/String;)Z
    .registers 3
    .param p0, "host"    # Ljava/lang/String;

    .line 394
    :try_start_0
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;->getInstance()Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 395
    :catch_9
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;->getInstance()Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;->isCleartextTrafficPermitted()Z

    move-result v1

    return v1
.end method

.method static synthetic blacklist lambda$setWifiEnabledForTesting$0(Landroid/net/wifi/WifiManager;Z)V
    .registers 2
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "oldValue"    # Z

    .line 296
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method private static blacklist reportBadDefaultNetwork()Z
    .registers 3

    .line 507
    nop

    .line 510
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 511
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 512
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    .line 514
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 515
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist setWifiEnabledForTesting(Z)V
    .registers 4
    .param p0, "enabled"    # Z

    .line 293
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 294
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 295
    .local v1, "oldValue":Z
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 296
    new-instance v2, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager;Z)V

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method private static blacklist tagSocket(III)V
    .registers 8
    .param p0, "ifd"    # I
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    .line 659
    .local v0, "oldTag":I
    if-eq p2, v0, :cond_9

    .line 660
    invoke-static {p2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 662
    :cond_9
    const/4 v1, -0x1

    if-eq p1, v1, :cond_f

    .line 663
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ThreadStatsUid;->set(I)V

    .line 677
    :cond_f
    nop

    .line 681
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 682
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 685
    .local v3, "fd":Ljava/io/FileDescriptor;
    new-instance v4, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SocketFd;

    invoke-direct {v4, v3}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SocketFd;-><init>(Ljava/io/FileDescriptor;)V

    .line 687
    .local v4, "s":Ljava/net/Socket;
    invoke-static {v4}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    .line 688
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 690
    if-eqz v2, :cond_28

    .line 691
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 695
    :cond_28
    if-eq p2, v0, :cond_2d

    .line 696
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 698
    :cond_2d
    if-eq p1, v1, :cond_32

    .line 699
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/ThreadStatsUid;->clear()V

    .line 701
    :cond_32
    return-void
.end method

.method public static blacklist verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;
    .registers 6
    .param p0, "certChain"    # [[B
    .param p1, "authType"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .line 116
    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/X509Util;->verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;

    move-result-object v0
    :try_end_5
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_5} :catch_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_5} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 121
    :catch_6
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;

    invoke-direct {v2, v0}, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    return-object v2

    .line 119
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_d
    move-exception v1

    .line 120
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;

    invoke-direct {v2, v0}, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    return-object v2

    .line 117
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_14
    move-exception v1

    .line 118
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v2, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;

    invoke-direct {v2, v0}, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    return-object v2
.end method
