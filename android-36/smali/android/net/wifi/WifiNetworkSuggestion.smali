.class public final Landroid/net/wifi/WifiNetworkSuggestion;
.super Ljava/lang/Object;
.source "WifiNetworkSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiNetworkSuggestion$Builder;,
        Landroid/net/wifi/WifiNetworkSuggestion$MacRandomizationSetting;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RANDOMIZATION_NON_PERSISTENT:I = 0x1

.field public static final whitelist RANDOMIZATION_PERSISTENT:I


# instance fields
.field public final blacklist isAppInteractionRequired:Z

.field public final blacklist isInitialAutoJoinEnabled:Z

.field public final blacklist isUserAllowedToManuallyConnect:Z

.field public final blacklist isUserInteractionRequired:Z

.field public final blacklist passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field public final blacklist priorityGroup:I

.field public final blacklist wifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1384
    new-instance v0, Landroid/net/wifi/WifiNetworkSuggestion$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSuggestion$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiNetworkSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1358
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 1359
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isAppInteractionRequired:Z

    .line 1360
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserInteractionRequired:Z

    .line 1361
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserAllowedToManuallyConnect:Z

    .line 1362
    iput-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isInitialAutoJoinEnabled:Z

    .line 1363
    iput v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->priorityGroup:I

    .line 1364
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/hotspot2/PasspointConfiguration;ZZZZI)V
    .registers 8
    .param p1, "networkConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "passpointConfiguration"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .param p3, "isAppInteractionRequired"    # Z
    .param p4, "isUserInteractionRequired"    # Z
    .param p5, "isUserAllowedToManuallyConnect"    # Z
    .param p6, "isInitialAutoJoinEnabled"    # Z
    .param p7, "priorityGroup"    # I

    .line 1372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1375
    iput-object p2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 1377
    iput-boolean p3, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isAppInteractionRequired:Z

    .line 1378
    iput-boolean p4, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserInteractionRequired:Z

    .line 1379
    iput-boolean p5, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserAllowedToManuallyConnect:Z

    .line 1380
    iput-boolean p6, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isInitialAutoJoinEnabled:Z

    .line 1381
    iput p7, p0, Landroid/net/wifi/WifiNetworkSuggestion;->priorityGroup:I

    .line 1382
    return-void
.end method

.method static synthetic blacklist lambda$toString$0(Ljava/lang/StringBuilder;Landroid/net/wifi/SecurityParams;)V
    .registers 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "param"    # Landroid/net/wifi/SecurityParams;

    .line 1464
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result v0

    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration;->getSecurityTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->isAddedByAutoUpgrade()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "^"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    :cond_1b
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1407
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1432
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1433
    return v0

    .line 1435
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/WifiNetworkSuggestion;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1436
    return v2

    .line 1438
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/WifiNetworkSuggestion;

    .line 1439
    .local v1, "lhs":Landroid/net/wifi/WifiNetworkSuggestion;
    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSuggestion;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v3, :cond_13

    move v3, v0

    goto :goto_14

    :cond_13
    move v3, v2

    :goto_14
    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSuggestion;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v4, :cond_1a

    move v4, v0

    goto :goto_1b

    :cond_1a
    move v4, v2

    :goto_1b
    xor-int/2addr v3, v4

    if-eqz v3, :cond_1f

    .line 1440
    return v2

    .line 1443
    :cond_1f
    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_86

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1444
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_86

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1445
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getDefaultSecurityType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1446
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getDefaultSecurityType()Ljava/lang/String;

    move-result-object v4

    .line 1445
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_86

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1447
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getPasspointUniqueId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1448
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getPasspointUniqueId()Ljava/lang/String;

    move-result-object v4

    .line 1447
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_86

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-ne v3, v4, :cond_86

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    if-ne v3, v4, :cond_86

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1451
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getSubscriptionGroup()Landroid/os/ParcelUuid;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1452
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getSubscriptionGroup()Landroid/os/ParcelUuid;

    move-result-object v4

    .line 1451
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    goto :goto_87

    :cond_86
    move v0, v2

    .line 1443
    :goto_87
    return v0
.end method

.method public whitelist getBssid()Landroid/net/MacAddress;
    .registers 2

    .line 1504
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 1505
    const/4 v0, 0x0

    return-object v0

    .line 1507
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCarrierId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1707
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    return v0
.end method

.method public whitelist getEnterpriseConfig()Landroid/net/wifi/WifiEnterpriseConfig;
    .registers 2

    .line 1662
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1663
    const/4 v0, 0x0

    return-object v0

    .line 1665
    :cond_a
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    return-object v0
.end method

.method public whitelist getMacRandomizationSetting()I
    .registers 3

    .line 1717
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 1718
    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1716
    :goto_a
    return v0
.end method

.method public whitelist getPassphrase()Ljava/lang/String;
    .registers 2

    .line 1676
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 1677
    const/4 v0, 0x0

    return-object v0

    .line 1679
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPasspointConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .registers 2

    .line 1551
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    return-object v0
.end method

.method public whitelist getPriority()I
    .registers 2

    .line 1557
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    return v0
.end method

.method public whitelist getPriorityGroup()I
    .registers 2

    .line 1687
    iget v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->priorityGroup:I

    return v0
.end method

.method public whitelist getSsid()Ljava/lang/String;
    .registers 4

    .line 1569
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1570
    return-object v1

    .line 1574
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->fromString(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_10} :catch_21

    .line 1577
    .local v0, "wifiSsid":Landroid/net/wifi/WifiSsid;
    nop

    .line 1578
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->getUtf8Text()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_18

    .line 1579
    return-object v1

    .line 1581
    :cond_18
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->getUtf8Text()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1575
    .end local v0    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :catch_21
    move-exception v0

    .line 1576
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object v1
.end method

.method public whitelist getSubscriptionGroup()Landroid/os/ParcelUuid;
    .registers 2

    .line 1728
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1731
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getSubscriptionGroup()Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0

    .line 1729
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getSubscriptionId()I
    .registers 2

    .line 1695
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1698
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    return v0

    .line 1696
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1495
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public whitelist getWifiSsid()Landroid/net/wifi/WifiSsid;
    .registers 4

    .line 1591
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 1592
    const/4 v0, 0x0

    return-object v0

    .line 1596
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->fromString(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_10} :catch_12

    .line 1599
    .local v0, "wifiSsid":Landroid/net/wifi/WifiSsid;
    nop

    .line 1600
    return-object v0

    .line 1597
    .end local v0    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :catch_12
    move-exception v0

    .line 1598
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid SSID in the network suggestion"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 1423
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1424
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getDefaultSecurityType()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1425
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPasspointUniqueId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    .line 1426
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1427
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getSubscriptionGroup()Landroid/os/ParcelUuid;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 1423
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAppInteractionRequired()Z
    .registers 2

    .line 1517
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isAppInteractionRequired:Z

    return v0
.end method

.method public whitelist isCarrierMerged()Z
    .registers 2

    .line 1648
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1651
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    return v0

    .line 1649
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isCredentialSharedWithUser()Z
    .registers 2

    .line 1512
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserAllowedToManuallyConnect:Z

    return v0
.end method

.method public whitelist isEnhancedOpen()Z
    .registers 3

    .line 1522
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isHiddenSsid()Z
    .registers 2

    .line 1527
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    return v0
.end method

.method public whitelist isInitialAutojoinEnabled()Z
    .registers 2

    .line 1532
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isInitialAutoJoinEnabled:Z

    return v0
.end method

.method public whitelist isMetered()Z
    .registers 3

    .line 1537
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public whitelist isOemPaid()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1624
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1627
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    return v0

    .line 1625
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isOemPrivate()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1637
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1640
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    return v0

    .line 1638
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isRestricted()Z
    .registers 2

    .line 1614
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    return v0
.end method

.method public whitelist isUntrusted()Z
    .registers 2

    .line 1605
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isUserInteractionRequired()Z
    .registers 2

    .line 1542
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserInteractionRequired:Z

    return v0
.end method

.method public whitelist isWifi7Enabled()Z
    .registers 2

    .line 1739
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isWifi7Enabled()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiNetworkSuggestion[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1458
    const-string v1, "SSID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1459
    const-string v1, ", BSSID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1460
    const-string v1, ", FQDN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1461
    const-string v1, ", SecurityParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1462
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getSecurityParamsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/WifiNetworkSuggestion$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiNetworkSuggestion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    .line 1463
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1468
    const-string v1, ", isAppInteractionRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isAppInteractionRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1469
    const-string v2, ", isUserInteractionRequired="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserInteractionRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1470
    const-string v2, ", isCredentialSharedWithUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserAllowedToManuallyConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1471
    const-string v2, ", isInitialAutoJoinEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isInitialAutoJoinEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1472
    const-string v2, ", isUnTrusted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1473
    const-string v2, ", isOemPaid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1474
    const-string v2, ", isOemPrivate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1475
    const-string v2, ", isCarrierMerged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1476
    const-string v2, ", isHiddenSsid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1477
    const-string v2, ", priorityGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->priorityGroup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1478
    const-string v2, ", subscriptionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1479
    const-string v2, ", subscriptionGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getSubscriptionGroup()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1480
    const-string v2, ", carrierId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1481
    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1482
    const-string v2, ", meteredness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1483
    const-string v2, ", restricted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1484
    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1412
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1413
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1414
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isAppInteractionRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1415
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserInteractionRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1416
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserAllowedToManuallyConnect:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1417
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isInitialAutoJoinEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1418
    iget v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->priorityGroup:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1419
    return-void
.end method
