.class public abstract Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;,
        Landroid/util/NtpTrustedTime$NtpConfig;,
        Landroid/util/NtpTrustedTime$TimeResult;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOGD:Z = false

.field public static final blacklist NTP_SETTING_SERVER_NAME_DELIMITER:Ljava/lang/String; = "|"

.field private static final blacklist NTP_SETTING_SERVER_NAME_DELIMITER_REGEXP:Ljava/lang/String; = "\\|"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static final blacklist URI_SCHEME_NTP:Ljava/lang/String; = "ntp"

.field private static greylist-max-o sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private final blacklist mConfigLock:Ljava/lang/Object;

.field private volatile blacklist mLastSuccessfulNtpServerUri:Ljava/net/URI;

.field private blacklist mNtpConfigForTests:Landroid/util/NtpTrustedTime$NtpConfig;

.field private final blacklist mRefreshLock:Ljava/lang/Object;

.field private volatile blacklist mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smvalidateNtpServerUri(Ljava/net/URI;)Ljava/net/URI;
    .registers 1

    invoke-static {p0}, Landroid/util/NtpTrustedTime;->validateNtpServerUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mRefreshLock:Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mConfigLock:Ljava/lang/Object;

    .line 250
    return-void
.end method

.method private blacklist forceRefreshLocked(Landroid/net/Network;)Z
    .registers 9
    .param p1, "network"    # Landroid/net/Network;

    .line 297
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {p0, p1}, Landroid/util/NtpTrustedTime;->isNetworkConnected(Landroid/net/Network;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 301
    return v1

    .line 304
    :cond_b
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getNtpConfig()Landroid/util/NtpTrustedTime$NtpConfig;

    move-result-object v0

    .line 305
    .local v0, "ntpConfig":Landroid/util/NtpTrustedTime$NtpConfig;
    if-nez v0, :cond_12

    .line 308
    return v1

    .line 316
    :cond_12
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConfig;->getServerUris()Ljava/util/List;

    move-result-object v2

    .line 349
    .local v2, "unorderedServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v3, "orderedServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URI;

    .line 351
    .local v5, "serverUri":Ljava/net/URI;
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mLastSuccessfulNtpServerUri:Ljava/net/URI;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 352
    invoke-interface {v3, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3a

    .line 354
    :cond_37
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    .end local v5    # "serverUri":Ljava/net/URI;
    :goto_3a
    goto :goto_1f

    .line 358
    :cond_3b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URI;

    .line 359
    .restart local v5    # "serverUri":Ljava/net/URI;
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConfig;->getTimeout()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {p0, p1, v5, v6}, Landroid/util/NtpTrustedTime;->queryNtpServer(Landroid/net/Network;Ljava/net/URI;Ljava/time/Duration;)Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v6

    .line 361
    .local v6, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-eqz v6, :cond_5b

    .line 362
    iput-object v5, p0, Landroid/util/NtpTrustedTime;->mLastSuccessfulNtpServerUri:Ljava/net/URI;

    .line 363
    iput-object v6, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 364
    const/4 v1, 0x1

    return v1

    .line 366
    .end local v5    # "serverUri":Ljava/net/URI;
    .end local v6    # "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    :cond_5b
    goto :goto_3f

    .line 367
    :cond_5c
    return v1
.end method

.method public static declared-synchronized greylist getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroid/util/NtpTrustedTime;

    monitor-enter v0

    .line 254
    :try_start_3
    sget-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v1, :cond_13

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 256
    .local v1, "appContext":Landroid/content/Context;
    new-instance v2, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;-><init>(Landroid/content/Context;Landroid/util/NtpTrustedTime-IA;)V

    sput-object v2, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 258
    .end local v1    # "appContext":Landroid/content/Context;
    :cond_13
    sget-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    .line 253
    .end local p0    # "context":Landroid/content/Context;
    :catchall_17
    move-exception p0

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private blacklist getNtpConfig()Landroid/util/NtpTrustedTime$NtpConfig;
    .registers 3

    .line 371
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_3
    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mNtpConfigForTests:Landroid/util/NtpTrustedTime$NtpConfig;

    if-eqz v1, :cond_b

    .line 373
    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mNtpConfigForTests:Landroid/util/NtpTrustedTime$NtpConfig;

    monitor-exit v0

    return-object v1

    .line 375
    :cond_b
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getNtpConfigInternal()Landroid/util/NtpTrustedTime$NtpConfig;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 376
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static blacklist parseNtpServerSetting(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p0, "ntpServerSetting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 549
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 550
    return-object v1

    .line 552
    :cond_8
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "values":[Ljava/lang/String;
    array-length v2, v0

    if-nez v2, :cond_12

    .line 554
    return-object v1

    .line 557
    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v2, "uris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    array-length v3, v0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_71

    aget-object v5, v0, v4

    .line 559
    .local v5, "value":Ljava/lang/String;
    const-string v6, "ntp:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "NtpTrustedTime"

    if-eqz v6, :cond_47

    .line 561
    :try_start_27
    invoke-static {v5}, Landroid/util/NtpTrustedTime;->parseNtpUriStrict(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/net/URISyntaxException; {:try_start_27 .. :try_end_2e} :catch_2f

    .line 565
    goto :goto_56

    .line 562
    :catch_2f
    move-exception v3

    .line 563
    .local v3, "e":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rejected NTP uri setting="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    return-object v1

    .line 570
    .end local v3    # "e":Ljava/net/URISyntaxException;
    :cond_47
    :try_start_47
    new-instance v6, Ljava/net/URI;

    const-string v8, "ntp"

    invoke-direct {v6, v8, v5, v1, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .local v6, "uri":Ljava/net/URI;
    invoke-static {v6}, Landroid/util/NtpTrustedTime;->validateNtpServerUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v8

    .line 575
    .local v8, "validatedUri":Ljava/net/URI;
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/net/URISyntaxException; {:try_start_47 .. :try_end_55} :catch_59

    .line 579
    nop

    .line 558
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "uri":Ljava/net/URI;
    .end local v8    # "validatedUri":Ljava/net/URI;
    :goto_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 576
    .restart local v5    # "value":Ljava/lang/String;
    :catch_59
    move-exception v3

    .line 577
    .restart local v3    # "e":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rejected NTP legacy setting="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    return-object v1

    .line 582
    .end local v3    # "e":Ljava/net/URISyntaxException;
    .end local v5    # "value":Ljava/lang/String;
    :cond_71
    return-object v2
.end method

.method public static blacklist parseNtpUriStrict(Ljava/lang/String;)Ljava/net/URI;
    .registers 3
    .param p0, "ntpServerUriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, "unvalidatedUri":Ljava/net/URI;
    invoke-static {v0}, Landroid/util/NtpTrustedTime;->validateNtpServerUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist validateNtpServerUri(Ljava/net/URI;)Ljava/net/URI;
    .registers 5
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 596
    const-string v0, "ntp"

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 599
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 603
    return-object p0

    .line 601
    :cond_1d
    new-instance v1, Ljava/net/URISyntaxException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Missing host"

    invoke-direct {v1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 597
    .end local v0    # "host":Ljava/lang/String;
    :cond_29
    new-instance v0, Ljava/net/URISyntaxException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unrecognized scheme"

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_35
    new-instance v0, Ljava/net/URISyntaxException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Relative URI not supported"

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist clearCachedTimeResult()V
    .registers 3

    .line 509
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 511
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public greylist-max-r currentTimeMillis()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 456
    .local v0, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-eqz v0, :cond_9

    .line 463
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v1

    return-wide v1

    .line 457
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing authoritative time source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 608
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNtpConfig()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getNtpConfig()Landroid/util/NtpTrustedTime$NtpConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNtpConfigForTests="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mNtpConfigForTests:Landroid/util/NtpTrustedTime$NtpConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_87

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSuccessfulNtpServerUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mLastSuccessfulNtpServerUri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 616
    .local v0, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    if-eqz v0, :cond_86

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeResult.getAgeMillis()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 619
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 618
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    :cond_86
    return-void

    .line 611
    .end local v0    # "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    :catchall_87
    move-exception v1

    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v1
.end method

.method public greylist-max-r forceRefresh()Z
    .registers 4

    .line 274
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getDefaultNetwork()Landroid/net/Network;

    move-result-object v1

    .line 276
    .local v1, "network":Landroid/net/Network;
    if-nez v1, :cond_c

    .line 278
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 281
    :cond_c
    invoke-direct {p0, v1}, Landroid/util/NtpTrustedTime;->forceRefreshLocked(Landroid/net/Network;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 282
    .end local v1    # "network":Landroid/net/Network;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public greylist-max-o forceRefresh(Landroid/net/Network;)Z
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 287
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_6
    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime;->forceRefreshLocked(Landroid/net/Network;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 292
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public greylist-max-o getCacheAge()J
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 440
    .local v0, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-eqz v0, :cond_e

    .line 441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    .line 443
    :cond_e
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1
.end method

.method public greylist-max-r getCachedNtpTime()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 476
    .local v0, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-nez v0, :cond_7

    const-wide/16 v1, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v1

    :goto_b
    return-wide v1
.end method

.method public greylist-max-r getCachedNtpTimeReference()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 488
    .local v0, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-nez v0, :cond_7

    const-wide/16 v1, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v1

    :goto_b
    return-wide v1
.end method

.method public blacklist getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;
    .registers 2

    .line 497
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    return-object v0
.end method

.method public abstract blacklist getDefaultNetwork()Landroid/net/Network;
.end method

.method public abstract blacklist getNtpConfigInternal()Landroid/util/NtpTrustedTime$NtpConfig;
.end method

.method public greylist-max-r hasCache()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public abstract blacklist isNetworkConnected(Landroid/net/Network;)Z
.end method

.method public abstract blacklist queryNtpServer(Landroid/net/Network;Ljava/net/URI;Ljava/time/Duration;)Landroid/util/NtpTrustedTime$TimeResult;
.end method

.method public blacklist setCachedTimeResult(Landroid/util/NtpTrustedTime$TimeResult;)V
    .registers 4
    .param p1, "timeResult"    # Landroid/util/NtpTrustedTime$TimeResult;

    .line 502
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_3
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 504
    monitor-exit v0

    .line 505
    return-void

    .line 504
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V
    .registers 4
    .param p1, "ntpConfig"    # Landroid/util/NtpTrustedTime$NtpConfig;

    .line 266
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mNtpConfigForTests:Landroid/util/NtpTrustedTime$NtpConfig;

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
