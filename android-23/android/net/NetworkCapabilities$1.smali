.class final Landroid/net/NetworkCapabilities$1;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkCapabilities;
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
        "Landroid/net/NetworkCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 613
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@2
    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    #@5
    .line 615
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@8
    move-result-wide v2

    #@9
    invoke-static {v0, v2, v3}, Landroid/net/NetworkCapabilities;->-set2(Landroid/net/NetworkCapabilities;J)J

    #@c
    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@f
    move-result-wide v2

    #@10
    invoke-static {v0, v2, v3}, Landroid/net/NetworkCapabilities;->-set4(Landroid/net/NetworkCapabilities;J)J

    #@13
    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v1

    #@17
    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->-set1(Landroid/net/NetworkCapabilities;I)I

    #@1a
    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->-set0(Landroid/net/NetworkCapabilities;I)I

    #@21
    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->-set3(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Ljava/lang/String;

    #@28
    .line 620
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 612
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkCapabilities;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkCapabilities;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 624
    new-array v0, p1, [Landroid/net/NetworkCapabilities;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 623
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$1;->newArray(I)[Landroid/net/NetworkCapabilities;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
