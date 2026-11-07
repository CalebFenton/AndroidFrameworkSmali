.class Lcom/android/internal/net/VpnConfig$1;
.super Ljava/lang/Object;
.source "VpnConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/VpnConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/net/VpnConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/VpnConfig;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 206
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 207
    .local v0, "config":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 211
    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    sget-object v2, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 212
    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    sget-object v2, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 217
    const-class v1, Landroid/app/PendingIntent;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5e

    move v1, v3

    goto :goto_5f

    :cond_5e
    move v1, v4

    :goto_5f
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_69

    move v1, v3

    goto :goto_6a

    :cond_69
    move v1, v4

    :goto_6a
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_74

    move v1, v3

    goto :goto_75

    :cond_74
    move v1, v4

    :goto_75
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7f

    move v1, v3

    goto :goto_80

    :cond_7f
    move v1, v4

    :goto_80
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8a

    move v1, v3

    goto :goto_8b

    :cond_8a
    move v1, v4

    :goto_8b
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_95

    move v1, v3

    goto :goto_96

    :cond_95
    move v1, v4

    :goto_96
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a0

    move v1, v3

    goto :goto_a1

    :cond_a0
    move v1, v4

    :goto_a1
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_aa

    goto :goto_ab

    :cond_aa
    move v3, v4

    :goto_ab
    iput-boolean v3, v0, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    .line 227
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Network;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 228
    const-class v1, Landroid/net/ProxyInfo;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProxyInfo;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 229
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/internal/net/VpnConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/VpnConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/net/VpnConfig;
    .registers 3
    .param p1, "size"    # I

    .line 234
    new-array v0, p1, [Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/internal/net/VpnConfig$1;->newArray(I)[Lcom/android/internal/net/VpnConfig;

    move-result-object p1

    return-object p1
.end method
