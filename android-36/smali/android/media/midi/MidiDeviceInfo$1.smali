.class Landroid/media/midi/MidiDeviceInfo$1;
.super Ljava/lang/Object;
.source "MidiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/midi/MidiDeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/midi/MidiDeviceInfo;
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 469
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .local v2, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 471
    .local v3, "inputPortCount":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 472
    .local v4, "outputPortCount":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, "inputPortNames":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, "outputPortNames":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_20

    goto :goto_21

    :cond_20
    const/4 v7, 0x0

    :goto_21
    move v8, v7

    .line 475
    .local v8, "isPrivate":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 476
    .local v9, "defaultProtocol":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 477
    .local v10, "basicPropertiesIgnored":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 478
    .local v7, "properties":Landroid/os/Bundle;
    new-instance v0, Landroid/media/midi/MidiDeviceInfo;

    invoke-direct/range {v0 .. v9}, Landroid/media/midi/MidiDeviceInfo;-><init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ZI)V

    return-object v0
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

    .line 465
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/midi/MidiDeviceInfo;
    .registers 3
    .param p1, "size"    # I

    .line 484
    new-array v0, p1, [Landroid/media/midi/MidiDeviceInfo;

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

    .line 465
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiDeviceInfo$1;->newArray(I)[Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    return-object p1
.end method
