.class final Landroid/net/wifi/passpoint/WifiPasspointOsuProvider$1;
.super Ljava/lang/Object;
.source "WifiPasspointOsuProvider.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
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
        "Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 133
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;-><init>()V

    #@5
    .line 134
    .local v0, "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->ssid:Ljava/lang/String;

    #@b
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->friendlyName:Ljava/lang/String;

    #@11
    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->serverUri:Ljava/lang/String;

    #@17
    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuMethod:I

    #@1d
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v1

    #@21
    iput v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconWidth:I

    #@23
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconHeight:I

    #@29
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconType:Ljava/lang/String;

    #@2f
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconFileName:Ljava/lang/String;

    #@35
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuNai:Ljava/lang/String;

    #@3b
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuService:Ljava/lang/String;

    #@41
    .line 144
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 149
    new-array v0, p1, [Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 148
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider$1;->newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
