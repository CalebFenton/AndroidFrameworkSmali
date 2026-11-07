.class public final Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;
.super Ljava/lang/Object;
.source "KnownNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

.field private blacklist mNetworkSource:I

.field private final blacklist mSecurityTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSsid:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mNetworkSource:I

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mSecurityTypes:Landroid/util/ArraySet;

    .line 89
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist addSecurityType(I)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;
    .registers 4
    .param p1, "securityType"    # I

    .line 123
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mSecurityTypes:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 124
    return-object p0
.end method

.method public whitelist build()Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    .registers 8

    .line 158
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mNetworkSource:I

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mSsid:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mSecurityTypes:Landroid/util/ArraySet;

    iget-object v4, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    iget-object v5, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;-><init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 147
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mExtras:Landroid/os/Bundle;

    .line 148
    return-object p0
.end method

.method public whitelist setNetworkProviderInfo(Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;
    .registers 2
    .param p1, "networkProviderInfo"    # Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    .line 136
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    .line 137
    return-object p0
.end method

.method public whitelist setNetworkSource(I)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;
    .registers 2
    .param p1, "networkSource"    # I

    .line 99
    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mNetworkSource:I

    .line 100
    return-object p0
.end method

.method public whitelist setSsid(Ljava/lang/String;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;
    .registers 2
    .param p1, "ssid"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mSsid:Ljava/lang/String;

    .line 112
    return-object p0
.end method
