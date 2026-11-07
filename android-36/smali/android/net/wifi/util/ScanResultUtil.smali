.class public Landroid/net/wifi/util/ScanResultUtil;
.super Ljava/lang/Object;
.source "ScanResultUtil.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ScanResultUtil"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createNetworkFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .registers 4
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 322
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 323
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/util/ScanResultUtil;->createQuotedSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 324
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v1

    .line 325
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/SecurityParams;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 326
    const/4 v2, 0x0

    return-object v2

    .line 328
    :cond_19
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(Ljava/util/List;)V

    .line 329
    return-object v0
.end method

.method public static blacklist createQuotedSsid(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "ssid"    # Ljava/lang/String;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist dumpScanResults(Ljava/io/PrintWriter;Ljava/util/List;J)V
    .registers 18
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "nowMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;J)V"
        }
    .end annotation

    .line 442
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p1, :cond_124

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_124

    .line 443
    const-string v0, "    BSSID              Frequency      RSSI           Age(sec)     SSID                                 Flags"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_124

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 446
    .local v1, "r":Landroid/net/wifi/ScanResult;
    iget-wide v2, v1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 448
    .local v2, "timeStampMs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2c

    .line 449
    const-string v4, "___?___"

    move-object v8, v4

    .local v4, "age":Ljava/lang/String;
    goto :goto_59

    .line 450
    .end local v4    # "age":Ljava/lang/String;
    :cond_2c
    cmp-long v4, p2, v2

    if-gez v4, :cond_34

    .line 451
    const-string v4, "  0.000"

    move-object v8, v4

    .restart local v4    # "age":Ljava/lang/String;
    goto :goto_59

    .line 452
    .end local v4    # "age":Ljava/lang/String;
    :cond_34
    const-wide/32 v4, 0xf4240

    sub-long v4, p2, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_41

    .line 453
    const-string v4, ">1000.0"

    move-object v8, v4

    .restart local v4    # "age":Ljava/lang/String;
    goto :goto_59

    .line 455
    .end local v4    # "age":Ljava/lang/String;
    :cond_41
    sub-long v4, p2, v2

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%3.3f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    .line 457
    .local v8, "age":Ljava/lang/String;
    :goto_59
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v4, :cond_60

    const-string v4, ""

    goto :goto_62

    :cond_60
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 458
    .local v4, "ssid":Ljava/lang/String;
    :goto_62
    const-string v5, ""

    .line 459
    .local v5, "rssiInfo":Ljava/lang/String;
    iget-object v6, v1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    const/4 v7, 0x0

    if-nez v6, :cond_6b

    move v6, v7

    goto :goto_6e

    :cond_6b
    iget-object v6, v1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    array-length v6, v6

    :goto_6e
    move v11, v6

    .line 460
    .local v11, "numRadioChainInfos":I
    const/4 v6, 0x1

    if-ne v11, v6, :cond_98

    .line 461
    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v9, v9, v7

    iget v9, v9, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    .line 462
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v7, v10, v7

    iget v7, v7, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v9, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 461
    const-string v7, "%5d(%1d:%3d)       "

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    goto :goto_e6

    .line 463
    :cond_98
    const/4 v9, 0x2

    if-ne v11, v9, :cond_d5

    .line 464
    iget v9, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v10, v10, v7

    iget v10, v10, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    .line 465
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v12, v1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v7, v12, v7

    iget v7, v7, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v12, v1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v12, v12, v6

    iget v12, v12, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    .line 466
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v6, v13, v6

    iget v6, v6, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v9, v10, v7, v12, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 464
    const-string v7, "%5d(%1d:%3d/%1d:%3d)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    goto :goto_e6

    .line 468
    :cond_d5
    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%9d         "

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    .line 470
    .end local v5    # "rssiInfo":Ljava/lang/String;
    .local v7, "rssiInfo":Ljava/lang/String;
    :goto_e6
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 471
    .local v5, "capabilities":Ljava/lang/String;
    iget-wide v9, v1, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v12, 0x1

    and-long/2addr v9, v12

    cmp-long v6, v9, v12

    if-nez v6, :cond_106

    .line 473
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "[PASSPOINT]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    goto :goto_107

    .line 471
    :cond_106
    move-object v10, v5

    .line 475
    .end local v5    # "capabilities":Ljava/lang/String;
    .local v10, "capabilities":Ljava/lang/String;
    :goto_107
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v6, v1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 477
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v9

    .line 480
    const-string v12, "%1.32s"

    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v5

    .line 475
    const-string v6, "  %17s  %9d  %18s   %7s    %-32s  %s\n"

    invoke-virtual {p0, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 482
    .end local v1    # "r":Landroid/net/wifi/ScanResult;
    .end local v2    # "timeStampMs":J
    .end local v4    # "ssid":Ljava/lang/String;
    .end local v7    # "rssiInfo":Ljava/lang/String;
    .end local v8    # "age":Ljava/lang/String;
    .end local v10    # "capabilities":Ljava/lang/String;
    .end local v11    # "numRadioChainInfos":I
    goto/16 :goto_11

    .line 484
    :cond_124
    return-void
.end method

.method public static blacklist generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .registers 6
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/SecurityParams;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/SecurityParams;>;"
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForOweTransitionNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    .line 343
    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    return-object v0

    .line 348
    :cond_1c
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 349
    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    return-object v0

    .line 352
    :cond_2a
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 353
    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    return-object v0

    .line 359
    :cond_38
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 360
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    return-object v0

    .line 366
    :cond_47
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWapiPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 367
    const/4 v1, 0x7

    invoke-static {v1}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    return-object v0

    .line 373
    :cond_56
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWapiCertNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 374
    const/16 v1, 0x8

    invoke-static {v1}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    return-object v0

    .line 380
    :cond_66
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz v1, :cond_83

    .line 381
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 382
    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    return-object v0

    .line 387
    :cond_83
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 388
    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    return-object v0

    .line 391
    :cond_91
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 392
    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    return-object v0

    .line 395
    :cond_9f
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForDppNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 396
    const/16 v1, 0xd

    invoke-static {v1}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    return-object v0

    .line 401
    :cond_af
    const/4 v1, 0x0

    .line 403
    .local v1, "isEapNetworkAndNotSuiteB":Z
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForEapSuiteBNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 404
    const/4 v2, 0x5

    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    .line 406
    :cond_bf
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWpa3EnterpriseTransitionNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x3

    if-eqz v2, :cond_d8

    .line 407
    invoke-static {v4}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    const/4 v1, 0x1

    goto :goto_f5

    .line 412
    :cond_d8
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWpa3EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 413
    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    const/4 v1, 0x1

    goto :goto_f5

    .line 416
    :cond_e7
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWpa2EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 417
    invoke-static {v4}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    const/4 v1, 0x1

    .line 421
    :cond_f5
    :goto_f5
    if-nez v1, :cond_f8

    .line 422
    return-object v0

    .line 426
    :cond_f8
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isEapScanResultForPasspointR1R2Network(Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 427
    const/16 v2, 0xb

    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_107
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isEapScanResultForPasspointR3Network(Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_116

    .line 431
    const/16 v2, 0xc

    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_116
    return-object v0
.end method

.method public static blacklist isEapScanResultForPasspointR1R2Network(Landroid/net/wifi/ScanResult;)Z
    .registers 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 87
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v0

    return v0
.end method

.method public static blacklist isEapScanResultForPasspointR3Network(Landroid/net/wifi/ScanResult;)Z
    .registers 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 99
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForPmfMandatoryNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 101
    :cond_8
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v0

    return v0
.end method

.method public static blacklist isScanResultForDppNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 224
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "DPP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isScanResultForEapSuiteBNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 156
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SUITE_B_192"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 157
    const-string v1, "RSN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 158
    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 159
    const-string v1, "TKIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 160
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForPmfMandatoryNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 156
    :goto_31
    return v0
.end method

.method public static blacklist isScanResultForFilsSha256Network(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 208
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FILS-SHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isScanResultForFilsSha384Network(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 216
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FILS-SHA384"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 294
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 295
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 296
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWpa2EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 297
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 298
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWpa3EnterpriseTransitionNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 299
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWpa3EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 300
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWapiPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 301
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWapiCertNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 302
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForEapSuiteBNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 303
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForDppNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 304
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForUnknownAkmNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    const/4 v0, 0x1

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    .line 294
    :goto_45
    return v0
.end method

.method public static blacklist isScanResultForOpenOnlyNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2
    .param p0, "r"    # Landroid/net/wifi/ScanResult;

    .line 263
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 264
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 263
    :goto_f
    return v0
.end method

.method public static blacklist isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 176
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "OWE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isScanResultForOweOnlyNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2
    .param p0, "r"    # Landroid/net/wifi/ScanResult;

    .line 271
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForOweTransitionNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 272
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 271
    :goto_f
    return v0
.end method

.method public static blacklist isScanResultForOweTransitionNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 184
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "OWE_TRANSITION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isScanResultForPmfCapableNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 76
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[MFPC]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isScanResultForPmfMandatoryNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 72
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[MFPR]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 51
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isScanResultForPskOnlyNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2
    .param p0, "r"    # Landroid/net/wifi/ScanResult;

    .line 247
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 248
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 247
    :goto_f
    return v0
.end method

.method public static blacklist isScanResultForPskSaeTransitionNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 200
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static blacklist isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 192
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isScanResultForSaeOnlyNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2
    .param p0, "r"    # Landroid/net/wifi/ScanResult;

    .line 255
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 256
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 255
    :goto_f
    return v0
.end method

.method public static blacklist isScanResultForUnknownAkmNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 240
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isScanResultForWapiCertNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 68
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isScanResultForWapiPskNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 59
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 168
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isScanResultForWpa2EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 280
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP/SHA1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 281
    const-string v1, "EAP/SHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 282
    const-string v1, "FT/EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 283
    const-string v1, "EAP-FILS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 284
    :cond_28
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWpa3EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 285
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForWpa3EnterpriseTransitionNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    .line 280
    :goto_37
    return v0
.end method

.method public static blacklist isScanResultForWpa3EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 137
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP/SHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 138
    const-string v1, "EAP/SHA1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 139
    const-string v1, "RSN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 140
    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 141
    const-string v1, "TKIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 142
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForPmfMandatoryNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 143
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForPmfCapableNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    .line 137
    :goto_41
    return v0
.end method

.method public static blacklist isScanResultForWpa3EnterpriseTransitionNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 116
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP/SHA1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 117
    const-string v1, "EAP/SHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 118
    const-string v1, "RSN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 119
    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 120
    const-string v1, "TKIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 121
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForPmfMandatoryNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 122
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForPmfCapableNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    .line 116
    :goto_41
    return v0
.end method

.method public static blacklist isScanResultForWpaPersonalOnlyNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 232
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "RSN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static blacklist redactBssid(Landroid/net/MacAddress;I)Ljava/lang/String;
    .registers 8
    .param p0, "bssid"    # Landroid/net/MacAddress;
    .param p1, "numRedactedOctets"    # I

    .line 512
    if-nez p0, :cond_5

    .line 513
    const-string v0, ""

    return-object v0

    .line 515
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .local v0, "redactedBssid":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v1

    .line 518
    .local v1, "bssidBytes":[B
    const/4 v2, 0x6

    if-ltz p1, :cond_13

    if-le p1, v2, :cond_14

    .line 520
    :cond_13
    const/4 p1, 0x4

    .line 522
    :cond_14
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_3d

    .line 523
    if-ge v3, p1, :cond_1f

    .line 524
    const-string v4, "xx"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 526
    :cond_1f
    aget-byte v4, v1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :goto_32
    const/4 v4, 0x5

    if-eq v3, v4, :cond_3a

    .line 529
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 532
    .end local v3    # "i":I
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist validate(Landroid/net/wifi/ScanResult;)Z
    .registers 2
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 504
    if-eqz p0, :cond_10

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static blacklist validateScanResultList(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    .line 490
    .local p0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    const-string v1, "ScanResultUtil"

    if-eqz p0, :cond_3c

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3c

    .line 494
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 495
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-static {v3}, Landroid/net/wifi/util/ScanResultUtil;->validate(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ScanResult: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return v0

    .line 499
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_39
    goto :goto_10

    .line 500
    :cond_3a
    const/4 v0, 0x1

    return v0

    .line 491
    :cond_3c
    :goto_3c
    const-string v2, "Empty or null ScanResult list"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v0
.end method
