.class Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidRDefaultNetworkCallback"
.end annotation


# instance fields
.field blacklist mLinkProperties:Landroid/net/LinkProperties;

.field blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 627
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V

    return-void
.end method

.method private blacklist getNetworkState(Landroid/net/Network;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    .registers 14
    .param p1, "network"    # Landroid/net/Network;

    .line 677
    const/4 v0, -0x1

    .line 678
    .local v0, "type":I
    const/4 v1, -0x1

    .line 679
    .local v1, "subtype":I
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_71

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 680
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_71

    .line 683
    :cond_16
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 684
    const/4 v0, 0x0

    .line 691
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmConnectivityManagerDelegate(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getRawNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 692
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_30

    .line 693
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 695
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_30
    move v6, v0

    move v7, v1

    goto :goto_74

    :cond_33
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 696
    const/16 v0, 0x9

    move v6, v0

    move v7, v1

    goto :goto_74

    .line 697
    :cond_41
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 698
    const/4 v0, 0x7

    move v6, v0

    move v7, v1

    goto :goto_74

    .line 699
    :cond_4e
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 702
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmConnectivityManagerDelegate(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 703
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_68

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    goto :goto_6a

    :cond_68
    const/16 v4, 0x11

    :goto_6a
    move v0, v4

    move v6, v0

    move v7, v1

    goto :goto_74

    .line 699
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_6e
    move v6, v0

    move v7, v1

    goto :goto_74

    .line 682
    :cond_71
    :goto_71
    const/4 v0, 0x1

    move v6, v0

    move v7, v1

    .line 705
    .end local v0    # "type":I
    .end local v1    # "subtype":I
    .local v6, "type":I
    .local v7, "subtype":I
    :goto_74
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 706
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    .line 708
    .local v8, "isMetered":Z
    new-instance v4, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .line 713
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    .line 714
    invoke-virtual {v0}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    move-result v10

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    .line 715
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x1

    invoke-direct/range {v4 .. v11}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;-><init>(ZIIZLjava/lang/String;ZLjava/lang/String;)V

    .line 708
    return-object v4
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    .line 640
    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 641
    return-void
.end method

.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 665
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 666
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmRegistered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_1b

    .line 667
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->getNetworkState(Landroid/net/Network;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$mconnectionTypeChangedTo(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 669
    :cond_1b
    return-void
.end method

.method public whitelist onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 655
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    .line 656
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmRegistered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_1b

    .line 657
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->getNetworkState(Landroid/net/Network;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$mconnectionTypeChangedTo(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 659
    :cond_1b
    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 11
    .param p1, "network"    # Landroid/net/Network;

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    .line 646
    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 647
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmRegistered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 648
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance v1, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;-><init>(ZIIZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$mconnectionTypeChangedTo(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 650
    :cond_1f
    return-void
.end method
