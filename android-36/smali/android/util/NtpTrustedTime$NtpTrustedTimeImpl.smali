.class final Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;
.super Landroid/util/NtpTrustedTime;
.source "NtpTrustedTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NtpTrustedTimeImpl"
.end annotation


# instance fields
.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 635
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;-><init>()V

    .line 636
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    .line 637
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/util/NtpTrustedTime-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized blacklist getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    monitor-enter p0

    .line 709
    :try_start_1
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    .line 710
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 712
    .end local p0    # "this":Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;
    :cond_11
    nop

    .line 715
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 708
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static blacklist saturatedCast(J)I
    .registers 4
    .param p0, "longValue"    # J

    .line 743
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    .line 744
    const v0, 0x7fffffff

    return v0

    .line 746
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_15

    .line 747
    const/high16 v0, -0x80000000

    return v0

    .line 749
    :cond_15
    long-to-int v0, p0

    return v0
.end method


# virtual methods
.method public blacklist getDefaultNetwork()Landroid/net/Network;
    .registers 3

    .line 677
    invoke-direct {p0}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 678
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_8

    .line 679
    const/4 v1, 0x0

    return-object v1

    .line 681
    :cond_8
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getNtpConfigInternal()Landroid/util/NtpTrustedTime$NtpConfig;
    .registers 11

    .line 643
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 644
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 647
    .local v1, "res":Landroid/content/res/Resources;
    nop

    .line 648
    const-string v2, "ntp_server"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "serverGlobalSetting":Ljava/lang/String;
    invoke-static {v2}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->parseNtpServerSetting(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 652
    .local v3, "settingsServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    if-eqz v3, :cond_1b

    .line 653
    move-object v4, v3

    .local v4, "ntpServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    goto :goto_3f

    .line 655
    .end local v4    # "ntpServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :cond_1b
    nop

    .line 656
    const v4, 0x10700a4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, "configValues":[Ljava/lang/String;
    :try_start_23
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v5, "configServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    array-length v6, v4

    const/4 v7, 0x0

    :goto_2a
    if-ge v7, v6, :cond_39

    aget-object v8, v4, v7

    .line 660
    .local v8, "configValue":Ljava/lang/String;
    invoke-static {v8}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->parseNtpUriStrict(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/net/URISyntaxException; {:try_start_23 .. :try_end_35} :catch_3c

    .line 659
    nop

    .end local v8    # "configValue":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 662
    :cond_39
    nop

    .line 665
    .local v5, "ntpServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    move-object v4, v5

    goto :goto_3f

    .line 663
    .end local v5    # "ntpServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :catch_3c
    move-exception v5

    .line 664
    .local v5, "e":Ljava/net/URISyntaxException;
    const/4 v6, 0x0

    move-object v4, v6

    .line 668
    .end local v5    # "e":Ljava/net/URISyntaxException;
    .local v4, "ntpServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :goto_3f
    nop

    .line 669
    const v5, 0x10e00f9

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 670
    .local v5, "defaultTimeoutMillis":I
    const-string v6, "ntp_timeout"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v6

    .line 672
    .local v6, "timeout":Ljava/time/Duration;
    if-nez v4, :cond_56

    const/4 v7, 0x0

    goto :goto_5b

    :cond_56
    new-instance v7, Landroid/util/NtpTrustedTime$NtpConfig;

    invoke-direct {v7, v4, v6}, Landroid/util/NtpTrustedTime$NtpConfig;-><init>(Ljava/util/List;Ljava/time/Duration;)V

    :goto_5b
    return-object v7
.end method

.method public blacklist isNetworkConnected(Landroid/net/Network;)Z
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 686
    invoke-direct {p0}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 687
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 688
    return v1

    .line 690
    :cond_8
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 701
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_17

    .line 705
    :cond_15
    const/4 v1, 0x1

    return v1

    .line 703
    :cond_17
    :goto_17
    return v1
.end method

.method public blacklist queryNtpServer(Landroid/net/Network;Ljava/net/URI;Ljava/time/Duration;)Landroid/util/NtpTrustedTime$TimeResult;
    .registers 17
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "ntpServerUri"    # Ljava/net/URI;
    .param p3, "timeout"    # Ljava/time/Duration;

    .line 723
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 724
    .local v0, "client":Landroid/net/SntpClient;
    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "serverName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URI;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    .line 726
    const/16 v2, 0x7b

    goto :goto_17

    :cond_13
    invoke-virtual {p2}, Ljava/net/URI;->getPort()I

    move-result v2

    .line 727
    .local v2, "port":I
    :goto_17
    invoke-virtual/range {p3 .. p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->saturatedCast(J)I

    move-result v3

    .line 728
    .local v3, "timeoutMillis":I
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;IILandroid/net/Network;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 729
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->saturatedCast(J)I

    move-result v11

    .line 730
    .local v11, "ntpUncertaintyMillis":I
    invoke-virtual {v0}, Landroid/net/SntpClient;->getServerSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v12

    .line 731
    .local v12, "ntpServerSocketAddress":Ljava/net/InetSocketAddress;
    new-instance v6, Landroid/util/NtpTrustedTime$TimeResult;

    .line 732
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v9

    invoke-direct/range {v6 .. v12}, Landroid/util/NtpTrustedTime$TimeResult;-><init>(JJILjava/net/InetSocketAddress;)V

    .line 731
    return-object v6

    .line 735
    .end local v11    # "ntpUncertaintyMillis":I
    .end local v12    # "ntpServerSocketAddress":Ljava/net/InetSocketAddress;
    :cond_42
    const/4 v4, 0x0

    return-object v4
.end method
