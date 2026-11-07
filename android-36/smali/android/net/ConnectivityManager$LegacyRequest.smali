.class Landroid/net/ConnectivityManager$LegacyRequest;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyRequest"
.end annotation


# instance fields
.field greylist-max-o currentNetwork:Landroid/net/Network;

.field greylist-max-o delay:I

.field greylist-max-o expireSequenceNumber:I

.field greylist-max-o networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field greylist-max-o networkCapabilities:Landroid/net/NetworkCapabilities;

.field greylist-max-o networkRequest:Landroid/net/NetworkRequest;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearDnsBinding(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ConnectivityManager$LegacyRequest;->clearDnsBinding()V

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 2239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2244
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    .line 2253
    new-instance v0, Landroid/net/ConnectivityManager$LegacyRequest$1;

    invoke-direct {v0, p0}, Landroid/net/ConnectivityManager$LegacyRequest$1;-><init>(Landroid/net/ConnectivityManager$LegacyRequest;)V

    iput-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/ConnectivityManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/ConnectivityManager$LegacyRequest;-><init>()V

    return-void
.end method

.method private greylist-max-o clearDnsBinding()V
    .registers 2

    .line 2247
    iget-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    if-eqz v0, :cond_a

    .line 2248
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    .line 2249
    invoke-static {v0}, Landroid/net/ConnectivityManager;->setProcessDefaultNetworkForHostResolution(Landroid/net/Network;)Z

    .line 2251
    :cond_a
    return-void
.end method
