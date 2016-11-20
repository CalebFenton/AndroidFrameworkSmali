.class final Landroid/net/wifi/WifiSsid$1;
.super Ljava/lang/Object;
.source "WifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiSsid;
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
        "Landroid/net/wifi/WifiSsid;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiSsid;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 226
    new-instance v2, Landroid/net/wifi/WifiSsid;

    #@2
    const/4 v3, 0x0

    #@3
    invoke-direct {v2, v3}, Landroid/net/wifi/WifiSsid;-><init>(Landroid/net/wifi/WifiSsid;)V

    #@6
    .line 227
    .local v2, "ssid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v1

    #@a
    .line 228
    .local v1, "length":I
    new-array v0, v1, [B

    #@c
    .line 229
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    #@f
    .line 230
    iget-object v3, v2, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@11
    const/4 v4, 0x0

    #@12
    invoke-virtual {v3, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@15
    .line 231
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 225
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiSsid$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiSsid;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiSsid;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 235
    new-array v0, p1, [Landroid/net/wifi/WifiSsid;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 234
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiSsid$1;->newArray(I)[Landroid/net/wifi/WifiSsid;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
