.class public final Landroid/net/EthernetNetworkUpdateRequest;
.super Ljava/lang/Object;
.source "EthernetNetworkUpdateRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/EthernetNetworkUpdateRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/EthernetNetworkUpdateRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIpConfig:Landroid/net/IpConfiguration;

.field private final blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIpConfig(Landroid/net/EthernetNetworkUpdateRequest;)Landroid/net/IpConfiguration;
    .registers 1

    iget-object p0, p0, Landroid/net/EthernetNetworkUpdateRequest;->mIpConfig:Landroid/net/IpConfiguration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkCapabilities(Landroid/net/EthernetNetworkUpdateRequest;)Landroid/net/NetworkCapabilities;
    .registers 1

    iget-object p0, p0, Landroid/net/EthernetNetworkUpdateRequest;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 173
    new-instance v0, Landroid/net/EthernetNetworkUpdateRequest$1;

    invoke-direct {v0}, Landroid/net/EthernetNetworkUpdateRequest$1;-><init>()V

    sput-object v0, Landroid/net/EthernetNetworkUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/IpConfiguration;Landroid/net/NetworkCapabilities;)V
    .registers 3
    .param p1, "ipConfig"    # Landroid/net/IpConfiguration;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/net/EthernetNetworkUpdateRequest;->mIpConfig:Landroid/net/IpConfiguration;

    .line 66
    iput-object p2, p0, Landroid/net/EthernetNetworkUpdateRequest;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/IpConfiguration;Landroid/net/NetworkCapabilities;Landroid/net/EthernetNetworkUpdateRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/EthernetNetworkUpdateRequest;-><init>(Landroid/net/IpConfiguration;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-class v0, Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/IpConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpConfiguration;

    iput-object v0, p0, Landroid/net/EthernetNetworkUpdateRequest;->mIpConfig:Landroid/net/IpConfiguration;

    .line 73
    const-class v0, Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkCapabilities;

    iput-object v0, p0, Landroid/net/EthernetNetworkUpdateRequest;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/EthernetNetworkUpdateRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/EthernetNetworkUpdateRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 148
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 149
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 150
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/EthernetNetworkUpdateRequest;

    .line 152
    .local v2, "that":Landroid/net/EthernetNetworkUpdateRequest;
    invoke-virtual {v2}, Landroid/net/EthernetNetworkUpdateRequest;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v3

    iget-object v4, p0, Landroid/net/EthernetNetworkUpdateRequest;->mIpConfig:Landroid/net/IpConfiguration;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 153
    invoke-virtual {v2}, Landroid/net/EthernetNetworkUpdateRequest;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    iget-object v4, p0, Landroid/net/EthernetNetworkUpdateRequest;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    .line 152
    :goto_2f
    return v0

    .line 149
    .end local v2    # "that":Landroid/net/EthernetNetworkUpdateRequest;
    :cond_30
    :goto_30
    return v1
.end method

.method public whitelist getIpConfiguration()Landroid/net/IpConfiguration;
    .registers 3

    .line 49
    iget-object v0, p0, Landroid/net/EthernetNetworkUpdateRequest;->mIpConfig:Landroid/net/IpConfiguration;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Landroid/net/IpConfiguration;

    iget-object v1, p0, Landroid/net/EthernetNetworkUpdateRequest;->mIpConfig:Landroid/net/IpConfiguration;

    invoke-direct {v0, v1}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    :goto_d
    return-object v0
.end method

.method public whitelist getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 3

    .line 60
    iget-object v0, p0, Landroid/net/EthernetNetworkUpdateRequest;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/EthernetNetworkUpdateRequest;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    :goto_d
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 158
    iget-object v0, p0, Landroid/net/EthernetNetworkUpdateRequest;->mIpConfig:Landroid/net/IpConfiguration;

    iget-object v1, p0, Landroid/net/EthernetNetworkUpdateRequest;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EthernetNetworkUpdateRequest{mIpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/EthernetNetworkUpdateRequest;->mIpConfig:Landroid/net/IpConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNetworkCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/EthernetNetworkUpdateRequest;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

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

    .line 163
    iget-object v0, p0, Landroid/net/EthernetNetworkUpdateRequest;->mIpConfig:Landroid/net/IpConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 164
    iget-object v0, p0, Landroid/net/EthernetNetworkUpdateRequest;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    return-void
.end method
