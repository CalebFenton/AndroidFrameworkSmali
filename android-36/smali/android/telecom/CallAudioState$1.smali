.class Landroid/telecom/CallAudioState$1;
.super Ljava/lang/Object;
.source "CallAudioState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallAudioState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/CallAudioState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/CallAudioState;
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    move v2, v0

    .line 267
    .local v2, "isMuted":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 268
    .local v3, "route":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 269
    .local v4, "supportedRouteMask":I
    nop

    .line 270
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/bluetooth/BluetoothDevice;

    .line 269
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 271
    .local v5, "activeBluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v6, "supportedBluetoothDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    nop

    .line 273
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/bluetooth/BluetoothDevice;

    .line 272
    invoke-virtual {p1, v6, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 274
    new-instance v1, Landroid/telecom/CallAudioState;

    invoke-direct/range {v1 .. v6}, Landroid/telecom/CallAudioState;-><init>(ZIILandroid/bluetooth/BluetoothDevice;Ljava/util/Collection;)V

    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 262
    invoke-virtual {p0, p1}, Landroid/telecom/CallAudioState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/CallAudioState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/CallAudioState;
    .registers 3
    .param p1, "size"    # I

    .line 280
    new-array v0, p1, [Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 262
    invoke-virtual {p0, p1}, Landroid/telecom/CallAudioState$1;->newArray(I)[Landroid/telecom/CallAudioState;

    move-result-object p1

    return-object p1
.end method
