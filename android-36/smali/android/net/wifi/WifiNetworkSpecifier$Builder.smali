.class public final Landroid/net/wifi/WifiNetworkSpecifier$Builder;
.super Ljava/lang/Object;
.source "WifiNetworkSpecifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist MATCH_ALL_BSSID_PATTERN:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/net/MacAddress;",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MATCH_ALL_SSID_PATTERN_PATH:Ljava/lang/String; = ".*"

.field private static final blacklist MATCH_EMPTY_SSID_PATTERN_PATH:Ljava/lang/String; = ""

.field private static final blacklist MATCH_EXACT_BSSID_PATTERN_MASK:Landroid/net/MacAddress;

.field private static final blacklist MATCH_NO_BSSID_PATTERN1:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/net/MacAddress;",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MATCH_NO_BSSID_PATTERN2:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/net/MacAddress;",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist WPA3_ENTERPRISE_192_BIT:I = 0x2

.field private static final blacklist WPA3_ENTERPRISE_AUTO:I = 0x0

.field private static final blacklist WPA3_ENTERPRISE_STANDARD:I = 0x1


# instance fields
.field private blacklist mBand:I

.field private blacklist mBssidPatternMatcher:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/net/MacAddress;",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChannels:[I

.field private blacklist mIsEnhancedOpen:Z

.field private blacklist mIsHiddenSSID:Z

.field private blacklist mPreferSecondarySta:Z

.field private blacklist mSsidPatternMatcher:Landroid/os/PatternMatcher;

.field private blacklist mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private blacklist mWpa2PskPassphrase:Ljava/lang/String;

.field private blacklist mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private blacklist mWpa3EnterpriseType:I

.field private blacklist mWpa3SaePassphrase:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 130
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    sget-object v2, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_NO_BSSID_PATTERN1:Landroid/util/Pair;

    .line 132
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Landroid/net/wifi/WifiManager;->ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;

    sget-object v2, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_NO_BSSID_PATTERN2:Landroid/util/Pair;

    .line 134
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Landroid/net/wifi/WifiManager;->ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;

    sget-object v2, Landroid/net/wifi/WifiManager;->ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_ALL_BSSID_PATTERN:Landroid/util/Pair;

    .line 136
    sget-object v0, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    sput-object v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_EXACT_BSSID_PATTERN_MASK:Landroid/net/MacAddress;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseType:I

    .line 199
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    .line 200
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    .line 201
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsEnhancedOpen:Z

    .line 202
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    .line 203
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    .line 204
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 205
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 206
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsHiddenSSID:Z

    .line 207
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBand:I

    .line 208
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mChannels:[I

    .line 209
    return-void
.end method

.method private blacklist buildWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 5

    .line 544
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 546
    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v1}, Landroid/os/PatternMatcher;->getType()I

    move-result v1

    if-nez v1, :cond_2c

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 549
    :cond_2c
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v2, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_EXACT_BSSID_PATTERN_MASK:Landroid/net/MacAddress;

    if-ne v1, v2, :cond_40

    .line 550
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/MacAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 552
    :cond_40
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setSecurityParamsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 553
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsHiddenSSID:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 554
    return-object v0
.end method

.method private blacklist hasSetAnyPattern()Z
    .registers 2

    .line 558
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private blacklist hasSetMatchAllPattern()Z
    .registers 3

    .line 586
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    sget-object v1, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_ALL_BSSID_PATTERN:Landroid/util/Pair;

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 588
    const/4 v0, 0x1

    return v0

    .line 590
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist hasSetMatchNonePattern()Z
    .registers 4

    .line 572
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    .line 573
    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 574
    return v1

    .line 576
    :cond_18
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    sget-object v2, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_NO_BSSID_PATTERN1:Landroid/util/Pair;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 577
    return v1

    .line 579
    :cond_23
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    sget-object v2, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_NO_BSSID_PATTERN2:Landroid/util/Pair;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 580
    return v1

    .line 582
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist setMatchAnyPatternIfUnset()V
    .registers 4

    .line 562
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    if-nez v0, :cond_e

    .line 563
    new-instance v0, Landroid/os/PatternMatcher;

    const-string v1, ".*"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    .line 566
    :cond_e
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    if-nez v0, :cond_16

    .line 567
    sget-object v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_ALL_BSSID_PATTERN:Landroid/util/Pair;

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    .line 569
    :cond_16
    return-void
.end method

.method private blacklist setSecurityParamsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 6
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 501
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "\""

    if-nez v0, :cond_29

    .line 502
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_a9

    .line 505
    :cond_29
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 506
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_a9

    .line 509
    :cond_4f
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_5c

    .line 510
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 511
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_a9

    .line 512
    :cond_5c
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_9c

    .line 513
    iget v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseType:I

    const/4 v2, 0x5

    if-nez v0, :cond_8a

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 514
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8a

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 516
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 515
    invoke-static {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isSuiteBCipherCert(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 518
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 517
    invoke-static {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isSuiteBCipherCert(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 520
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_97

    .line 522
    :cond_8a
    iget v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseType:I

    if-ne v0, v1, :cond_92

    .line 524
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_97

    .line 528
    :cond_92
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 531
    :goto_97
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_a9

    .line 532
    :cond_9c
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsEnhancedOpen:Z

    if-eqz v0, :cond_a5

    .line 533
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_a9

    .line 535
    :cond_a5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 537
    :goto_a9
    return-void
.end method

.method private blacklist validateSecurityParams()V
    .registers 5

    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "numSecurityTypes":I
    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsEnhancedOpen:Z

    add-int/2addr v0, v1

    .line 596
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 597
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 598
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    move v1, v2

    goto :goto_1d

    :cond_1c
    move v1, v3

    :goto_1d
    add-int/2addr v0, v1

    .line 599
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_23

    move v3, v2

    :cond_23
    add-int/2addr v0, v3

    .line 600
    if-gt v0, v2, :cond_27

    .line 605
    return-void

    .line 601
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "only one of setIsEnhancedOpen, setWpa2Passphrase,setWpa3Passphrase, setWpa2EnterpriseConfig or setWpa3EnterpriseConfig can be invoked for network specifier"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/WifiNetworkSpecifier;
    .registers 10

    .line 677
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->hasSetAnyPattern()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_14

    iget v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBand:I

    if-eq v0, v1, :cond_c

    goto :goto_14

    .line 678
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "one of setSsidPattern/setSsid/setBssidPattern/setBssid/setBand should be invoked for specifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_14
    :goto_14
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setMatchAnyPatternIfUnset()V

    .line 682
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->hasSetMatchNonePattern()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 685
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->hasSetMatchAllPattern()Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBand:I

    if-eq v0, v1, :cond_28

    goto :goto_30

    .line 686
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot set match-all pattern for specifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_30
    :goto_30
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsHiddenSSID:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getType()I

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_45

    .line 689
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSsid should also be invoked when setIsHiddenSsid is invoked for network specifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_45
    :goto_45
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mChannels:[I

    array-length v0, v0

    if-eqz v0, :cond_57

    iget v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBand:I

    if-ne v0, v1, :cond_4f

    goto :goto_57

    .line 693
    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot setPreferredChannelsFrequencyInMhz with setBand together"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_57
    :goto_57
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->validateSecurityParams()V

    .line 698
    new-instance v2, Landroid/net/wifi/WifiNetworkSpecifier;

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    iget-object v4, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    iget v5, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBand:I

    .line 702
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->buildWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mChannels:[I

    iget-boolean v8, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mPreferSecondarySta:Z

    invoke-direct/range {v2 .. v8}, Landroid/net/wifi/WifiNetworkSpecifier;-><init>(Landroid/os/PatternMatcher;Landroid/util/Pair;ILandroid/net/wifi/WifiConfiguration;[IZ)V

    .line 698
    return-object v2

    .line 683
    :cond_6e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot set match-none pattern for specifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBand(I)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 5
    .param p1, "band"    # I

    .line 458
    invoke-static {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->validateBand(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 461
    iput p1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBand:I

    .line 462
    return-object p0

    .line 459
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected band in setBand : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 3
    .param p1, "bssid"    # Landroid/net/MacAddress;

    .line 282
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_EXACT_BSSID_PATTERN_MASK:Landroid/net/MacAddress;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    .line 284
    return-object p0
.end method

.method public whitelist setBssidPattern(Landroid/net/MacAddress;Landroid/net/MacAddress;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 4
    .param p1, "baseAddress"    # Landroid/net/MacAddress;
    .param p2, "mask"    # Landroid/net/MacAddress;

    .line 263
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-static {p2}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    .line 266
    return-object p0
.end method

.method public whitelist setIsEnhancedOpen(Z)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 2
    .param p1, "isEnhancedOpen"    # Z

    .line 295
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsEnhancedOpen:Z

    .line 296
    return-object p0
.end method

.method public whitelist setIsHiddenSsid(Z)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 2
    .param p1, "isHiddenSsid"    # Z

    .line 444
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsHiddenSSID:Z

    .line 445
    return-object p0
.end method

.method public greylist setPreferSecondarySta(Z)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 495
    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mPreferSecondarySta:Z

    .line 496
    return-object p0
.end method

.method public whitelist setPreferredChannelsFrequenciesMhz([I)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 4
    .param p1, "channelFreqs"    # [I

    .line 478
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-static {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->validateChannelFrequencyInMhz([I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 482
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mChannels:[I

    .line 483
    return-object p0

    .line 480
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid channel frequency in the input array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 5
    .param p1, "ssid"    # Ljava/lang/String;

    .line 240
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 242
    .local v0, "unicodeEncoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 245
    new-instance v1, Landroid/os/PatternMatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    .line 246
    return-object p0

    .line 243
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SSID is not a valid unicode string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setSsidPattern(Landroid/os/PatternMatcher;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 2
    .param p1, "ssidPattern"    # Landroid/os/PatternMatcher;

    .line 222
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    .line 224
    return-object p0
.end method

.method public whitelist setWpa2EnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 3
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 347
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 349
    return-object p0
.end method

.method public whitelist setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 5
    .param p1, "passphrase"    # Ljava/lang/String;

    .line 308
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 310
    .local v0, "asciiEncoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 313
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    .line 314
    return-object p0

    .line 311
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "passphrase not ASCII encodable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setWpa3Enterprise192BitModeConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 4
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 412
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 416
    nop

    .line 417
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 416
    invoke-static {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isSuiteBCipherCert(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 421
    nop

    .line 422
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 421
    invoke-static {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isSuiteBCipherCert(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 427
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 428
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseType:I

    .line 429
    return-object p0

    .line 423
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The CA certificate does not meet 192-bit mode requirements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The client certificate does not meet 192-bit mode requirements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The 192-bit mode network type must be TLS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setWpa3EnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 3
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 372
    return-object p0
.end method

.method public whitelist setWpa3EnterpriseStandardModeConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 3
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 389
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 391
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseType:I

    .line 392
    return-object p0
.end method

.method public whitelist setWpa3Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .registers 5
    .param p1, "passphrase"    # Ljava/lang/String;

    .line 326
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 328
    .local v0, "asciiEncoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 331
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    .line 332
    return-object p0

    .line 329
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "passphrase not ASCII encodable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
