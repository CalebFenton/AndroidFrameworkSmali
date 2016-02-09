.class public Landroid/net/NetworkRequest$Builder;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@5
    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@a
    .line 80
    return-void
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@5
    .line 109
    return-object p0
.end method

.method public addTransportType(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "transportType"    # I

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@5
    .line 147
    return-object p0
.end method

.method public build()Landroid/net/NetworkRequest;
    .locals 4

    #@0
    .prologue
    .line 90
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@2
    iget-object v1, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@4
    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@7
    .line 91
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    #@a
    .line 92
    new-instance v1, Landroid/net/NetworkRequest;

    #@c
    const/4 v2, -0x1

    #@d
    .line 93
    const/4 v3, 0x0

    #@e
    .line 92
    invoke-direct {v1, v0, v2, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    #@11
    return-object v1
.end method

.method public clearCapabilities()Landroid/net/NetworkRequest$Builder;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->clearAll()V

    #@5
    .line 132
    return-object p0
.end method

.method public removeCapability(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@5
    .line 120
    return-object p0
.end method

.method public removeTransportType(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "transportType"    # I

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeTransportType(I)Landroid/net/NetworkCapabilities;

    #@5
    .line 158
    return-object p0
.end method

.method public setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "downKbps"    # I

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    #@5
    .line 173
    return-object p0
.end method

.method public setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "upKbps"    # I

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    #@5
    .line 166
    return-object p0
.end method

.method public setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "networkSpecifier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    #@5
    .line 192
    return-object p0
.end method
