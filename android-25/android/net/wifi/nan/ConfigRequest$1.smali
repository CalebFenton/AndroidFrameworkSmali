.class final Landroid/net/wifi/nan/ConfigRequest$1;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/ConfigRequest;
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
        "Landroid/net/wifi/nan/ConfigRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nan/ConfigRequest;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    .line 113
    .local v1, "support5gBand":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v2

    #@b
    .line 114
    .local v2, "masterPreference":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v3

    #@f
    .line 115
    .local v3, "clusterLow":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v4

    #@13
    .line 116
    .local v4, "clusterHigh":I
    new-instance v0, Landroid/net/wifi/nan/ConfigRequest;

    #@15
    const/4 v5, 0x0

    #@16
    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/nan/ConfigRequest;-><init>(ZIIILandroid/net/wifi/nan/ConfigRequest;)V

    #@19
    return-object v0

    #@1a
    .line 112
    .end local v1    # "support5gBand":Z
    .end local v2    # "masterPreference":I
    .end local v3    # "clusterLow":I
    .end local v4    # "clusterHigh":I
    :cond_0
    const/4 v1, 0x0

    #@1b
    .restart local v1    # "support5gBand":Z
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/net/wifi/nan/ConfigRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nan/ConfigRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/nan/ConfigRequest;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 107
    new-array v0, p1, [Landroid/net/wifi/nan/ConfigRequest;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/net/wifi/nan/ConfigRequest$1;->newArray(I)[Landroid/net/wifi/nan/ConfigRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
