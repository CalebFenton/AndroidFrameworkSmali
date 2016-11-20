.class final Landroid/net/wifi/WifiConnectionStatistics$1;
.super Ljava/lang/Object;
.source "WifiConnectionStatistics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConnectionStatistics;
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
        "Landroid/net/wifi/WifiConnectionStatistics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConnectionStatistics;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 135
    new-instance v6, Landroid/net/wifi/WifiConnectionStatistics;

    #@2
    invoke-direct {v6}, Landroid/net/wifi/WifiConnectionStatistics;-><init>()V

    #@5
    .line 136
    .local v6, "stats":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v7

    #@9
    iput v7, v6, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    #@b
    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v7

    #@f
    iput v7, v6, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    #@11
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v7

    #@15
    iput v7, v6, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    #@17
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v7

    #@1b
    iput v7, v6, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    #@1d
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v7

    #@21
    iput v7, v6, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@23
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    .local v1, "n":I
    move v2, v1

    #@28
    .line 142
    .end local v1    # "n":I
    .local v2, "n":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    #@2a
    .end local v2    # "n":I
    .restart local v1    # "n":I
    if-lez v2, :cond_0

    #@2c
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 144
    .local v0, "Key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v3

    #@34
    .line 145
    .local v3, "numConnection":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v4

    #@38
    .line 147
    .local v4, "numUsage":I
    new-instance v5, Landroid/net/wifi/WifiNetworkConnectionStatistics;

    #@3a
    invoke-direct {v5, v3, v4}, Landroid/net/wifi/WifiNetworkConnectionStatistics;-><init>(II)V

    #@3d
    .line 148
    .local v5, "st":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    iget-object v7, v6, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    #@3f
    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move v2, v1

    #@43
    .end local v1    # "n":I
    .restart local v2    # "n":I
    goto :goto_0

    #@44
    .line 150
    .end local v0    # "Key":Ljava/lang/String;
    .end local v2    # "n":I
    .end local v3    # "numConnection":I
    .end local v4    # "numUsage":I
    .end local v5    # "st":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    .restart local v1    # "n":I
    :cond_0
    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 134
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConnectionStatistics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConnectionStatistics;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiConnectionStatistics;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 154
    new-array v0, p1, [Landroid/net/wifi/WifiConnectionStatistics;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 153
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConnectionStatistics$1;->newArray(I)[Landroid/net/wifi/WifiConnectionStatistics;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
