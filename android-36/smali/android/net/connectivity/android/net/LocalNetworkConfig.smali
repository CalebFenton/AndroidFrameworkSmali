.class public final Landroid/net/connectivity/android/net/LocalNetworkConfig;
.super Ljava/lang/Object;
.source "LocalNetworkConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/connectivity/android/net/LocalNetworkConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDownstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

.field private final blacklist mUpstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

.field private final blacklist mUpstreamSelector:Landroid/net/NetworkRequest;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 102
    new-instance v0, Landroid/net/connectivity/android/net/LocalNetworkConfig$1;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/LocalNetworkConfig$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/NetworkRequest;Landroid/net/connectivity/android/net/MulticastRoutingConfig;Landroid/net/connectivity/android/net/MulticastRoutingConfig;)V
    .registers 5
    .param p1, "upstreamSelector"    # Landroid/net/NetworkRequest;
    .param p2, "upstreamConfig"    # Landroid/net/connectivity/android/net/MulticastRoutingConfig;
    .param p3, "downstreamConfig"    # Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mUpstreamSelector:Landroid/net/NetworkRequest;

    .line 43
    if-eqz p2, :cond_a

    .line 44
    iput-object p2, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mUpstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    goto :goto_e

    .line 46
    :cond_a
    sget-object v0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->CONFIG_FORWARD_NONE:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    iput-object v0, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mUpstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    .line 48
    :goto_e
    if-eqz p3, :cond_13

    .line 49
    iput-object p3, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mDownstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    goto :goto_17

    .line 51
    :cond_13
    sget-object v0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->CONFIG_FORWARD_NONE:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    iput-object v0, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mDownstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    .line 53
    :goto_17
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/NetworkRequest;Landroid/net/connectivity/android/net/MulticastRoutingConfig;Landroid/net/connectivity/android/net/MulticastRoutingConfig;Landroid/net/connectivity/android/net/LocalNetworkConfig-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/android/net/LocalNetworkConfig;-><init>(Landroid/net/NetworkRequest;Landroid/net/connectivity/android/net/MulticastRoutingConfig;Landroid/net/connectivity/android/net/MulticastRoutingConfig;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDownstreamMulticastRoutingConfig()Landroid/net/connectivity/android/net/MulticastRoutingConfig;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mDownstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    return-object v0
.end method

.method public blacklist getUpstreamMulticastRoutingConfig()Landroid/net/connectivity/android/net/MulticastRoutingConfig;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mUpstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    return-object v0
.end method

.method public blacklist getUpstreamSelector()Landroid/net/NetworkRequest;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mUpstreamSelector:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalNetworkConfig{UpstreamSelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mUpstreamSelector:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", UpstreamMulticastConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mUpstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DownstreamMulticastConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mDownstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 88
    iget-object v0, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mUpstreamSelector:Landroid/net/NetworkRequest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    iget-object v0, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mUpstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget-object v0, p0, Landroid/net/connectivity/android/net/LocalNetworkConfig;->mDownstreamMulticastRoutingConfig:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    return-void
.end method
