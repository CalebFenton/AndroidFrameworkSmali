.class public final Landroid/net/EthernetNetworkUpdateRequest$Builder;
.super Ljava/lang/Object;
.source "EthernetNetworkUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetNetworkUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderIpConfig:Landroid/net/IpConfiguration;

.field private blacklist mBuilderNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/EthernetNetworkUpdateRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/net/EthernetNetworkUpdateRequest;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Landroid/net/EthernetNetworkUpdateRequest;->-$$Nest$fgetmIpConfig(Landroid/net/EthernetNetworkUpdateRequest;)Landroid/net/IpConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 96
    move-object v0, v1

    goto :goto_18

    :cond_f
    new-instance v0, Landroid/net/IpConfiguration;

    invoke-static {p1}, Landroid/net/EthernetNetworkUpdateRequest;->-$$Nest$fgetmIpConfig(Landroid/net/EthernetNetworkUpdateRequest;)Landroid/net/IpConfiguration;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    :goto_18
    iput-object v0, p0, Landroid/net/EthernetNetworkUpdateRequest$Builder;->mBuilderIpConfig:Landroid/net/IpConfiguration;

    .line 97
    invoke-static {p1}, Landroid/net/EthernetNetworkUpdateRequest;->-$$Nest$fgetmNetworkCapabilities(Landroid/net/EthernetNetworkUpdateRequest;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_21

    .line 98
    goto :goto_2a

    :cond_21
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-static {p1}, Landroid/net/EthernetNetworkUpdateRequest;->-$$Nest$fgetmNetworkCapabilities(Landroid/net/EthernetNetworkUpdateRequest;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    :goto_2a
    iput-object v1, p0, Landroid/net/EthernetNetworkUpdateRequest$Builder;->mBuilderNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 99
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/EthernetNetworkUpdateRequest;
    .registers 5

    .line 131
    iget-object v0, p0, Landroid/net/EthernetNetworkUpdateRequest$Builder;->mBuilderIpConfig:Landroid/net/IpConfiguration;

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/net/EthernetNetworkUpdateRequest$Builder;->mBuilderNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 132
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot construct an empty EthernetNetworkUpdateRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_11
    :goto_11
    new-instance v0, Landroid/net/EthernetNetworkUpdateRequest;

    iget-object v1, p0, Landroid/net/EthernetNetworkUpdateRequest$Builder;->mBuilderIpConfig:Landroid/net/IpConfiguration;

    iget-object v2, p0, Landroid/net/EthernetNetworkUpdateRequest$Builder;->mBuilderNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/EthernetNetworkUpdateRequest;-><init>(Landroid/net/IpConfiguration;Landroid/net/NetworkCapabilities;Landroid/net/EthernetNetworkUpdateRequest-IA;)V

    return-object v0
.end method

.method public whitelist setIpConfiguration(Landroid/net/IpConfiguration;)Landroid/net/EthernetNetworkUpdateRequest$Builder;
    .registers 3
    .param p1, "ipConfig"    # Landroid/net/IpConfiguration;

    .line 108
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/net/IpConfiguration;

    invoke-direct {v0, p1}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    :goto_9
    iput-object v0, p0, Landroid/net/EthernetNetworkUpdateRequest$Builder;->mBuilderIpConfig:Landroid/net/IpConfiguration;

    .line 109
    return-object p0
.end method

.method public whitelist setNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/EthernetNetworkUpdateRequest$Builder;
    .registers 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 119
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    :goto_9
    iput-object v0, p0, Landroid/net/EthernetNetworkUpdateRequest$Builder;->mBuilderNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 120
    return-object p0
.end method
