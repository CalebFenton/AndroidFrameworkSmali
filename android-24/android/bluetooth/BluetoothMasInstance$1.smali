.class final Landroid/bluetooth/BluetoothMasInstance$1;
.super Ljava/lang/Object;
.source "BluetoothMasInstance.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMasInstance;
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
        "Landroid/bluetooth/BluetoothMasInstance;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothMasInstance;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 62
    new-instance v0, Landroid/bluetooth/BluetoothMasInstance;

    #@2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v3

    #@e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v4

    #@12
    .line 62
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothMasInstance;-><init>(ILjava/lang/String;II)V

    #@15
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMasInstance$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothMasInstance;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothMasInstance;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 66
    new-array v0, p1, [Landroid/bluetooth/BluetoothMasInstance;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 65
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMasInstance$1;->newArray(I)[Landroid/bluetooth/BluetoothMasInstance;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
