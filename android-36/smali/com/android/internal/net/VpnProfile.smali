.class public final Lcom/android/internal/net/VpnProfile;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_ENCODING:Ljava/lang/String;

.field private static final blacklist ENCODED_NULL_PROXY_INFO:Ljava/lang/String; = "\u0000\u0000\u0000\u0000"

.field static final blacklist LIST_DELIMITER:Ljava/lang/String; = ","

.field public static final blacklist PROXY_MANUAL:I = 0x1

.field public static final blacklist PROXY_NONE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "VpnProfile"

.field public static final blacklist TYPE_IKEV2_FROM_IKE_TUN_CONN_PARAMS:I = 0x9

.field public static final blacklist TYPE_IKEV2_IPSEC_PSK:I = 0x7

.field public static final blacklist TYPE_IKEV2_IPSEC_RSA:I = 0x8

.field public static final blacklist TYPE_IKEV2_IPSEC_USER_PASS:I = 0x6

.field public static final greylist-max-o TYPE_IPSEC_HYBRID_RSA:I = 0x5

.field public static final greylist-max-o TYPE_IPSEC_XAUTH_PSK:I = 0x3

.field public static final greylist-max-o TYPE_IPSEC_XAUTH_RSA:I = 0x4

.field public static final greylist-max-o TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final greylist-max-o TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final greylist-max-o TYPE_MAX:I = 0x9

.field public static final greylist-max-o TYPE_PPTP:I = 0x0

.field static final blacklist VALUE_DELIMITER:Ljava/lang/String; = "\u0000"


# instance fields
.field public blacklist areAuthParamsInline:Z

.field public final blacklist automaticIpVersionSelectionEnabled:Z

.field public final blacklist automaticNattKeepaliveTimerEnabled:Z

.field public greylist-max-o dnsServers:Ljava/lang/String;

.field public final blacklist excludeLocalRoutes:Z

.field public final blacklist ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

.field public greylist-max-o ipsecCaCert:Ljava/lang/String;

.field public greylist-max-o ipsecIdentifier:Ljava/lang/String;

.field public greylist-max-o ipsecSecret:Ljava/lang/String;

.field public greylist-max-o ipsecServerCert:Ljava/lang/String;

.field public greylist-max-o ipsecUserCert:Ljava/lang/String;

.field public blacklist isBypassable:Z

.field public blacklist isMetered:Z

.field public final blacklist isRestrictedToTestNetworks:Z

.field public final greylist key:Ljava/lang/String;

.field public greylist-max-o l2tpSecret:Ljava/lang/String;

.field private blacklist mAllowedAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist maxMtu:I

.field public greylist-max-o mppe:Z

.field public greylist name:Ljava/lang/String;

.field public greylist-max-o password:Ljava/lang/String;

.field public blacklist proxy:Landroid/net/ProxyInfo;

.field public final blacklist requiresInternetValidation:Z

.field public greylist-max-o routes:Ljava/lang/String;

.field public transient greylist saveLogin:Z

.field public greylist-max-o searchDomains:Ljava/lang/String;

.field public greylist-max-p server:Ljava/lang/String;

.field public greylist type:I

.field public greylist username:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 87
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/VpnProfile;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 605
    new-instance v0, Lcom/android/internal/net/VpnProfile$1;

    invoke-direct {v0}, Lcom/android/internal/net/VpnProfile$1;-><init>()V

    sput-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 99
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 108
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 109
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 146
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    .line 148
    const/16 v3, 0x550

    iput v3, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    .line 149
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_79

    move v3, v2

    goto :goto_7a

    :cond_79
    move v3, v1

    :goto_7a
    iput-boolean v3, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a7

    move v1, v2

    :cond_a7
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 208
    const-class v1, Landroid/net/ProxyInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProxyInfo;

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 210
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    .line 218
    const-class v1, Landroid/os/PersistableBundle;

    .line 219
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/os/PersistableBundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 220
    .local v1, "bundle":Landroid/os/PersistableBundle;
    if-nez v1, :cond_fc

    goto :goto_100

    .line 221
    :cond_fc
    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    :goto_100
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->automaticNattKeepaliveTimerEnabled:Z

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->automaticIpVersionSelectionEnabled:Z

    .line 224
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .line 163
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "key":Ljava/lang/String;
    .local v1, "key":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;ZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;)V

    .line 164
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isRestrictedToTestNetworks"    # Z

    .line 167
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "isRestrictedToTestNetworks":Z
    .local v1, "key":Ljava/lang/String;
    .local v2, "isRestrictedToTestNetworks":Z
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;ZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;)V

    .line 168
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;)V
    .registers 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isRestrictedToTestNetworks"    # Z
    .param p3, "excludeLocalRoutes"    # Z
    .param p4, "requiresInternetValidation"    # Z
    .param p5, "ikeTunConnParams"    # Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 172
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "isRestrictedToTestNetworks":Z
    .end local p3    # "excludeLocalRoutes":Z
    .end local p4    # "requiresInternetValidation":Z
    .end local p5    # "ikeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .local v1, "key":Ljava/lang/String;
    .local v2, "isRestrictedToTestNetworks":Z
    .local v3, "excludeLocalRoutes":Z
    .local v4, "requiresInternetValidation":Z
    .local v5, "ikeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;ZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZ)V

    .line 174
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZ)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isRestrictedToTestNetworks"    # Z
    .param p3, "excludeLocalRoutes"    # Z
    .param p4, "requiresInternetValidation"    # Z
    .param p5, "ikeTunConnParams"    # Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .param p6, "automaticNattKeepaliveTimerEnabled"    # Z
    .param p7, "automaticIpVersionSelectionEnabled"    # Z

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 99
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 108
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 109
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 146
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    .line 148
    const/16 v0, 0x550

    iput v0, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    .line 149
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 180
    iput-object p1, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 181
    iput-boolean p2, p0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    .line 182
    iput-boolean p3, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    .line 183
    iput-boolean p4, p0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    .line 184
    iput-object p5, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 185
    iput-boolean p6, p0, Lcom/android/internal/net/VpnProfile;->automaticNattKeepaliveTimerEnabled:Z

    .line 186
    iput-boolean p7, p0, Lcom/android/internal/net/VpnProfile;->automaticIpVersionSelectionEnabled:Z

    .line 187
    return-void
.end method

.method public static greylist-max-r decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;
    .registers 21
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [B

    .line 287
    const/4 v1, 0x0

    if-nez p0, :cond_4

    .line 288
    return-object v1

    .line 291
    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_200

    move-object/from16 v3, p1

    :try_start_a
    invoke-direct {v0, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v2, "\u0000"

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "values":[Ljava/lang/String;
    array-length v2, v0

    const/16 v4, 0xe

    if-lt v2, v4, :cond_1fb

    array-length v2, v0

    const/16 v5, 0x13

    const/16 v6, 0x18

    if-le v2, v5, :cond_28

    array-length v2, v0

    if-lt v2, v6, :cond_24

    goto :goto_28

    :cond_24
    :goto_24
    move-object/from16 v18, v1

    goto/16 :goto_1fd

    :cond_28
    :goto_28
    array-length v2, v0

    const/16 v7, 0x1e

    const/16 v8, 0x1c

    if-le v2, v8, :cond_32

    array-length v2, v0

    if-lt v2, v7, :cond_24

    :cond_32
    array-length v2, v0

    if-le v2, v7, :cond_36

    goto :goto_24

    .line 308
    :cond_36
    array-length v2, v0

    const/16 v9, 0x19

    if-lt v2, v9, :cond_43

    .line 309
    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move v12, v2

    .local v2, "isRestrictedToTestNetworks":Z
    goto :goto_45

    .line 311
    .end local v2    # "isRestrictedToTestNetworks":Z
    :cond_43
    const/4 v2, 0x0

    move v12, v2

    .line 315
    .local v12, "isRestrictedToTestNetworks":Z
    :goto_45
    array-length v2, v0

    const/16 v10, 0x1a

    if-lt v2, v10, :cond_52

    .line 316
    aget-object v2, v0, v9

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move v13, v2

    .local v2, "excludeLocalRoutes":Z
    goto :goto_54

    .line 318
    .end local v2    # "excludeLocalRoutes":Z
    :cond_52
    const/4 v2, 0x0

    move v13, v2

    .line 322
    .local v13, "excludeLocalRoutes":Z
    :goto_54
    array-length v2, v0

    const/16 v9, 0x1b

    if-lt v2, v9, :cond_61

    .line 323
    aget-object v2, v0, v10

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move v14, v2

    .local v2, "requiresInternetValidation":Z
    goto :goto_63

    .line 325
    .end local v2    # "requiresInternetValidation":Z
    :cond_61
    const/4 v2, 0x0

    move v14, v2

    .line 330
    .local v14, "requiresInternetValidation":Z
    :goto_63
    array-length v2, v0

    const/4 v10, 0x0

    if-lt v2, v8, :cond_91

    aget-object v2, v0, v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_91

    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 332
    .local v2, "parcel":Landroid/os/Parcel;
    aget-object v9, v0, v9

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 333
    .local v9, "bytes":[B
    array-length v11, v9

    invoke-virtual {v2, v9, v10, v11}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 334
    invoke-virtual {v2, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 335
    const-class v11, Landroid/os/PersistableBundle;

    .line 336
    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 335
    invoke-virtual {v2, v11}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PersistableBundle;

    .line 337
    .local v11, "bundle":Landroid/os/PersistableBundle;
    invoke-static {v11}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v15

    .line 338
    .end local v2    # "parcel":Landroid/os/Parcel;
    .end local v9    # "bytes":[B
    .end local v11    # "bundle":Landroid/os/PersistableBundle;
    .local v15, "tempIkeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    goto :goto_93

    .line 339
    .end local v15    # "tempIkeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    :cond_91
    const/4 v2, 0x0

    move-object v15, v2

    .line 344
    .restart local v15    # "tempIkeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    :goto_93
    array-length v2, v0

    if-lt v2, v7, :cond_a9

    .line 345
    aget-object v2, v0, v8

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 346
    .local v2, "automaticNattKeepaliveTimerEnabled":Z
    const/16 v7, 0x1d

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move/from16 v16, v2

    move/from16 v17, v7

    .local v7, "automaticIpVersionSelectionEnabled":Z
    goto :goto_af

    .line 348
    .end local v2    # "automaticNattKeepaliveTimerEnabled":Z
    .end local v7    # "automaticIpVersionSelectionEnabled":Z
    :cond_a9
    const/4 v2, 0x0

    .line 349
    .restart local v2    # "automaticNattKeepaliveTimerEnabled":Z
    const/4 v7, 0x0

    move/from16 v16, v2

    move/from16 v17, v7

    .line 352
    .end local v2    # "automaticNattKeepaliveTimerEnabled":Z
    .local v16, "automaticNattKeepaliveTimerEnabled":Z
    .local v17, "automaticIpVersionSelectionEnabled":Z
    :goto_af
    move v2, v10

    new-instance v10, Lcom/android/internal/net/VpnProfile;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;ZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZ)V

    .line 355
    .local v10, "profile":Lcom/android/internal/net/VpnProfile;
    aget-object v7, v0, v2

    iput-object v7, v10, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 356
    const/4 v7, 0x1

    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v10, Lcom/android/internal/net/VpnProfile;->type:I

    .line 357
    iget v8, v10, Lcom/android/internal/net/VpnProfile;->type:I

    if-ltz v8, :cond_1f8

    iget v8, v10, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v9, 0x9

    if-le v8, v9, :cond_d2

    move-object/from16 v18, v1

    goto/16 :goto_1fa

    .line 360
    :cond_d2
    const/4 v8, 0x2

    aget-object v8, v0, v8

    iput-object v8, v10, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 361
    const/4 v8, 0x3

    aget-object v8, v0, v8

    iput-object v8, v10, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 362
    const/4 v8, 0x4

    aget-object v8, v0, v8

    iput-object v8, v10, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 363
    const/4 v8, 0x5

    aget-object v8, v0, v8

    iput-object v8, v10, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 364
    const/4 v8, 0x6

    aget-object v8, v0, v8

    iput-object v8, v10, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 365
    const/4 v8, 0x7

    aget-object v8, v0, v8

    iput-object v8, v10, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 366
    const/16 v8, 0x8

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v10, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 367
    aget-object v8, v0, v9

    iput-object v8, v10, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 368
    const/16 v8, 0xa

    aget-object v8, v0, v8

    iput-object v8, v10, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 369
    const/16 v8, 0xb

    aget-object v8, v0, v8

    iput-object v8, v10, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 370
    const/16 v8, 0xc

    aget-object v8, v0, v8

    iput-object v8, v10, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 371
    const/16 v8, 0xd

    aget-object v8, v0, v8

    iput-object v8, v10, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 372
    array-length v8, v0
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_117} :catch_1fe

    const-string v9, ""

    if-le v8, v4, :cond_11e

    :try_start_11b
    aget-object v4, v0, v4

    goto :goto_11f

    :cond_11e
    move-object v4, v9

    :goto_11f
    iput-object v4, v10, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 373
    array-length v4, v0

    const/16 v8, 0xf

    if-le v4, v8, :cond_184

    .line 374
    array-length v4, v0

    if-le v4, v8, :cond_12c

    aget-object v4, v0, v8

    goto :goto_12d

    :cond_12c
    move-object v4, v9

    .line 375
    .local v4, "host":Ljava/lang/String;
    :goto_12d
    array-length v8, v0

    const/16 v11, 0x10

    if-le v8, v11, :cond_135

    aget-object v8, v0, v11

    goto :goto_136

    :cond_135
    move-object v8, v9

    .line 376
    .local v8, "port":Ljava/lang/String;
    :goto_136
    array-length v11, v0
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_137} :catch_1fe

    move-object/from16 v18, v1

    const/16 v1, 0x11

    if-le v11, v1, :cond_140

    :try_start_13d
    aget-object v1, v0, v1

    goto :goto_141

    :cond_140
    move-object v1, v9

    .line 377
    .local v1, "exclList":Ljava/lang/String;
    :goto_141
    array-length v11, v0

    const/16 v2, 0x12

    if-le v11, v2, :cond_148

    aget-object v9, v0, v2

    .line 378
    .local v9, "pacFileUrl":Ljava/lang/String;
    :cond_148
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16c

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15b

    goto :goto_16c

    .line 383
    :cond_15b
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_186

    .line 384
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v2

    iput-object v2, v10, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    goto :goto_186

    .line 379
    :cond_16c
    :goto_16c
    nop

    .line 380
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_175

    .line 381
    const/4 v2, 0x0

    goto :goto_179

    :cond_175
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 382
    :goto_179
    invoke-static {v1}, Lcom/android/net/module/util/ProxyUtils;->exclusionStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 380
    invoke-static {v4, v2, v11}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v2

    iput-object v2, v10, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    goto :goto_186

    .line 373
    .end local v1    # "exclList":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v8    # "port":Ljava/lang/String;
    .end local v9    # "pacFileUrl":Ljava/lang/String;
    :cond_184
    move-object/from16 v18, v1

    .line 389
    :cond_186
    :goto_186
    array-length v1, v0

    if-lt v1, v6, :cond_1e1

    .line 390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 391
    aget-object v1, v0, v5

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 392
    .local v2, "algo":Ljava/lang/String;
    iget-object v4, v10, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    sget-object v5, Lcom/android/internal/net/VpnProfile;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-static {v2, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    nop

    .end local v2    # "algo":Ljava/lang/String;
    goto :goto_1a0

    .line 395
    :cond_1b9
    const/16 v1, 0x14

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v10, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    .line 396
    const/16 v1, 0x15

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v10, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    .line 397
    const/16 v1, 0x16

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v10, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    .line 398
    const/16 v1, 0x17

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v10, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    .line 403
    :cond_1e1
    iget-object v1, v10, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f3

    iget-object v1, v10, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f2

    goto :goto_1f3

    :cond_1f2
    const/4 v7, 0x0

    :cond_1f3
    :goto_1f3
    iput-boolean v7, v10, Lcom/android/internal/net/VpnProfile;->saveLogin:Z
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_1f5} :catch_1f6

    .line 404
    return-object v10

    .line 405
    .end local v0    # "values":[Ljava/lang/String;
    .end local v10    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v12    # "isRestrictedToTestNetworks":Z
    .end local v13    # "excludeLocalRoutes":Z
    .end local v14    # "requiresInternetValidation":Z
    .end local v15    # "tempIkeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .end local v16    # "automaticNattKeepaliveTimerEnabled":Z
    .end local v17    # "automaticIpVersionSelectionEnabled":Z
    :catch_1f6
    move-exception v0

    goto :goto_205

    .line 357
    .restart local v0    # "values":[Ljava/lang/String;
    .restart local v10    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v12    # "isRestrictedToTestNetworks":Z
    .restart local v13    # "excludeLocalRoutes":Z
    .restart local v14    # "requiresInternetValidation":Z
    .restart local v15    # "tempIkeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .restart local v16    # "automaticNattKeepaliveTimerEnabled":Z
    .restart local v17    # "automaticIpVersionSelectionEnabled":Z
    :cond_1f8
    move-object/from16 v18, v1

    .line 358
    :goto_1fa
    return-object v18

    .line 302
    .end local v10    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v12    # "isRestrictedToTestNetworks":Z
    .end local v13    # "excludeLocalRoutes":Z
    .end local v14    # "requiresInternetValidation":Z
    .end local v15    # "tempIkeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .end local v16    # "automaticNattKeepaliveTimerEnabled":Z
    .end local v17    # "automaticIpVersionSelectionEnabled":Z
    :cond_1fb
    move-object/from16 v18, v1

    .line 304
    :goto_1fd
    return-object v18

    .line 405
    .end local v0    # "values":[Ljava/lang/String;
    :catch_1fe
    move-exception v0

    goto :goto_203

    :catch_200
    move-exception v0

    move-object/from16 v3, p1

    :goto_203
    move-object/from16 v18, v1

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    :goto_205
    const-string v1, "VpnProfile"

    const-string v2, "Got exception in decode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v18
.end method

.method public static blacklist isLegacyType(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 486
    packed-switch p0, :pswitch_data_8

    .line 495
    const/4 v0, 0x0

    return v0

    .line 493
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist isValidLockdownLegacyVpnProfile()Z
    .registers 2

    .line 500
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {v0}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->isServerAddressNumeric()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->hasDns()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->areDnsAddressesNumeric()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 500
    :goto_1d
    return v0
.end method

.method private blacklist isValidLockdownPlatformVpnProfile()Z
    .registers 2

    .line 505
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->isValidVpnProfile(Lcom/android/internal/net/VpnProfile;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public greylist-max-o areDnsAddressesNumeric()Z
    .registers 6

    .line 545
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v2, " +"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_b
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    .line 546
    .local v4, "dnsServer":Ljava/lang/String;
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_12} :catch_19

    .line 545
    nop

    .end local v4    # "dnsServer":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 550
    :cond_16
    nop

    .line 551
    const/4 v0, 0x1

    return v0

    .line 548
    :catch_19
    move-exception v1

    .line 549
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return v0
.end method

.method public blacklist clone()Lcom/android/internal/net/VpnProfile;
    .registers 3

    .line 625
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 626
    :catch_7
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const-string v1, "VpnProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->clone()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o encode()[B
    .registers 9

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    const-string v4, ""

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    goto :goto_29

    :cond_28
    move-object v3, v4

    :goto_29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    goto :goto_38

    :cond_37
    move-object v3, v4

    :goto_38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    if-eqz v2, :cond_ee

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    goto :goto_ad

    :cond_ac
    move-object v3, v4

    :goto_ad
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 438
    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d8

    .line 439
    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d9

    .line 440
    :cond_d8
    move-object v3, v4

    .line 437
    :goto_d9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f3

    .line 443
    :cond_ee
    const-string v2, "\u0000\u0000\u0000\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :goto_f3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v2, "encodedAlgoNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_f8
    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_fe
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_115

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 450
    .local v5, "algo":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/net/VpnProfile;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_113
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f8 .. :try_end_113} :catch_1a7

    .line 451
    nop

    .end local v5    # "algo":Ljava/lang/String;
    goto :goto_fe

    .line 455
    :cond_115
    nop

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-static {v5, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 468
    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v3, :cond_183

    .line 469
    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 470
    invoke-static {v3}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 471
    .local v3, "bundle":Landroid/os/PersistableBundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 472
    .local v4, "parcel":Landroid/os/Parcel;
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 473
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    .line 474
    .local v5, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .end local v3    # "bundle":Landroid/os/PersistableBundle;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .end local v5    # "bytes":[B
    goto :goto_18a

    .line 476
    :cond_183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :goto_18a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/net/VpnProfile;->automaticNattKeepaliveTimerEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/net/VpnProfile;->automaticIpVersionSelectionEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1

    .line 452
    :catch_1a7
    move-exception v1

    .line 454
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to encode algorithms."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 569
    instance-of v0, p1, Lcom/android/internal/net/VpnProfile;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 570
    return v1

    .line 573
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 574
    .local v0, "other":Lcom/android/internal/net/VpnProfile;
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 575
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget v2, p0, Lcom/android/internal/net/VpnProfile;->type:I

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    if-ne v2, v3, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 577
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 578
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 579
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 580
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 581
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 582
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-ne v2, v3, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 584
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 585
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 586
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 587
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 588
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 589
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 590
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 591
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    if-ne v2, v3, :cond_f7

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    if-ne v2, v3, :cond_f7

    iget v2, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    if-ne v2, v3, :cond_f7

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    if-ne v2, v3, :cond_f7

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    if-ne v2, v3, :cond_f7

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    if-ne v2, v3, :cond_f7

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    if-ne v2, v3, :cond_f7

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 599
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->automaticNattKeepaliveTimerEnabled:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->automaticNattKeepaliveTimerEnabled:Z

    if-ne v2, v3, :cond_f7

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->automaticIpVersionSelectionEnabled:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->automaticIpVersionSelectionEnabled:Z

    if-ne v2, v3, :cond_f7

    const/4 v1, 0x1

    goto :goto_f8

    :cond_f7
    nop

    .line 574
    :goto_f8
    return v1
.end method

.method public blacklist getAllowedAlgorithms()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o hasDns()Z
    .registers 2

    .line 539
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 30

    .line 557
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 558
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    iget-boolean v9, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    .line 560
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v19, v1

    iget-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v20, v1

    iget v1, v0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v22, v1

    iget-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    .line 561
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v23, v1

    iget-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v24, v1

    iget-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-object/from16 v26, v1

    iget-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->automaticNattKeepaliveTimerEnabled:Z

    .line 562
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v27, v1

    iget-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->automaticIpVersionSelectionEnabled:Z

    .line 563
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v28, v27

    move-object/from16 v27, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v28

    filled-new-array/range {v1 .. v27}, [Ljava/lang/Object;

    move-result-object v1

    .line 557
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public greylist-max-o isServerAddressNumeric()Z
    .registers 3

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_8

    .line 533
    nop

    .line 534
    const/4 v0, 0x1

    return v0

    .line 531
    :catch_8
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o isTypeValidForLockdown()Z
    .registers 2

    .line 524
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o isValidLockdownProfile()Z
    .registers 2

    .line 517
    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->isTypeValidForLockdown()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 518
    invoke-direct {p0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownLegacyVpnProfile()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownPlatformVpnProfile()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 517
    :goto_15
    return v0
.end method

.method public blacklist setAllowedAlgorithms(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p1, "allowedAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 243
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 247
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 266
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 267
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 268
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 270
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 271
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 272
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-nez v0, :cond_88

    const/4 v0, 0x0

    goto :goto_8e

    .line 274
    :cond_88
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 273
    :goto_8e
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 275
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->automaticNattKeepaliveTimerEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 276
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->automaticIpVersionSelectionEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 277
    return-void
.end method
