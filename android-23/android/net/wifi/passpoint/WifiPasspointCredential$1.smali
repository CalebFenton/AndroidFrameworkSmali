.class final Landroid/net/wifi/passpoint/WifiPasspointCredential$1;
.super Ljava/lang/Object;
.source "WifiPasspointCredential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointCredential;
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
        "Landroid/net/wifi/passpoint/WifiPasspointCredential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 615
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointCredential;-><init>()V

    #@5
    .line 616
    .local v0, "pc":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-static {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->-set5(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;

    #@c
    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->-set0(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;

    #@13
    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->-set4(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    invoke-static {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->-set1(Landroid/net/wifi/passpoint/WifiPasspointCredential;I)I

    #@21
    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->-set2(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;

    #@28
    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->-set3(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    .line 622
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointCredential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 626
    new-array v0, p1, [Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 625
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointCredential$1;->newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
