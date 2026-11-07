.class public final Landroid/net/LinkProperties;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkProperties$ProvisioningChange;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INET6_ADDR_LENGTH:I = 0x10

.field private static final greylist-max-o MAX_MTU:I = 0x2710

.field private static final greylist-max-o MIN_MTU:I = 0x44

.field private static final greylist-max-o MIN_MTU_V6:I = 0x500


# instance fields
.field private blacklist mCaptivePortalApiUrl:Landroid/net/Uri;

.field private blacklist mCaptivePortalData:Landroid/net/CaptivePortalData;

.field private blacklist mDhcpServerAddress:Ljava/net/Inet4Address;

.field private final greylist-max-o mDnses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDomains:Ljava/lang/String;

.field private greylist-max-o mHttpProxy:Landroid/net/ProxyInfo;

.field private greylist-max-p mIfaceName:Ljava/lang/String;

.field private final greylist-max-o mLinkAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMtu:I

.field private blacklist mNat64Prefix:Landroid/net/IpPrefix;

.field private final transient blacklist mParcelSensitiveFields:Z

.field private final blacklist mPcscfs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPrivateDnsServerName:Ljava/lang/String;

.field private greylist-max-o mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStackedLinks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTcpBufferSizes:Ljava/lang/String;

.field private greylist-max-o mUsePrivateDns:Z

.field private final greylist-max-o mValidatedPrivateDnses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWakeOnLanSupported:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;
    .registers 1

    invoke-static {p0}, Landroid/net/LinkProperties;->readAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1793
    new-instance v0, Landroid/net/LinkProperties$1;

    invoke-direct {v0}, Landroid/net/LinkProperties$1;-><init>()V

    sput-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/LinkProperties;->mParcelSensitiveFields:Z

    .line 164
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "source"    # Landroid/net/LinkProperties;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;Z)V

    .line 172
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/LinkProperties;Z)V
    .registers 5
    .param p1, "source"    # Landroid/net/LinkProperties;
    .param p2, "parcelSensitiveFields"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    .line 186
    iput-boolean p2, p0, Landroid/net/LinkProperties;->mParcelSensitiveFields:Z

    .line 187
    if-nez p1, :cond_32

    return-void

    .line 188
    :cond_32
    iget-object v0, p1, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 191
    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 192
    iget-boolean v0, p1, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    iput-boolean v0, p0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    .line 193
    iget-object v0, p1, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 195
    iget-object v0, p1, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 197
    iget-object v0, p1, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    if-nez v0, :cond_6b

    const/4 v0, 0x0

    goto :goto_72

    :cond_6b
    new-instance v0, Landroid/net/ProxyInfo;

    iget-object v1, p1, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v0, v1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    :goto_72
    iput-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 198
    iget-object v0, p1, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 199
    .local v1, "l":Landroid/net/LinkProperties;
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 200
    .end local v1    # "l":Landroid/net/LinkProperties;
    goto :goto_7e

    .line 201
    :cond_8e
    iget v0, p1, Landroid/net/LinkProperties;->mMtu:I

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 202
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDhcpServerAddress()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->setDhcpServerAddress(Ljava/net/Inet4Address;)V

    .line 203
    iget-object v0, p1, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Landroid/net/LinkProperties;->mNat64Prefix:Landroid/net/IpPrefix;

    iput-object v0, p0, Landroid/net/LinkProperties;->mNat64Prefix:Landroid/net/IpPrefix;

    .line 205
    iget-boolean v0, p1, Landroid/net/LinkProperties;->mWakeOnLanSupported:Z

    iput-boolean v0, p0, Landroid/net/LinkProperties;->mWakeOnLanSupported:Z

    .line 206
    iget-object v0, p1, Landroid/net/LinkProperties;->mCaptivePortalApiUrl:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/LinkProperties;->mCaptivePortalApiUrl:Landroid/net/Uri;

    .line 207
    iget-object v0, p1, Landroid/net/LinkProperties;->mCaptivePortalData:Landroid/net/CaptivePortalData;

    iput-object v0, p0, Landroid/net/LinkProperties;->mCaptivePortalData:Landroid/net/CaptivePortalData;

    .line 208
    return-void
.end method

.method public static greylist-max-r compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .registers 3
    .param p0, "before"    # Landroid/net/LinkProperties;
    .param p1, "after"    # Landroid/net/LinkProperties;

    .line 124
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 145
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIpv4Provisioned()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIpv4Provisioned()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 146
    :cond_18
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIpv6Provisioned()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIpv6Provisioned()Z

    move-result v0

    if-nez v0, :cond_27

    .line 147
    :cond_24
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0

    .line 149
    :cond_27
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0

    .line 150
    :cond_2a
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_39

    .line 151
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0

    .line 152
    :cond_39
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 153
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0

    .line 155
    :cond_48
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0
.end method

.method private greylist-max-o findLinkAddressIndex(Landroid/net/LinkAddress;)I
    .registers 4
    .param p1, "address"    # Landroid/net/LinkAddress;

    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 284
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1, p1}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 285
    return v0

    .line 283
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 288
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist findRouteIndexByRouteKey(Landroid/net/RouteInfo;)I
    .registers 5
    .param p1, "route"    # Landroid/net/RouteInfo;

    .line 685
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 686
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getRouteKey()Landroid/net/RouteInfo$RouteKey;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/RouteInfo;->getRouteKey()Landroid/net/RouteInfo$RouteKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/RouteInfo$RouteKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 687
    return v0

    .line 685
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 690
    .end local v0    # "i":I
    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getUnicastRoutes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    new-instance v1, Landroid/net/LinkProperties$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/LinkProperties$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->filter(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasIpv4AddressOnInterface(Ljava/lang/String;)Z
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 1065
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    move-result v0

    if-nez v0, :cond_26

    :cond_e
    if-eqz p1, :cond_28

    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    .line 1066
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    .line 1067
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 1065
    :goto_29
    return v0
.end method

.method public static greylist-max-o isValidMtu(IZ)Z
    .registers 6
    .param p0, "mtu"    # I
    .param p1, "ipv6"    # Z

    .line 1863
    const/4 v0, 0x1

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-eqz p1, :cond_f

    .line 1864
    const/16 v3, 0x500

    if-lt p0, v3, :cond_d

    if-gt p0, v1, :cond_d

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    return v0

    .line 1866
    :cond_f
    const/16 v3, 0x44

    if-lt p0, v3, :cond_16

    if-gt p0, v1, :cond_16

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    return v0
.end method

.method static synthetic blacklist lambda$getUnicastRoutes$0(Landroid/net/RouteInfo;)Z
    .registers 3
    .param p0, "route"    # Landroid/net/RouteInfo;

    .line 768
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private static blacklist readAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;
    .registers 5
    .param p0, "p"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1778
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1779
    .local v0, "addr":[B
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 1781
    :cond_8
    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1e

    .line 1782
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1783
    .local v2, "hasScopeId":Z
    if-eqz v2, :cond_18

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    .line 1784
    .local v3, "scopeId":I
    :goto_19
    invoke-static {v1, v0, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v1

    return-object v1

    .line 1787
    .end local v2    # "hasScopeId":Z
    .end local v3    # "scopeId":I
    :cond_1e
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o routeWithInterface(Landroid/net/RouteInfo;)Landroid/net/RouteInfo;
    .registers 8
    .param p1, "route"    # Landroid/net/RouteInfo;

    .line 676
    new-instance v0, Landroid/net/RouteInfo;

    .line 677
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    .line 678
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 680
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getType()I

    move-result v4

    .line 681
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getMtu()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;II)V

    .line 676
    return-object v0
.end method

.method private static blacklist writeAddress(Landroid/os/Parcel;Ljava/net/InetAddress;)V
    .registers 6
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "addr"    # Ljava/net/InetAddress;

    .line 1766
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1767
    .local v0, "addressBytes":[B
    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1768
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_27

    .line 1769
    move-object v1, p1

    check-cast v1, Ljava/net/Inet6Address;

    .line 1770
    .local v1, "v6Addr":Ljava/net/Inet6Address;
    invoke-virtual {v1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 1771
    .local v2, "hasScopeId":Z
    :goto_1b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1772
    if-eqz v2, :cond_27

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1774
    .end local v1    # "v6Addr":Ljava/net/Inet6Address;
    .end local v2    # "hasScopeId":Z
    :cond_27
    return-void
.end method

.method private static blacklist writeAddresses(Landroid/os/Parcel;Ljava/util/List;)V
    .registers 4
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 1759
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1761
    .local v1, "d":Ljava/net/InetAddress;
    invoke-static {p0, v1}, Landroid/net/LinkProperties;->writeAddress(Landroid/os/Parcel;Ljava/net/InetAddress;)V

    .line 1762
    .end local v1    # "d":Ljava/net/InetAddress;
    goto :goto_b

    .line 1763
    :cond_1b
    return-void
.end method


# virtual methods
.method public whitelist addDnsServer(Ljava/net/InetAddress;)Z
    .registers 3
    .param p1, "dnsServer"    # Ljava/net/InetAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 382
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 383
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    const/4 v0, 0x1

    return v0

    .line 386
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist addLinkAddress(Landroid/net/LinkAddress;)Z
    .registers 6
    .param p1, "address"    # Landroid/net/LinkAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 300
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 301
    return v0

    .line 303
    :cond_4
    invoke-direct {p0, p1}, Landroid/net/LinkProperties;->findLinkAddressIndex(Landroid/net/LinkAddress;)I

    move-result v1

    .line 304
    .local v1, "i":I
    const/4 v2, 0x1

    if-gez v1, :cond_11

    .line 306
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    return v2

    .line 308
    :cond_11
    iget-object v3, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    invoke-virtual {v3, p1}, Landroid/net/LinkAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 310
    return v0

    .line 313
    :cond_20
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 314
    return v2
.end method

.method public whitelist addPcscfServer(Ljava/net/InetAddress;)Z
    .registers 3
    .param p1, "pcscfServer"    # Ljava/net/InetAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 564
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 565
    iget-object v0, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    const/4 v0, 0x1

    return v0

    .line 568
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist addRoute(Landroid/net/RouteInfo;)Z
    .registers 6
    .param p1, "route"    # Landroid/net/RouteInfo;

    .line 705
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "routeIface":Ljava/lang/String;
    if-eqz v0, :cond_34

    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_34

    .line 707
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route added with non-matching interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :cond_34
    :goto_34
    invoke-direct {p0, p1}, Landroid/net/LinkProperties;->routeWithInterface(Landroid/net/RouteInfo;)Landroid/net/RouteInfo;

    move-result-object p1

    .line 713
    invoke-direct {p0, p1}, Landroid/net/LinkProperties;->findRouteIndexByRouteKey(Landroid/net/RouteInfo;)I

    move-result v1

    .line 714
    .local v1, "i":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_46

    .line 716
    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    return v3

    .line 718
    :cond_46
    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    invoke-virtual {v2, p1}, Landroid/net/RouteInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 720
    const/4 v2, 0x0

    return v2

    .line 723
    :cond_56
    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 724
    return v3
.end method

.method public greylist addStackedLink(Landroid/net/LinkProperties;)Z
    .registers 4
    .param p1, "link"    # Landroid/net/LinkProperties;

    .line 855
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 856
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    const/4 v0, 0x1

    return v0

    .line 859
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o addValidatedPrivateDnsServer(Ljava/net/InetAddress;)Z
    .registers 3
    .param p1, "dnsServer"    # Ljava/net/InetAddress;

    .line 507
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 508
    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    const/4 v0, 0x1

    return v0

    .line 511
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clear()V
    .registers 4

    .line 897
    iget-boolean v0, p0, Landroid/net/LinkProperties;->mParcelSensitiveFields:Z

    if-nez v0, :cond_38

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 903
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 904
    iget-object v1, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 905
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    .line 906
    iput-object v0, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    .line 907
    iget-object v2, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 908
    iput-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    .line 909
    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 910
    iput-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 911
    iget-object v2, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 912
    iput v1, p0, Landroid/net/LinkProperties;->mMtu:I

    .line 913
    iput-object v0, p0, Landroid/net/LinkProperties;->mDhcpServerAddress:Ljava/net/Inet4Address;

    .line 914
    iput-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    .line 915
    iput-object v0, p0, Landroid/net/LinkProperties;->mNat64Prefix:Landroid/net/IpPrefix;

    .line 916
    iput-boolean v1, p0, Landroid/net/LinkProperties;->mWakeOnLanSupported:Z

    .line 917
    iput-object v0, p0, Landroid/net/LinkProperties;->mCaptivePortalApiUrl:Landroid/net/Uri;

    .line 918
    iput-object v0, p0, Landroid/net/LinkProperties;->mCaptivePortalData:Landroid/net/CaptivePortalData;

    .line 919
    return-void

    .line 898
    :cond_38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot clear LinkProperties when parcelSensitiveFields is set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o ensureDirectlyConnectedRoutes()V
    .registers 6

    .line 777
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 778
    .local v1, "addr":Landroid/net/LinkAddress;
    new-instance v2, Landroid/net/RouteInfo;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 779
    .end local v1    # "addr":Landroid/net/LinkAddress;
    goto :goto_6

    .line 780
    :cond_1e
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1663
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1665
    :cond_4
    instance-of v1, p1, Landroid/net/LinkProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1667
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/LinkProperties;

    .line 1673
    .local v1, "target":Landroid/net/LinkProperties;
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1674
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1675
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalDhcpServerAddress(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1676
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1677
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalPrivateDns(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1678
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalValidatedPrivateDnses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1679
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalPcscfs(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1680
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1681
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1682
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalStackedLinks(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1683
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1684
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalTcpBufferSizes(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1685
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalNat64Prefix(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1686
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalWakeOnLan(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1687
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalCaptivePortalApiUrl(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1688
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalCaptivePortalData(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6e

    goto :goto_6f

    :cond_6e
    move v0, v2

    .line 1673
    :goto_6f
    return v0
.end method

.method public whitelist getAddresses()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 261
    .local v2, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v2    # "linkAddress":Landroid/net/LinkAddress;
    goto :goto_b

    .line 263
    :cond_1f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public greylist getAllAddresses()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 274
    .local v2, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v2    # "linkAddress":Landroid/net/LinkAddress;
    goto :goto_b

    .line 276
    :cond_1f
    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 277
    .local v2, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    .end local v2    # "stacked":Landroid/net/LinkProperties;
    goto :goto_29

    .line 279
    :cond_3d
    return-object v0
.end method

.method public whitelist getAllInterfaceNames()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .local v0, "interfaceNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_16
    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 242
    .local v2, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    .end local v2    # "stacked":Landroid/net/LinkProperties;
    goto :goto_20

    .line 244
    :cond_34
    return-object v0
.end method

.method public whitelist getAllLinkAddresses()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 353
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 354
    .local v2, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 355
    .end local v2    # "stacked":Landroid/net/LinkProperties;
    goto :goto_11

    .line 356
    :cond_25
    return-object v0
.end method

.method public whitelist getAllRoutes()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 792
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 793
    .local v2, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 794
    .end local v2    # "stacked":Landroid/net/LinkProperties;
    goto :goto_13

    .line 795
    :cond_27
    return-object v0
.end method

.method public whitelist getCaptivePortalApiUrl()Landroid/net/Uri;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1621
    iget-object v0, p0, Landroid/net/LinkProperties;->mCaptivePortalApiUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getCaptivePortalData()Landroid/net/CaptivePortalData;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1644
    iget-object v0, p0, Landroid/net/LinkProperties;->mCaptivePortalData:Landroid/net/CaptivePortalData;

    return-object v0
.end method

.method public whitelist getDhcpServerAddress()Ljava/net/Inet4Address;
    .registers 2

    .line 476
    iget-object v0, p0, Landroid/net/LinkProperties;->mDhcpServerAddress:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public whitelist getDnsServers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDomains()Ljava/lang/String;
    .registers 2

    .line 626
    iget-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHttpProxy()Landroid/net/ProxyInfo;
    .registers 2

    .line 815
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public whitelist getInterfaceName()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLinkAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMtu()I
    .registers 2

    .line 647
    iget v0, p0, Landroid/net/LinkProperties;->mMtu:I

    return v0
.end method

.method public whitelist getNat64Prefix()Landroid/net/IpPrefix;
    .registers 2

    .line 824
    iget-object v0, p0, Landroid/net/LinkProperties;->mNat64Prefix:Landroid/net/IpPrefix;

    return-object v0
.end method

.method public whitelist getPcscfServers()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrivateDnsServerName()Ljava/lang/String;
    .registers 2

    .line 494
    iget-object v0, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRoutes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 753
    const-wide/32 v0, 0xb1763e8

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_19

    .line 760
    :cond_10
    invoke-direct {p0}, Landroid/net/LinkProperties;->getUnicastRoutes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 754
    :cond_19
    :goto_19
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getStackedLinks()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation

    .line 883
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 884
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 886
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v0, "stacked":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 888
    .local v2, "link":Landroid/net/LinkProperties;
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    .end local v2    # "link":Landroid/net/LinkProperties;
    goto :goto_1c

    .line 890
    :cond_31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getTcpBufferSizes()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 672
    iget-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getValidatedPrivateDnsServers()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasExcludeRoute()Z
    .registers 5

    .line 1368
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1369
    .local v1, "r":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1c

    .line 1370
    const/4 v0, 0x1

    return v0

    .line 1372
    .end local v1    # "r":Landroid/net/RouteInfo;
    :cond_1c
    goto :goto_6

    .line 1373
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-p hasGlobalIPv6Address()Z
    .registers 2

    .line 1110
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v0

    return v0
.end method

.method public whitelist hasGlobalIpv6Address()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1078
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 1079
    .local v1, "address":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1080
    const/4 v0, 0x1

    return v0

    .line 1082
    .end local v1    # "address":Landroid/net/LinkAddress;
    :cond_22
    goto :goto_6

    .line 1083
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-p hasIPv4Address()Z
    .registers 2

    .line 1055
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    move-result v0

    return v0
.end method

.method public greylist-max-p hasIPv4DefaultRoute()Z
    .registers 2

    .line 1153
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIpv4DefaultRoute()Z

    move-result v0

    return v0
.end method

.method public greylist-max-p hasIPv4DnsServer()Z
    .registers 2

    .line 1209
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIpv4DnsServer()Z

    move-result v0

    return v0
.end method

.method public greylist-max-p hasIPv6DefaultRoute()Z
    .registers 2

    .line 1181
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result v0

    return v0
.end method

.method public greylist-max-p hasIPv6DnsServer()Z
    .registers 2

    .line 1237
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIpv6DnsServer()Z

    move-result v0

    return v0
.end method

.method public whitelist hasIpv4Address()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1038
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 1039
    .local v1, "address":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1c

    .line 1040
    const/4 v0, 0x1

    return v0

    .line 1042
    .end local v1    # "address":Landroid/net/LinkAddress;
    :cond_1c
    goto :goto_6

    .line 1043
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasIpv4DefaultRoute()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1121
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1122
    .local v1, "r":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1123
    const/4 v0, 0x1

    return v0

    .line 1125
    .end local v1    # "r":Landroid/net/RouteInfo;
    :cond_1a
    goto :goto_6

    .line 1126
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasIpv4DnsServer()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1192
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1193
    .local v1, "ia":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_18

    .line 1194
    const/4 v0, 0x1

    return v0

    .line 1196
    .end local v1    # "ia":Ljava/net/InetAddress;
    :cond_18
    goto :goto_6

    .line 1197
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasIpv4PcscfServer()Z
    .registers 4

    .line 1247
    iget-object v0, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1248
    .local v1, "ia":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_18

    .line 1249
    const/4 v0, 0x1

    return v0

    .line 1251
    .end local v1    # "ia":Ljava/net/InetAddress;
    :cond_18
    goto :goto_6

    .line 1252
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasIpv4UnreachableDefaultRoute()Z
    .registers 4

    .line 1093
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1094
    .local v1, "r":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isIPv4UnreachableDefault()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1095
    const/4 v0, 0x1

    return v0

    .line 1097
    .end local v1    # "r":Landroid/net/RouteInfo;
    :cond_1a
    goto :goto_6

    .line 1098
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasIpv6DefaultRoute()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1164
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1165
    .local v1, "r":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1166
    const/4 v0, 0x1

    return v0

    .line 1168
    .end local v1    # "r":Landroid/net/RouteInfo;
    :cond_1a
    goto :goto_6

    .line 1169
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasIpv6DnsServer()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1220
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1221
    .local v1, "ia":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_18

    .line 1222
    const/4 v0, 0x1

    return v0

    .line 1224
    .end local v1    # "ia":Ljava/net/InetAddress;
    :cond_18
    goto :goto_6

    .line 1225
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasIpv6PcscfServer()Z
    .registers 4

    .line 1262
    iget-object v0, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1263
    .local v1, "ia":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_18

    .line 1264
    const/4 v0, 0x1

    return v0

    .line 1266
    .end local v1    # "ia":Ljava/net/InetAddress;
    :cond_18
    goto :goto_6

    .line 1267
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasIpv6UnreachableDefaultRoute()Z
    .registers 4

    .line 1136
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1137
    .local v1, "r":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isIPv6UnreachableDefault()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1138
    const/4 v0, 0x1

    return v0

    .line 1140
    .end local v1    # "r":Landroid/net/RouteInfo;
    :cond_1a
    goto :goto_6

    .line 1141
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1699
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_54

    .line 1706
    :cond_7
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 1699
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    .line 1700
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    .line 1701
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    .line 1702
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3d

    add-int/2addr v0, v2

    .line 1703
    iget-object v2, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    if-nez v2, :cond_2e

    move v2, v1

    goto :goto_34

    :cond_2e
    iget-object v2, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_34
    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    .line 1704
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x29

    add-int/2addr v0, v2

    .line 1705
    iget-object v2, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    if-nez v2, :cond_44

    move v2, v1

    goto :goto_4a

    :cond_44
    iget-object v2, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->hashCode()I

    move-result v2

    :goto_4a
    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    .line 1706
    invoke-virtual {v2}, Ljava/util/Hashtable;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2f

    add-int/2addr v0, v2

    :goto_54
    iget v2, p0, Landroid/net/LinkProperties;->mMtu:I

    mul-int/lit8 v2, v2, 0x33

    add-int/2addr v0, v2

    .line 1708
    iget-object v2, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    if-nez v2, :cond_5f

    move v2, v1

    goto :goto_65

    :cond_5f
    iget-object v2, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_65
    add-int/2addr v0, v2

    .line 1709
    iget-boolean v2, p0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    if-eqz v2, :cond_6d

    const/16 v2, 0x39

    goto :goto_6e

    :cond_6d
    move v2, v1

    :goto_6e
    add-int/2addr v0, v2

    .line 1710
    iget-object v2, p0, Landroid/net/LinkProperties;->mDhcpServerAddress:Ljava/net/Inet4Address;

    if-nez v2, :cond_75

    move v2, v1

    goto :goto_7b

    :cond_75
    iget-object v2, p0, Landroid/net/LinkProperties;->mDhcpServerAddress:Ljava/net/Inet4Address;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7b
    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    .line 1711
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x43

    add-int/2addr v0, v2

    .line 1712
    iget-object v2, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    if-nez v2, :cond_8b

    move v2, v1

    goto :goto_91

    :cond_8b
    iget-object v2, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_91
    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mNat64Prefix:Landroid/net/IpPrefix;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1713
    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1714
    iget-boolean v2, p0, Landroid/net/LinkProperties;->mWakeOnLanSupported:Z

    if-eqz v2, :cond_a3

    const/16 v1, 0x47

    :cond_a3
    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/LinkProperties;->mCaptivePortalApiUrl:Landroid/net/Uri;

    iget-object v2, p0, Landroid/net/LinkProperties;->mCaptivePortalData:Landroid/net/CaptivePortalData;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1715
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1699
    return v0
.end method

.method public greylist-max-p isIPv6Provisioned()Z
    .registers 2

    .line 1307
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIpv6Provisioned()Z

    move-result v0

    return v0
.end method

.method public greylist isIdenticalAddresses(Landroid/net/LinkProperties;)Z
    .registers 3
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1408
    invoke-static {p1, p0}, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils;->isIdenticalAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v0

    return v0
.end method

.method public blacklist isIdenticalCaptivePortalApiUrl(Landroid/net/LinkProperties;)Z
    .registers 4
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1566
    iget-object v0, p0, Landroid/net/LinkProperties;->mCaptivePortalApiUrl:Landroid/net/Uri;

    iget-object v1, p1, Landroid/net/LinkProperties;->mCaptivePortalApiUrl:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isIdenticalCaptivePortalData(Landroid/net/LinkProperties;)Z
    .registers 4
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1577
    iget-object v0, p0, Landroid/net/LinkProperties;->mCaptivePortalData:Landroid/net/CaptivePortalData;

    iget-object v1, p1, Landroid/net/LinkProperties;->mCaptivePortalData:Landroid/net/CaptivePortalData;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isIdenticalDhcpServerAddress(Landroid/net/LinkProperties;)Z
    .registers 4
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1396
    iget-object v0, p0, Landroid/net/LinkProperties;->mDhcpServerAddress:Ljava/net/Inet4Address;

    iget-object v1, p1, Landroid/net/LinkProperties;->mDhcpServerAddress:Ljava/net/Inet4Address;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist isIdenticalDnses(Landroid/net/LinkProperties;)Z
    .registers 3
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1420
    invoke-static {p1, p0}, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils;->isIdenticalDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-p isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z
    .registers 3
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1489
    invoke-static {p1, p0}, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils;->isIdenticalHttpProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v0

    return v0
.end method

.method public greylist isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z
    .registers 3
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1385
    invoke-static {p1, p0}, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils;->isIdenticalInterfaceName(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isIdenticalMtu(Landroid/net/LinkProperties;)Z
    .registers 4
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1522
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getMtu()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isIdenticalNat64Prefix(Landroid/net/LinkProperties;)Z
    .registers 4
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1544
    iget-object v0, p0, Landroid/net/LinkProperties;->mNat64Prefix:Landroid/net/IpPrefix;

    iget-object v1, p1, Landroid/net/LinkProperties;->mNat64Prefix:Landroid/net/IpPrefix;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isIdenticalPcscfs(Landroid/net/LinkProperties;)Z
    .registers 5
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1461
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getPcscfServers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1463
    :cond_11
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getPcscfServers()Ljava/util/List;

    move-result-object v0

    .line 1464
    .local v0, "targetPcscfs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_28

    .line 1465
    iget-object v1, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 1464
    :goto_29
    return v1
.end method

.method public greylist-max-o isIdenticalPrivateDns(Landroid/net/LinkProperties;)Z
    .registers 4
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1432
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    move-result v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 1433
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object v0

    .line 1434
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object v1

    .line 1433
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1432
    :goto_1b
    return v0
.end method

.method public greylist isIdenticalRoutes(Landroid/net/LinkProperties;)Z
    .registers 3
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1477
    invoke-static {p1, p0}, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils;->isIdenticalRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r isIdenticalStackedLinks(Landroid/net/LinkProperties;)Z
    .registers 7
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1501
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 1502
    return v1

    .line 1504
    :cond_14
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 1506
    .local v2, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 1507
    .local v3, "iface":Ljava/lang/String;
    iget-object v4, p1, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 1508
    return v1

    .line 1510
    .end local v2    # "stacked":Landroid/net/LinkProperties;
    .end local v3    # "iface":Ljava/lang/String;
    :cond_3b
    goto :goto_1e

    .line 1511
    :cond_3c
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o isIdenticalTcpBufferSizes(Landroid/net/LinkProperties;)Z
    .registers 4
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1533
    iget-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isIdenticalValidatedPrivateDnses(Landroid/net/LinkProperties;)Z
    .registers 5
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1446
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getValidatedPrivateDnsServers()Ljava/util/List;

    move-result-object v0

    .line 1447
    .local v0, "targetDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_17

    .line 1448
    iget-object v1, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 1447
    :goto_18
    return v1
.end method

.method public blacklist isIdenticalWakeOnLan(Landroid/net/LinkProperties;)Z
    .registers 4
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1555
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isWakeOnLanSupported()Z

    move-result v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isWakeOnLanSupported()Z

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist isIpv4Provisioned()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1279
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1280
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIpv4DefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1281
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIpv4DnsServer()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1279
    :goto_15
    return v0
.end method

.method public whitelist isIpv6Provisioned()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1293
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1294
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1295
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIpv6DnsServer()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1293
    :goto_15
    return v0
.end method

.method public whitelist isPrivateDnsActive()Z
    .registers 2

    .line 445
    iget-boolean v0, p0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    return v0
.end method

.method public whitelist isProvisioned()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1320
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIpv4Provisioned()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIpv6Provisioned()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist isReachable(Ljava/net/InetAddress;)Z
    .registers 7
    .param p1, "ip"    # Ljava/net/InetAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1332
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    .line 1334
    .local v0, "allRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-static {v0, p1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    .line 1335
    .local v1, "bestRoute":Landroid/net/RouteInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 1336
    return v2

    .line 1341
    :cond_c
    instance-of v3, p1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_19

    .line 1343
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/LinkProperties;->hasIpv4AddressOnInterface(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1344
    :cond_19
    instance-of v3, p1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3d

    .line 1345
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2f

    .line 1349
    move-object v3, p1

    check-cast v3, Ljava/net/Inet6Address;

    invoke-virtual {v3}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    if-eqz v3, :cond_2e

    move v2, v4

    :cond_2e
    return v2

    .line 1354
    :cond_2f
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_3b
    move v2, v4

    :cond_3c
    return v2

    .line 1358
    :cond_3d
    return v2
.end method

.method public whitelist isWakeOnLanSupported()Z
    .registers 2

    .line 1597
    iget-boolean v0, p0, Landroid/net/LinkProperties;->mWakeOnLanSupported:Z

    return v0
.end method

.method public whitelist removeDnsServer(Ljava/net/InetAddress;)Z
    .registers 3
    .param p1, "dnsServer"    # Ljava/net/InetAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 398
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist removeLinkAddress(Landroid/net/LinkAddress;)Z
    .registers 4
    .param p1, "toRemove"    # Landroid/net/LinkAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 328
    invoke-direct {p0, p1}, Landroid/net/LinkProperties;->findLinkAddressIndex(Landroid/net/LinkAddress;)I

    move-result v0

    .line 329
    .local v0, "i":I
    if-ltz v0, :cond_d

    .line 330
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 331
    const/4 v1, 0x1

    return v1

    .line 333
    :cond_d
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist removePcscfServer(Ljava/net/InetAddress;)Z
    .registers 3
    .param p1, "pcscfServer"    # Ljava/net/InetAddress;

    .line 579
    iget-object v0, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist removeRoute(Landroid/net/RouteInfo;)Z
    .registers 4
    .param p1, "route"    # Landroid/net/RouteInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 740
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public greylist-max-o removeStackedLink(Ljava/lang/String;)Z
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 873
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .line 874
    .local v0, "removed":Landroid/net/LinkProperties;
    if-eqz v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public greylist-max-o removeValidatedPrivateDnsServer(Ljava/net/InetAddress;)Z
    .registers 3
    .param p1, "dnsServer"    # Ljava/net/InetAddress;

    .line 523
    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist setCaptivePortalApiUrl(Landroid/net/Uri;)V
    .registers 2
    .param p1, "url"    # Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1606
    iput-object p1, p0, Landroid/net/LinkProperties;->mCaptivePortalApiUrl:Landroid/net/Uri;

    .line 1607
    return-void
.end method

.method public whitelist setCaptivePortalData(Landroid/net/CaptivePortalData;)V
    .registers 2
    .param p1, "data"    # Landroid/net/CaptivePortalData;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1630
    iput-object p1, p0, Landroid/net/LinkProperties;->mCaptivePortalData:Landroid/net/CaptivePortalData;

    .line 1631
    return-void
.end method

.method public whitelist setDhcpServerAddress(Ljava/net/Inet4Address;)V
    .registers 2
    .param p1, "serverAddress"    # Ljava/net/Inet4Address;

    .line 467
    iput-object p1, p0, Landroid/net/LinkProperties;->mDhcpServerAddress:Ljava/net/Inet4Address;

    .line 468
    return-void
.end method

.method public whitelist setDnsServers(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 408
    .local p1, "dnsServers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 409
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 410
    .local v1, "dnsServer":Ljava/net/InetAddress;
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 411
    .end local v1    # "dnsServer":Ljava/net/InetAddress;
    goto :goto_9

    .line 412
    :cond_19
    return-void
.end method

.method public whitelist setDomains(Ljava/lang/String;)V
    .registers 2
    .param p1, "domains"    # Ljava/lang/String;

    .line 616
    iput-object p1, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    .line 617
    return-void
.end method

.method public whitelist setHttpProxy(Landroid/net/ProxyInfo;)V
    .registers 2
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 806
    iput-object p1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 807
    return-void
.end method

.method public whitelist setInterfaceName(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .line 217
    iput-object p1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .local v0, "newRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 220
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-direct {p0, v2}, Landroid/net/LinkProperties;->routeWithInterface(Landroid/net/RouteInfo;)Landroid/net/RouteInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v2    # "route":Landroid/net/RouteInfo;
    goto :goto_13

    .line 222
    :cond_27
    iput-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    .line 223
    return-void
.end method

.method public whitelist setLinkAddresses(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/LinkAddress;",
            ">;)V"
        }
    .end annotation

    .line 367
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 368
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 369
    .local v1, "address":Landroid/net/LinkAddress;
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 370
    .end local v1    # "address":Landroid/net/LinkAddress;
    goto :goto_9

    .line 371
    :cond_19
    return-void
.end method

.method public whitelist setMtu(I)V
    .registers 2
    .param p1, "mtu"    # I

    .line 637
    iput p1, p0, Landroid/net/LinkProperties;->mMtu:I

    .line 638
    return-void
.end method

.method public whitelist setNat64Prefix(Landroid/net/IpPrefix;)V
    .registers 5
    .param p1, "prefix"    # Landroid/net/IpPrefix;

    .line 836
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    const/16 v1, 0x60

    if-ne v0, v1, :cond_b

    goto :goto_24

    .line 837
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only 96-bit prefixes are supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_24
    :goto_24
    iput-object p1, p0, Landroid/net/LinkProperties;->mNat64Prefix:Landroid/net/IpPrefix;

    .line 840
    return-void
.end method

.method public whitelist setPcscfServers(Ljava/util/Collection;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p1, "pcscfServers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v0, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 592
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 593
    .local v1, "pcscfServer":Ljava/net/InetAddress;
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->addPcscfServer(Ljava/net/InetAddress;)Z

    .line 594
    .end local v1    # "pcscfServer":Ljava/net/InetAddress;
    goto :goto_9

    .line 595
    :cond_19
    return-void
.end method

.method public whitelist setPrivateDnsServerName(Ljava/lang/String;)V
    .registers 2
    .param p1, "privateDnsServerName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 458
    iput-object p1, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public whitelist setTcpBufferSizes(Ljava/lang/String;)V
    .registers 2
    .param p1, "tcpBufferSizes"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 660
    iput-object p1, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    .line 661
    return-void
.end method

.method public whitelist setUsePrivateDns(Z)V
    .registers 2
    .param p1, "usePrivateDns"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 432
    iput-boolean p1, p0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    .line 433
    return-void
.end method

.method public whitelist setValidatedPrivateDnsServers(Ljava/util/Collection;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 536
    .local p1, "dnsServers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 537
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 538
    .local v1, "dnsServer":Ljava/net/InetAddress;
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->addValidatedPrivateDnsServer(Ljava/net/InetAddress;)Z

    .line 539
    .end local v1    # "dnsServer":Ljava/net/InetAddress;
    goto :goto_9

    .line 540
    :cond_19
    return-void
.end method

.method public blacklist setWakeOnLanSupported(Z)V
    .registers 2
    .param p1, "supported"    # Z

    .line 1588
    iput-boolean p1, p0, Landroid/net/LinkProperties;->mWakeOnLanSupported:Z

    .line 1589
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 931
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, " "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 933
    .local v0, "resultJoiner":Ljava/util/StringJoiner;
    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 934
    const-string v1, "InterfaceName:"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 935
    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 938
    :cond_19
    const-string v1, "LinkAddresses: ["

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 939
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, ","

    if-nez v1, :cond_31

    .line 940
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 942
    :cond_31
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 944
    const-string v3, "DnsAddresses: ["

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 945
    iget-object v3, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 946
    iget-object v3, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 948
    :cond_4c
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 950
    iget-boolean v3, p0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    if-eqz v3, :cond_58

    .line 951
    const-string v3, "UsePrivateDns: true"

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 954
    :cond_58
    iget-object v3, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    if-eqz v3, :cond_66

    .line 955
    const-string v3, "PrivateDnsServerName:"

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 956
    iget-object v3, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 959
    :cond_66
    iget-object v3, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7f

    .line 960
    const-string v3, "PcscfAddresses: ["

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 961
    iget-object v3, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 962
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 965
    :cond_7f
    iget-object v3, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_af

    .line 966
    new-instance v3, Ljava/util/StringJoiner;

    const-string v4, "ValidatedPrivateDnsAddresses: ["

    invoke-direct {v3, v2, v4, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 968
    .local v3, "validatedPrivateDnsesJoiner":Ljava/util/StringJoiner;
    iget-object v4, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_94
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 969
    .local v5, "addr":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 970
    .end local v5    # "addr":Ljava/net/InetAddress;
    goto :goto_94

    .line 971
    :cond_a8
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 974
    .end local v3    # "validatedPrivateDnsesJoiner":Ljava/util/StringJoiner;
    :cond_af
    const-string v3, "Domains:"

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 975
    iget-object v3, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 977
    const-string v3, "MTU:"

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 978
    iget v3, p0, Landroid/net/LinkProperties;->mMtu:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 980
    iget-boolean v3, p0, Landroid/net/LinkProperties;->mWakeOnLanSupported:Z

    if-eqz v3, :cond_d0

    .line 981
    const-string v3, "WakeOnLanSupported: true"

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 984
    :cond_d0
    iget-object v3, p0, Landroid/net/LinkProperties;->mDhcpServerAddress:Ljava/net/Inet4Address;

    if-eqz v3, :cond_e2

    .line 985
    const-string v3, "ServerAddress:"

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 986
    iget-object v3, p0, Landroid/net/LinkProperties;->mDhcpServerAddress:Ljava/net/Inet4Address;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 989
    :cond_e2
    iget-object v3, p0, Landroid/net/LinkProperties;->mCaptivePortalApiUrl:Landroid/net/Uri;

    if-eqz v3, :cond_fe

    .line 990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaptivePortalApiUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/LinkProperties;->mCaptivePortalApiUrl:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 993
    :cond_fe
    iget-object v3, p0, Landroid/net/LinkProperties;->mCaptivePortalData:Landroid/net/CaptivePortalData;

    if-eqz v3, :cond_11a

    .line 994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaptivePortalData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/LinkProperties;->mCaptivePortalData:Landroid/net/CaptivePortalData;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 997
    :cond_11a
    iget-object v3, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    if-eqz v3, :cond_128

    .line 998
    const-string v3, "TcpBufferSizes:"

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 999
    iget-object v3, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1002
    :cond_128
    const-string v3, "Routes: ["

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1003
    iget-object v3, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13e

    .line 1004
    iget-object v3, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1006
    :cond_13e
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1008
    iget-object v3, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    if-eqz v3, :cond_153

    .line 1009
    const-string v3, "HttpProxy:"

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1010
    iget-object v3, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1013
    :cond_153
    iget-object v3, p0, Landroid/net/LinkProperties;->mNat64Prefix:Landroid/net/IpPrefix;

    if-eqz v3, :cond_165

    .line 1014
    const-string v3, "Nat64Prefix:"

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1015
    iget-object v3, p0, Landroid/net/LinkProperties;->mNat64Prefix:Landroid/net/IpPrefix;

    invoke-virtual {v3}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1018
    :cond_165
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    .line 1019
    .local v3, "stackedLinksValues":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkProperties;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1ac

    .line 1020
    new-instance v4, Ljava/util/StringJoiner;

    const-string v5, "Stacked: ["

    invoke-direct {v4, v2, v5, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1021
    .local v4, "stackedLinksJoiner":Ljava/util/StringJoiner;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 1022
    .local v2, "lp":Landroid/net/LinkProperties;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1023
    .end local v2    # "lp":Landroid/net/LinkProperties;
    goto :goto_17c

    .line 1024
    :cond_1a5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1027
    .end local v4    # "stackedLinksJoiner":Ljava/util/StringJoiner;
    :cond_1ac
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1722
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1723
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1724
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 1725
    .local v1, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1726
    .end local v1    # "linkAddress":Landroid/net/LinkAddress;
    goto :goto_16

    .line 1728
    :cond_26
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Landroid/net/LinkProperties;->writeAddresses(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1729
    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Landroid/net/LinkProperties;->writeAddresses(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1730
    iget-boolean v0, p0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1731
    iget-object v0, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1732
    iget-object v0, p0, Landroid/net/LinkProperties;->mPcscfs:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Landroid/net/LinkProperties;->writeAddresses(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1733
    iget-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1734
    iget-object v0, p0, Landroid/net/LinkProperties;->mDhcpServerAddress:Ljava/net/Inet4Address;

    invoke-static {p1, v0}, Landroid/net/LinkProperties;->writeAddress(Landroid/os/Parcel;Ljava/net/InetAddress;)V

    .line 1735
    iget v0, p0, Landroid/net/LinkProperties;->mMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1736
    iget-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1737
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1738
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1739
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1740
    .end local v1    # "route":Landroid/net/RouteInfo;
    goto :goto_62

    .line 1742
    :cond_72
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_81

    .line 1743
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1744
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_84

    .line 1746
    :cond_81
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1748
    :goto_84
    iget-object v0, p0, Landroid/net/LinkProperties;->mNat64Prefix:Landroid/net/IpPrefix;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1750
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1751
    .local v0, "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1753
    iget-boolean v2, p0, Landroid/net/LinkProperties;->mWakeOnLanSupported:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1754
    iget-boolean v2, p0, Landroid/net/LinkProperties;->mParcelSensitiveFields:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_a4

    iget-object v2, p0, Landroid/net/LinkProperties;->mCaptivePortalApiUrl:Landroid/net/Uri;

    goto :goto_a5

    :cond_a4
    move-object v2, v3

    :goto_a5
    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1755
    iget-boolean v2, p0, Landroid/net/LinkProperties;->mParcelSensitiveFields:Z

    if-eqz v2, :cond_ae

    iget-object v3, p0, Landroid/net/LinkProperties;->mCaptivePortalData:Landroid/net/CaptivePortalData;

    :cond_ae
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1756
    return-void
.end method
