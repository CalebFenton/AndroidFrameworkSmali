.class Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectivityManagerDelegate"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 196
    const-class v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 208
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    nop

    .line 201
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 202
    return-void
.end method

.method private blacklist processActiveNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 5
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 215
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 216
    return-object v0

    .line 219
    :cond_4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 220
    return-object p1

    .line 227
    :cond_b
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_14

    .line 230
    return-object v0

    .line 233
    :cond_14
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1c

    .line 236
    return-object v0

    .line 238
    :cond_1c
    return-object p1
.end method


# virtual methods
.method protected blacklist getAllNetworksUnfiltered()[Landroid/net/Network;
    .registers 3

    .line 360
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 362
    .local v0, "networks":[Landroid/net/Network;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/Network;

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method blacklist getConnectionType(Landroid/net/Network;)I
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 346
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 347
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 348
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$smconvertToConnectionType(II)I

    move-result v1

    return v1

    .line 350
    :cond_19
    const/4 v1, 0x6

    return v1
.end method

.method blacklist getDefaultNetwork()Landroid/net/Network;
    .registers 11

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "defaultNetwork":Landroid/net/Network;
    nop

    .line 449
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_b

    .line 453
    return-object v0

    .line 460
    :cond_b
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 461
    .local v1, "defaultNetworkInfo":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 462
    return-object v2

    .line 464
    :cond_15
    invoke-static {p0, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$smgetAllNetworksFiltered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v2

    .line 465
    .local v2, "networks":[Landroid/net/Network;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_60

    aget-object v5, v2, v4

    .line 466
    .local v5, "network":Landroid/net/Network;
    invoke-virtual {p0, v5}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getRawNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 467
    .local v6, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_5d

    .line 468
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eq v7, v8, :cond_37

    .line 475
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/16 v8, 0x11

    if-ne v7, v8, :cond_5d

    .line 480
    :cond_37
    if-eqz v0, :cond_51

    .line 482
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_42

    .line 484
    goto :goto_5d

    .line 487
    :cond_42
    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getRawNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 488
    .local v7, "prevDefaultNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_51

    .line 489
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v9, :cond_51

    .line 491
    const/4 v0, 0x0

    .line 494
    .end local v7    # "prevDefaultNetworkInfo":Landroid/net/NetworkInfo;
    :cond_51
    if-eqz v0, :cond_5c

    .line 497
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "There should not be multiple connected networks of the same type. At least as of Android Marshmallow this is not supported. If this becomes supported this assertion may trigger."

    invoke-static {v7, v8}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_5c
    move-object v0, v5

    .line 465
    .end local v5    # "network":Landroid/net/Network;
    .end local v6    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 507
    :cond_60
    return-object v0
.end method

.method protected blacklist getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 399
    const/4 v0, 0x2

    .line 400
    .local v0, "retryCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_10

    .line 404
    :try_start_5
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v2

    .line 405
    :catch_c
    move-exception v2

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 409
    .end local v1    # "i":I
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 333
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getRawNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 334
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_14

    .line 338
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 340
    :cond_14
    return-object v0
.end method

.method blacklist getNetworkState(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    .registers 15
    .param p1, "wifiManagerDelegate"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "network":Landroid/net/Network;
    nop

    .line 249
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    .line 250
    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 254
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->processActiveNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 255
    if-nez v1, :cond_1e

    .line 256
    new-instance v2, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;-><init>(ZIIZLjava/lang/String;ZLjava/lang/String;)V

    return-object v2

    .line 259
    :cond_1e
    const/4 v2, 0x1

    if-eqz v0, :cond_71

    .line 260
    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 261
    .local v3, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v3, :cond_30

    .line 263
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_30

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    move v8, v2

    .line 265
    .local v8, "isMetered":Z
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->getDnsStatus(Landroid/net/Network;)Landroid/net/connectivity/org/chromium/net/DnsStatus;

    move-result-object v2

    .line 266
    .local v2, "dnsStatus":Landroid/net/connectivity/org/chromium/net/DnsStatus;
    if-nez v2, :cond_52

    .line 267
    new-instance v4, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .line 269
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 270
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 272
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, ""

    const/4 v5, 0x1

    invoke-direct/range {v4 .. v11}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;-><init>(ZIIZLjava/lang/String;ZLjava/lang/String;)V

    .line 267
    return-object v4

    .line 276
    :cond_52
    new-instance v4, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .line 278
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 279
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 281
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 282
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/DnsStatus;->getPrivateDnsActive()Z

    move-result v10

    .line 283
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/DnsStatus;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x1

    invoke-direct/range {v4 .. v11}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;-><init>(ZIIZLjava/lang/String;ZLjava/lang/String;)V

    .line 276
    return-object v4

    .line 286
    .end local v2    # "dnsStatus":Landroid/net/connectivity/org/chromium/net/DnsStatus;
    .end local v3    # "capabilities":Landroid/net/NetworkCapabilities;
    .end local v8    # "isMetered":Z
    :cond_71
    nop

    .line 288
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_b8

    .line 290
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a1

    const-string v2, ""

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 291
    new-instance v3, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .line 293
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 294
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    .line 296
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, ""

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;-><init>(ZIIZLjava/lang/String;ZLjava/lang/String;)V

    .line 291
    return-object v3

    .line 301
    :cond_a1
    new-instance v4, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .line 303
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 304
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 306
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->getWifiSsid()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, ""

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;-><init>(ZIIZLjava/lang/String;ZLjava/lang/String;)V

    .line 301
    return-object v4

    .line 310
    :cond_b8
    new-instance v5, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .line 311
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v8

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;-><init>(ZIIZLjava/lang/String;ZLjava/lang/String;)V

    .line 310
    return-object v5
.end method

.method blacklist getRawNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 320
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 321
    :catch_7
    move-exception v0

    .line 324
    .local v0, "firstException":Ljava/lang/NullPointerException;
    :try_start_8
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v1

    .line 325
    :catch_f
    move-exception v1

    .line 326
    .local v1, "secondException":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    return-object v2
.end method

.method blacklist registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .registers 4
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 437
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 438
    return-void
.end method

.method blacklist registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 419
    nop

    .line 420
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->allowDiskReads()Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    move-result-object v0

    .line 423
    .local v0, "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :try_start_5
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    .line 425
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V

    .line 420
    .end local v0    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :cond_f
    nop

    .line 429
    return-void

    .line 420
    .restart local v0    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :catchall_11
    move-exception v1

    if-eqz v0, :cond_1c

    :try_start_14
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    throw v1
.end method

.method blacklist unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 3
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 442
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 443
    return-void
.end method

.method protected blacklist vpnAccessible(Landroid/net/Network;)Z
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 373
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 376
    .local v0, "s":Ljava/net/Socket;
    :try_start_5
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->allowAllVmPolicies()Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_2c
    .catchall {:try_start_5 .. :try_end_9} :catchall_25

    .line 379
    .local v1, "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :try_start_9
    invoke-virtual {p1, v0}, Landroid/net/Network;->bindSocket(Ljava/net/Socket;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_19

    .line 380
    if-eqz v1, :cond_11

    :try_start_e
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_2c
    .catchall {:try_start_e .. :try_end_11} :catchall_25

    .line 385
    .end local v1    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    .line 388
    goto :goto_17

    .line 386
    :catch_15
    move-exception v1

    .line 389
    nop

    .line 390
    :goto_17
    const/4 v1, 0x1

    return v1

    .line 376
    .restart local v1    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :catchall_19
    move-exception v2

    if-eqz v1, :cond_24

    :try_start_1c
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v3

    :try_start_21
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "s":Ljava/net/Socket;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;
    .end local p1    # "network":Landroid/net/Network;
    :cond_24
    :goto_24
    throw v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_2c
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    .line 384
    .end local v1    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    .restart local v0    # "s":Ljava/net/Socket;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;
    .restart local p1    # "network":Landroid/net/Network;
    :catchall_25
    move-exception v1

    .line 385
    :try_start_26
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 388
    goto :goto_2b

    .line 386
    :catch_2a
    move-exception v2

    .line 389
    :goto_2b
    throw v1

    .line 380
    :catch_2c
    move-exception v1

    .line 382
    .local v1, "e":Ljava/io/IOException;
    nop

    .line 385
    :try_start_2e
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    .line 388
    goto :goto_33

    .line 386
    :catch_32
    move-exception v2

    .line 382
    :goto_33
    const/4 v2, 0x0

    return v2
.end method
