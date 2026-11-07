.class public Landroid/net/ConnectivitySettingsManager;
.super Ljava/lang/Object;
.source "ConnectivitySettingsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivitySettingsManager$PrivateDnsMode;,
        Landroid/net/ConnectivitySettingsManager$NetworkAvoidBadWifi;,
        Landroid/net/ConnectivitySettingsManager$CaptivePortalMode;
    }
.end annotation


# static fields
.field public static final blacklist CAPTIVE_PORTAL_HTTP_URL:Ljava/lang/String; = "captive_portal_http_url"

.field public static final blacklist CAPTIVE_PORTAL_MODE:Ljava/lang/String; = "captive_portal_mode"

.field public static final blacklist CAPTIVE_PORTAL_MODE_AVOID:I = 0x2

.field public static final blacklist CAPTIVE_PORTAL_MODE_IGNORE:I = 0x0

.field public static final blacklist CAPTIVE_PORTAL_MODE_PROMPT:I = 0x1

.field public static final blacklist CONNECTIVITY_RELEASE_PENDING_INTENT_DELAY_MS:Ljava/lang/String; = "connectivity_release_pending_intent_delay_ms"

.field public static final blacklist DATA_ACTIVITY_TIMEOUT_MOBILE:Ljava/lang/String; = "data_activity_timeout_mobile"

.field public static final blacklist DATA_ACTIVITY_TIMEOUT_WIFI:Ljava/lang/String; = "data_activity_timeout_wifi"

.field private static final blacklist DNS_RESOLVER_DEFAULT_MAX_SAMPLES:I = 0x40

.field private static final blacklist DNS_RESOLVER_DEFAULT_MIN_SAMPLES:I = 0x8

.field public static final blacklist DNS_RESOLVER_MAX_SAMPLES:Ljava/lang/String; = "dns_resolver_max_samples"

.field public static final blacklist DNS_RESOLVER_MIN_SAMPLES:Ljava/lang/String; = "dns_resolver_min_samples"

.field public static final blacklist DNS_RESOLVER_SAMPLE_VALIDITY_SECONDS:Ljava/lang/String; = "dns_resolver_sample_validity_seconds"

.field public static final blacklist DNS_RESOLVER_SUCCESS_THRESHOLD_PERCENT:Ljava/lang/String; = "dns_resolver_success_threshold_percent"

.field public static final blacklist GLOBAL_HTTP_PROXY_EXCLUSION_LIST:Ljava/lang/String; = "global_http_proxy_exclusion_list"

.field public static final blacklist GLOBAL_HTTP_PROXY_HOST:Ljava/lang/String; = "global_http_proxy_host"

.field public static final blacklist GLOBAL_HTTP_PROXY_PAC:Ljava/lang/String; = "global_proxy_pac_url"

.field public static final blacklist GLOBAL_HTTP_PROXY_PORT:Ljava/lang/String; = "global_http_proxy_port"

.field public static final blacklist INGRESS_RATE_LIMIT_BYTES_PER_SECOND:Ljava/lang/String; = "ingress_rate_limit_bytes_per_second"

.field public static final blacklist MOBILE_DATA_ALWAYS_ON:Ljava/lang/String; = "mobile_data_always_on"

.field public static final blacklist MOBILE_DATA_PREFERRED_UIDS:Ljava/lang/String; = "mobile_data_preferred_uids"

.field public static final blacklist NETWORK_AVOID_BAD_WIFI:Ljava/lang/String; = "network_avoid_bad_wifi"

.field public static final blacklist NETWORK_AVOID_BAD_WIFI_AVOID:I = 0x2

.field public static final blacklist NETWORK_AVOID_BAD_WIFI_IGNORE:I = 0x0

.field public static final blacklist NETWORK_AVOID_BAD_WIFI_PROMPT:I = 0x1

.field public static final blacklist NETWORK_METERED_MULTIPATH_PREFERENCE:Ljava/lang/String; = "network_metered_multipath_preference"

.field public static final blacklist NETWORK_SWITCH_NOTIFICATION_DAILY_LIMIT:Ljava/lang/String; = "network_switch_notification_daily_limit"

.field public static final blacklist NETWORK_SWITCH_NOTIFICATION_RATE_LIMIT_MILLIS:Ljava/lang/String; = "network_switch_notification_rate_limit_millis"

.field public static final blacklist PRIVATE_DNS_DEFAULT_MODE:Ljava/lang/String; = "private_dns_default_mode"

.field public static final blacklist PRIVATE_DNS_MODE:Ljava/lang/String; = "private_dns_mode"

.field public static final blacklist PRIVATE_DNS_MODE_OFF:I = 0x1

.field public static final blacklist PRIVATE_DNS_MODE_OPPORTUNISTIC:I = 0x2

.field public static final blacklist PRIVATE_DNS_MODE_PROVIDER_HOSTNAME:I = 0x3

.field public static final blacklist PRIVATE_DNS_SPECIFIER:Ljava/lang/String; = "private_dns_specifier"

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UIDS_ALLOWED_ON_RESTRICTED_NETWORKS:Ljava/lang/String; = "uids_allowed_on_restricted_networks"

.field public static final blacklist WIFI_ALWAYS_REQUESTED:Ljava/lang/String; = "wifi_always_requested"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const-class v0, Landroid/net/ConnectivitySettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ConnectivitySettingsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearGlobalProxy(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 758
    nop

    .line 759
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 758
    const-string v1, "global_http_proxy_host"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 760
    nop

    .line 761
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 760
    const-string v1, "global_http_proxy_port"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 762
    nop

    .line 763
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 762
    const-string v1, "global_http_proxy_exclusion_list"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 764
    nop

    .line 765
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 764
    const-string v1, "global_proxy_pac_url"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 766
    return-void
.end method

.method public static blacklist getCaptivePortalHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 626
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "captive_portal_http_url"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCaptivePortalMode(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "def"    # I

    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "captive_portal_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getConnectivityKeepPendingIntentDuration(Landroid/content/Context;Ljava/time/Duration;)Ljava/time/Duration;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "def"    # Ljava/time/Duration;

    .line 850
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 851
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    long-to-int v1, v1

    .line 850
    const-string v2, "connectivity_release_pending_intent_delay_ms"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 852
    .local v0, "duration":I
    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getDnsResolverSampleRanges(Landroid/content/Context;)Landroid/util/Range;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dns_resolver_min_samples"

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 533
    .local v0, "minSamples":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dns_resolver_max_samples"

    const/16 v3, 0x40

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 535
    .local v1, "maxSamples":I
    new-instance v2, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v2
.end method

.method public static blacklist getDnsResolverSampleValidityDuration(Landroid/content/Context;Ljava/time/Duration;)Ljava/time/Duration;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "def"    # Ljava/time/Duration;

    .line 472
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 473
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v1

    long-to-int v1, v1

    .line 472
    const-string v2, "dns_resolver_sample_validity_seconds"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 474
    .local v0, "duration":I
    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getDnsResolverSuccessThresholdPercent(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "def"    # I

    .line 502
    nop

    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 502
    const-string v1, "dns_resolver_success_threshold_percent"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getGlobalProxy(Landroid/content/Context;)Landroid/net/ProxyInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 680
    nop

    .line 681
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 680
    const-string v1, "global_http_proxy_host"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "host":Ljava/lang/String;
    nop

    .line 683
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 682
    const-string v2, "global_http_proxy_port"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 684
    .local v1, "port":I
    nop

    .line 685
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 684
    const-string v3, "global_http_proxy_exclusion_list"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "exclusionList":Ljava/lang/String;
    nop

    .line 687
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 686
    const-string v4, "global_proxy_pac_url"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, "pacFileUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 690
    const/4 v4, 0x0

    return-object v4

    .line 693
    :cond_3b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 694
    nop

    .line 695
    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/ProxyUtils;->exclusionStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 694
    invoke-static {v0, v1, v4}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v4

    return-object v4

    .line 697
    :cond_4b
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist getIngressRateLimitInBytesPerSecond(Landroid/content/Context;)J
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ingress_rate_limit_bytes_per_second"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getMobileDataActivityTimeout(Landroid/content/Context;Ljava/time/Duration;)Ljava/time/Duration;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "def"    # Ljava/time/Duration;

    .line 409
    nop

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v1

    long-to-int v1, v1

    .line 409
    const-string v2, "data_activity_timeout_mobile"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 411
    .local v0, "timeout":I
    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getMobileDataAlwaysOn(Landroid/content/Context;Z)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "def"    # Z

    .line 882
    nop

    .line 883
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 882
    const-string v1, "mobile_data_always_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 884
    .local v0, "enable":I
    if-eqz v0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static blacklist getMobileDataPreferredUids(Landroid/content/Context;)Ljava/util/Set;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1035
    nop

    .line 1036
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1035
    const-string v1, "mobile_data_preferred_uids"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, "uidList":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/ConnectivitySettingsManager;->getUidSetFromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getNetworkAvoidBadWifi(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 937
    nop

    .line 938
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_avoid_bad_wifi"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "setting":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 940
    const/4 v1, 0x0

    return v1

    .line 941
    :cond_15
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 942
    const/4 v1, 0x2

    return v1

    .line 944
    :cond_1f
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist getNetworkMeteredMultipathPreference(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 980
    nop

    .line 981
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 980
    const-string v1, "network_metered_multipath_preference"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNetworkSwitchNotificationMaximumDailyCount(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "def"    # I

    .line 566
    nop

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 566
    const-string v1, "network_switch_notification_daily_limit"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getNetworkSwitchNotificationRateDuration(Landroid/content/Context;Ljava/time/Duration;)Ljava/time/Duration;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "def"    # Ljava/time/Duration;

    .line 596
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 597
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    long-to-int v1, v1

    .line 596
    const-string v2, "network_switch_notification_rate_limit_millis"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 598
    .local v0, "duration":I
    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getPrivateDnsDefaultMode(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 819
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "private_dns_default_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPrivateDnsHostname(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 797
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/ConnectivitySettingsUtils;->getPrivateDnsHostname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPrivateDnsMode(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 776
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/ConnectivitySettingsUtils;->getPrivateDnsMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static blacklist getUidSetFromString(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .param p0, "uidList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1004
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1005
    .local v0, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1006
    return-object v0

    .line 1008
    :cond_c
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 1009
    .local v4, "uid":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1008
    .end local v4    # "uid":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1011
    :cond_22
    return-object v0
.end method

.method private static blacklist getUidStringFromSet(Ljava/util/Set;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1015
    .local p0, "uidList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ";"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 1016
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1017
    .local v2, "uid":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_31

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x4e1f

    if-gt v3, v4, :cond_31

    .line 1020
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1021
    .end local v2    # "uid":Ljava/lang/Integer;
    goto :goto_b

    .line 1018
    .restart local v2    # "uid":Ljava/lang/Integer;
    :cond_31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid uid"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1022
    .end local v2    # "uid":Ljava/lang/Integer;
    :cond_39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getUidsAllowedOnRestrictedNetworks(Landroid/content/Context;)Ljava/util/Set;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1070
    nop

    .line 1071
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1070
    const-string v1, "uids_allowed_on_restricted_networks"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "uidList":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/ConnectivitySettingsManager;->getUidSetFromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getWifiAlwaysRequested(Landroid/content/Context;Z)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "def"    # Z

    .line 910
    nop

    .line 911
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 910
    const-string v1, "wifi_always_requested"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 912
    .local v0, "enable":I
    if-eqz v0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static blacklist getWifiDataActivityTimeout(Landroid/content/Context;Ljava/time/Duration;)Ljava/time/Duration;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "def"    # Ljava/time/Duration;

    .line 440
    nop

    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v1

    long-to-int v1, v1

    .line 440
    const-string v2, "data_activity_timeout_wifi"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 442
    .local v0, "timeout":I
    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist isCallingFromSystem()Z
    .registers 3

    .line 1076
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1077
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1078
    .local v1, "pid":I
    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_14

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_14

    .line 1079
    const/4 v2, 0x1

    return v2

    .line 1081
    :cond_14
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist setCaptivePortalHttpUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 641
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "captive_portal_http_url"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 642
    return-void
.end method

.method public static blacklist setCaptivePortalMode(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .line 664
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 667
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid captive portal mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_11
    :goto_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "captive_portal_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 670
    return-void
.end method

.method public static blacklist setConnectivityKeepPendingIntentDuration(Landroid/content/Context;Ljava/time/Duration;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # Ljava/time/Duration;

    .line 864
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 865
    .local v0, "time":I
    if-ltz v0, :cond_12

    .line 868
    nop

    .line 869
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 868
    const-string v2, "connectivity_release_pending_intent_delay_ms"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 870
    return-void

    .line 866
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid duration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist setDnsResolverSampleRanges(Landroid/content/Context;Landroid/util/Range;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 547
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_43

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_43

    .line 550
    nop

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 550
    const-string v2, "dns_resolver_min_samples"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 552
    nop

    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 552
    const-string v2, "dns_resolver_max_samples"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    return-void

    .line 548
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must be 0~64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setDnsResolverSampleValidityDuration(Landroid/content/Context;Ljava/time/Duration;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # Ljava/time/Duration;

    .line 486
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    long-to-int v0, v0

    .line 487
    .local v0, "time":I
    if-lez v0, :cond_12

    .line 490
    nop

    .line 491
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 490
    const-string v2, "dns_resolver_sample_validity_seconds"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 492
    return-void

    .line 488
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid duration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist setDnsResolverSuccessThresholdPercent(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "percent"    # I

    .line 515
    if-ltz p1, :cond_11

    const/16 v0, 0x64

    if-gt p1, v0, :cond_11

    .line 518
    nop

    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 518
    const-string v1, "dns_resolver_success_threshold_percent"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 520
    return-void

    .line 516
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Percent must be 0~100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setGlobalProxy(Landroid/content/Context;Landroid/net/ProxyInfo;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 720
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    .line 722
    .local v1, "port":I
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, "exclusionList":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 726
    .local v3, "pacFileUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 727
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 728
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_2f

    const-string v5, "android.software.webview"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 729
    sget-object v5, Landroid/net/ConnectivitySettingsManager;->TAG:Ljava/lang/String;

    const-string v6, "PAC proxy can\'t be installed on a device without FEATURE_WEBVIEW"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "global_http_proxy_exclusion_list"

    const-string v6, "global_http_proxy_port"

    const-string v7, "global_http_proxy_host"

    const-string v8, "global_proxy_pac_url"

    const-string v9, ""

    if-eqz v4, :cond_5e

    .line 734
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v7, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 736
    nop

    .line 737
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 736
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 738
    nop

    .line 739
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 738
    invoke-static {v4, v8, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7f

    .line 741
    :cond_5e
    nop

    .line 742
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 741
    invoke-static {v4, v8, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 743
    nop

    .line 744
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 743
    invoke-static {v4, v7, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 745
    nop

    .line 746
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 745
    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 747
    nop

    .line 748
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 747
    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 750
    :goto_7f
    return-void
.end method

.method public static blacklist setIngressRateLimitInBytesPerSecond(Landroid/content/Context;J)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rateLimitInBytesPerSec"    # J

    .line 1132
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    .line 1136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ingress_rate_limit_bytes_per_second"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1139
    return-void

    .line 1133
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rate limit must be within the range [-1, Integer.MAX_VALUE]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setMobileDataActivityTimeout(Landroid/content/Context;Ljava/time/Duration;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # Ljava/time/Duration;

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 427
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v1

    long-to-int v1, v1

    .line 426
    const-string v2, "data_activity_timeout_mobile"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    return-void
.end method

.method public static blacklist setMobileDataAlwaysOn(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 896
    nop

    .line 897
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 896
    const-string v1, "mobile_data_always_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 898
    return-void
.end method

.method public static blacklist setMobileDataPreferredUids(Landroid/content/Context;Ljava/util/Set;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1050
    .local p1, "uidList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/net/ConnectivitySettingsManager;->getUidStringFromSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, "uids":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data_preferred_uids"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1052
    return-void
.end method

.method public static blacklist setNetworkAvoidBadWifi(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .line 958
    if-nez p1, :cond_5

    .line 959
    const-string v0, "0"

    .local v0, "setting":Ljava/lang/String;
    goto :goto_f

    .line 960
    .end local v0    # "setting":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 961
    const-string v0, "1"

    .restart local v0    # "setting":Ljava/lang/String;
    goto :goto_f

    .line 962
    .end local v0    # "setting":Ljava/lang/String;
    :cond_b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_19

    .line 963
    const/4 v0, 0x0

    .line 967
    .restart local v0    # "setting":Ljava/lang/String;
    :goto_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_avoid_bad_wifi"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 968
    return-void

    .line 965
    .end local v0    # "setting":Ljava/lang/String;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid avoid bad wifi setting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setNetworkMeteredMultipathPreference(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preference"    # Ljava/lang/String;

    .line 994
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    .line 995
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    .line 996
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_22

    goto :goto_2a

    .line 997
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid private dns mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_2a
    :goto_2a
    nop

    .line 1000
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 999
    const-string v1, "network_metered_multipath_preference"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1001
    return-void
.end method

.method public static blacklist setNetworkSwitchNotificationMaximumDailyCount(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I

    .line 579
    if-ltz p1, :cond_d

    .line 582
    nop

    .line 583
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 582
    const-string v1, "network_switch_notification_daily_limit"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 584
    return-void

    .line 580
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count must be more than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setNetworkSwitchNotificationRateDuration(Landroid/content/Context;Ljava/time/Duration;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # Ljava/time/Duration;

    .line 610
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 611
    .local v0, "time":I
    if-ltz v0, :cond_11

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_switch_notification_rate_limit_millis"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 616
    return-void

    .line 612
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid duration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist setPrivateDnsDefaultMode(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .line 831
    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    goto :goto_12

    .line 834
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid private dns mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_12
    :goto_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 837
    invoke-static {p1}, Landroid/net/connectivity/com/android/net/module/util/ConnectivitySettingsUtils;->getPrivateDnsModeAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 836
    const-string v2, "private_dns_default_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 838
    return-void
.end method

.method public static blacklist setPrivateDnsHostname(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "specifier"    # Ljava/lang/String;

    .line 807
    invoke-static {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/ConnectivitySettingsUtils;->setPrivateDnsHostname(Landroid/content/Context;Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method public static blacklist setPrivateDnsMode(Landroid/content/Context;I)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .line 786
    invoke-static {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/ConnectivitySettingsUtils;->setPrivateDnsMode(Landroid/content/Context;I)V

    .line 787
    return-void
.end method

.method public static blacklist setUidsAllowedOnRestrictedNetworks(Landroid/content/Context;Ljava/util/Set;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1092
    .local p1, "uidList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/net/ConnectivitySettingsManager;->isCallingFromSystem()Z

    move-result v0

    .line 1093
    .local v0, "calledFromSystem":Z
    if-nez v0, :cond_1c

    .line 1095
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1098
    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "Requires NETWORK_SETTINGS permission"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 1096
    :cond_14
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only system can set this setting."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1101
    :cond_1c
    :goto_1c
    invoke-static {p1}, Landroid/net/ConnectivitySettingsManager;->getUidStringFromSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 1102
    .local v1, "uids":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "uids_allowed_on_restricted_networks"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1104
    return-void
.end method

.method public static blacklist setWifiAlwaysRequested(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 924
    nop

    .line 925
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 924
    const-string v1, "wifi_always_requested"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 926
    return-void
.end method

.method public static blacklist setWifiDataActivityTimeout(Landroid/content/Context;Ljava/time/Duration;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # Ljava/time/Duration;

    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 458
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v1

    long-to-int v1, v1

    .line 457
    const-string v2, "data_activity_timeout_wifi"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 459
    return-void
.end method
