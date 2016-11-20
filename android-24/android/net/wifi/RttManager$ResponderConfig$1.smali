.class final Landroid/net/wifi/RttManager$ResponderConfig$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ResponderConfig;
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
        "Landroid/net/wifi/RttManager$ResponderConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1077
    new-instance v0, Landroid/net/wifi/RttManager$ResponderConfig;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/RttManager$ResponderConfig;-><init>()V

    #@5
    .line 1078
    .local v0, "config":Landroid/net/wifi/RttManager$ResponderConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    #@b
    .line 1079
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    #@11
    .line 1080
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    #@17
    .line 1081
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    #@1d
    .line 1082
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v1

    #@21
    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    #@23
    .line 1083
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    #@29
    .line 1084
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1076
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ResponderConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ResponderConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1089
    new-array v0, p1, [Landroid/net/wifi/RttManager$ResponderConfig;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1088
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ResponderConfig$1;->newArray(I)[Landroid/net/wifi/RttManager$ResponderConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
