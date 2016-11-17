.class final Landroid/net/IpConfiguration$1;
.super Ljava/lang/Object;
.source "IpConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/IpConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/IpConfiguration;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 190
    new-instance v0, Landroid/net/IpConfiguration;

    #@3
    invoke-direct {v0}, Landroid/net/IpConfiguration;-><init>()V

    #@6
    .line 191
    .local v0, "config":Landroid/net/IpConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-static {v1}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    #@d
    move-result-object v1

    #@e
    iput-object v1, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@10
    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    #@17
    move-result-object v1

    #@18
    iput-object v1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@1a
    .line 193
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/net/StaticIpConfiguration;

    #@20
    iput-object v1, v0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@22
    .line 194
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/net/ProxyInfo;

    #@28
    iput-object v1, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@2a
    .line 195
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 189
    invoke-virtual {p0, p1}, Landroid/net/IpConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/IpConfiguration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/IpConfiguration;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 199
    new-array v0, p1, [Landroid/net/IpConfiguration;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 198
    invoke-virtual {p0, p1}, Landroid/net/IpConfiguration$1;->newArray(I)[Landroid/net/IpConfiguration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
