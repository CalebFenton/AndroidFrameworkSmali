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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManager$LegacyRequest$1;
    }
.end annotation


# instance fields
.field currentNetwork:Landroid/net/Network;

.field delay:I

.field expireSequenceNumber:I

.field networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field networkCapabilities:Landroid/net/NetworkCapabilities;

.field networkRequest:Landroid/net/NetworkRequest;


# direct methods
.method static synthetic -wrap0(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/ConnectivityManager$LegacyRequest;->clearDnsBinding()V

    #@3
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1093
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    #@6
    .line 1102
    new-instance v0, Landroid/net/ConnectivityManager$LegacyRequest$1;

    #@8
    invoke-direct {v0, p0}, Landroid/net/ConnectivityManager$LegacyRequest$1;-><init>(Landroid/net/ConnectivityManager$LegacyRequest;)V

    #@b
    iput-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@d
    .line 1088
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/net/ConnectivityManager$LegacyRequest;-><init>()V

    #@3
    return-void
.end method

.method private clearDnsBinding()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1096
    iget-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1097
    iput-object v1, p0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    #@7
    .line 1098
    invoke-static {v1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetworkForHostResolution(Landroid/net/Network;)Z

    #@a
    .line 1095
    :cond_0
    return-void
.end method
