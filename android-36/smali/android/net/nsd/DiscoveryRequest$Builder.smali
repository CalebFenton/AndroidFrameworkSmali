.class public final Landroid/net/nsd/DiscoveryRequest$Builder;
.super Ljava/lang/Object;
.source "DiscoveryRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/DiscoveryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mNetwork:Landroid/net/Network;

.field private final blacklist mProtocolType:I

.field private blacklist mServiceType:Ljava/lang/String;

.field private blacklist mSubtype:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "protocolType"    # I
    .param p2, "serviceType"    # Ljava/lang/String;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkProtocol(I)V

    .line 185
    iput p1, p0, Landroid/net/nsd/DiscoveryRequest$Builder;->mProtocolType:I

    .line 186
    invoke-virtual {p0, p2}, Landroid/net/nsd/DiscoveryRequest$Builder;->setServiceType(Ljava/lang/String;)Landroid/net/nsd/DiscoveryRequest$Builder;

    .line 187
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/net/nsd/DiscoveryRequest$Builder;-><init>(ILjava/lang/String;)V

    .line 180
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/nsd/DiscoveryRequest;
    .registers 7

    .line 246
    new-instance v0, Landroid/net/nsd/DiscoveryRequest;

    iget v1, p0, Landroid/net/nsd/DiscoveryRequest$Builder;->mProtocolType:I

    iget-object v2, p0, Landroid/net/nsd/DiscoveryRequest$Builder;->mServiceType:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/nsd/DiscoveryRequest$Builder;->mSubtype:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/nsd/DiscoveryRequest$Builder;->mNetwork:Landroid/net/Network;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/nsd/DiscoveryRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/net/nsd/DiscoveryRequest-IA;)V

    return-object v0
.end method

.method public whitelist setNetwork(Landroid/net/Network;)Landroid/net/nsd/DiscoveryRequest$Builder;
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .line 237
    iput-object p1, p0, Landroid/net/nsd/DiscoveryRequest$Builder;->mNetwork:Landroid/net/Network;

    .line 238
    return-object p0
.end method

.method public blacklist setServiceType(Ljava/lang/String;)Landroid/net/nsd/DiscoveryRequest$Builder;
    .registers 4
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 207
    iput-object p1, p0, Landroid/net/nsd/DiscoveryRequest$Builder;->mServiceType:Ljava/lang/String;

    .line 208
    return-object p0

    .line 205
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Service type cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSubtype(Ljava/lang/String;)Landroid/net/nsd/DiscoveryRequest$Builder;
    .registers 2
    .param p1, "subtype"    # Ljava/lang/String;

    .line 225
    iput-object p1, p0, Landroid/net/nsd/DiscoveryRequest$Builder;->mSubtype:Ljava/lang/String;

    .line 226
    return-object p0
.end method
