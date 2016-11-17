.class final Landroid/net/wifi/WifiChannel$1;
.super Ljava/lang/Object;
.source "WifiChannel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiChannel;
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
        "Landroid/net/wifi/WifiChannel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiChannel;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 75
    new-instance v0, Landroid/net/wifi/WifiChannel;

    #@3
    invoke-direct {v0}, Landroid/net/wifi/WifiChannel;-><init>()V

    #@6
    .line 76
    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v2

    #@a
    iput v2, v0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    #@c
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v2

    #@10
    iput v2, v0, Landroid/net/wifi/WifiChannel;->channelNum:I

    #@12
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    const/4 v1, 0x1

    #@19
    :cond_0
    iput-boolean v1, v0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    #@1b
    .line 79
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 74
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiChannel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiChannel;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 84
    new-array v0, p1, [Landroid/net/wifi/WifiChannel;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 83
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiChannel$1;->newArray(I)[Landroid/net/wifi/WifiChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
