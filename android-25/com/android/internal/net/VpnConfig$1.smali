.class final Lcom/android/internal/net/VpnConfig$1;
.super Ljava/lang/Object;
.source "VpnConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/VpnConfig;
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
        "Lcom/android/internal/net/VpnConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/VpnConfig;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 171
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    #@4
    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    #@7
    .line 172
    .local v0, "config":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@d
    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@13
    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    #@19
    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v1

    #@1d
    iput v1, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    #@1f
    .line 176
    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    #@21
    sget-object v4, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    #@26
    .line 177
    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@28
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    #@2d
    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@30
    move-result-object v1

    #@31
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@33
    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@36
    move-result-object v1

    #@37
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@39
    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@3c
    move-result-object v1

    #@3d
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    #@3f
    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@42
    move-result-object v1

    #@43
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    #@45
    .line 182
    const/4 v1, 0x0

    #@46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@49
    move-result-object v1

    #@4a
    check-cast v1, Landroid/app/PendingIntent;

    #@4c
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    #@4e
    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@51
    move-result-wide v4

    #@52
    iput-wide v4, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    #@54
    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_0

    #@5a
    move v1, v2

    #@5b
    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    #@5d
    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_1

    #@63
    move v1, v2

    #@64
    :goto_1
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    #@66
    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v1

    #@6a
    if-eqz v1, :cond_2

    #@6c
    move v1, v2

    #@6d
    :goto_2
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    #@6f
    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v1

    #@73
    if-eqz v1, :cond_3

    #@75
    move v1, v2

    #@76
    :goto_3
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    #@78
    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v1

    #@7c
    if-eqz v1, :cond_4

    #@7e
    :goto_4
    iput-boolean v2, v0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    #@80
    .line 189
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@82
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@85
    move-result-object v1

    #@86
    check-cast v1, [Landroid/net/Network;

    #@88
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    #@8a
    .line 190
    return-object v0

    #@8b
    :cond_0
    move v1, v3

    #@8c
    .line 184
    goto :goto_0

    #@8d
    :cond_1
    move v1, v3

    #@8e
    .line 185
    goto :goto_1

    #@8f
    :cond_2
    move v1, v3

    #@90
    .line 186
    goto :goto_2

    #@91
    :cond_3
    move v1, v3

    #@92
    .line 187
    goto :goto_3

    #@93
    :cond_4
    move v2, v3

    #@94
    .line 188
    goto :goto_4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/android/internal/net/VpnConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/VpnConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/net/VpnConfig;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 195
    new-array v0, p1, [Lcom/android/internal/net/VpnConfig;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/android/internal/net/VpnConfig$1;->newArray(I)[Lcom/android/internal/net/VpnConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
