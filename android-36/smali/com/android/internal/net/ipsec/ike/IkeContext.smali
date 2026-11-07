.class public Lcom/android/internal/net/ipsec/ike/IkeContext;
.super Ljava/lang/Object;
.source "IkeContext.java"

# interfaces
.implements Lcom/android/internal/net/eap/EapAuthenticator$EapContext;


# static fields
.field public static final blacklist CONFIG_AUTO_ADDRESS_FAMILY_SELECTION_CELLULAR_PREFER_IPV4:Ljava/lang/String; = "config_auto_address_family_selection_cellular_prefer_ipv4"

.field public static final blacklist CONFIG_AUTO_NATT_KEEPALIVES_CELLULAR_TIMEOUT_OVERRIDE_SECONDS:Ljava/lang/String; = "config_auto_natt_keepalives_cellular_timeout_override_seconds"

.field public static final blacklist CONFIG_USE_CACHED_ADDRS:Ljava/lang/String; = "config_use_cached_addrs"

.field private static final blacklist NAMESPACE_IPSEC:Ljava/lang/String; = "ipsec"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIkeCaller:I

.field private final blacklist mLooper:Landroid/os/Looper;

.field private final blacklist mRandomFactory:Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "randomFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeContext;->mLooper:Landroid/os/Looper;

    .line 46
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/IkeContext;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/IkeContext;->mRandomFactory:Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    .line 49
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getIkeCaller(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/IkeContext;->mIkeCaller:I

    .line 50
    return-void
.end method

.method private static blacklist getIkeCaller(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    nop

    .line 54
    const-string v0, "android.permission.NETWORK_FACTORY"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 56
    return v1

    .line 59
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "attributionTag":Ljava/lang/String;
    const-string v2, "IWLAN"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 61
    const/4 v1, 0x1

    return v1

    .line 62
    :cond_19
    const-string v2, "VCN"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 63
    const/4 v1, 0x2

    return v1

    .line 64
    :cond_23
    const-string v2, "VPN_MANAGER"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 65
    const/4 v1, 0x3

    return v1

    .line 67
    :cond_2d
    return v1
.end method

.method private blacklist hasReadDeviceConfigPermission()Z
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeContext;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getDeviceConfigPropertyBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 106
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeContext;->hasReadDeviceConfigPermission()Z

    move-result v0

    if-nez v0, :cond_7

    .line 107
    return p2

    .line 109
    :cond_7
    const-string v0, "ipsec"

    invoke-static {v0, p1, p2}, Lcom/android/internal/net/utils/IkeDeviceConfigUtils;->getDeviceConfigPropertyBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist getDeviceConfigPropertyInt(Ljava/lang/String;III)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minimumValue"    # I
    .param p3, "maximumValue"    # I
    .param p4, "defaultValue"    # I

    .line 96
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeContext;->hasReadDeviceConfigPermission()Z

    move-result v0

    if-nez v0, :cond_7

    .line 97
    return p4

    .line 100
    :cond_7
    const-string v0, "ipsec"

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/net/utils/IkeDeviceConfigUtils;->getDeviceConfigPropertyInt(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public blacklist getIkeCaller()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/IkeContext;->mIkeCaller:I

    return v0
.end method

.method public blacklist getLooper()Landroid/os/Looper;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeContext;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public bridge synthetic blacklist getRandomnessFactory()Lcom/android/internal/net/eap/EapAuthenticator$EapRandomFactory;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getRandomnessFactory()Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRandomnessFactory()Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeContext;->mRandomFactory:Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    return-object v0
.end method
