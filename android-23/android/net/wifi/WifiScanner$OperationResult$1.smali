.class final Landroid/net/wifi/WifiScanner$OperationResult$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$OperationResult;
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
        "Landroid/net/wifi/WifiScanner$OperationResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$OperationResult;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 921
    .local v1, "reason":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 922
    .local v0, "description":Ljava/lang/String;
    new-instance v2, Landroid/net/wifi/WifiScanner$OperationResult;

    #@a
    invoke-direct {v2, v1, v0}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    #@d
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 919
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$OperationResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$OperationResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$OperationResult;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 926
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$OperationResult;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 925
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$OperationResult$1;->newArray(I)[Landroid/net/wifi/WifiScanner$OperationResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
