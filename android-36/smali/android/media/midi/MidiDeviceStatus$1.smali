.class Landroid/media/midi/MidiDeviceStatus$1;
.super Ljava/lang/Object;
.source "MidiDeviceStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/midi/MidiDeviceStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/midi/MidiDeviceStatus;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 117
    const-class v0, Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 118
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-class v1, Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/midi/MidiDeviceInfo;

    .line 119
    .local v1, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    .line 120
    .local v2, "inputPortOpen":[Z
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 121
    .local v3, "outputPortOpenCount":[I
    new-instance v4, Landroid/media/midi/MidiDeviceStatus;

    invoke-direct {v4, v1, v2, v3}, Landroid/media/midi/MidiDeviceStatus;-><init>(Landroid/media/midi/MidiDeviceInfo;[Z[I)V

    return-object v4
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

    .line 115
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiDeviceStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/midi/MidiDeviceStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/midi/MidiDeviceStatus;
    .registers 3
    .param p1, "size"    # I

    .line 125
    new-array v0, p1, [Landroid/media/midi/MidiDeviceStatus;

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

    .line 115
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiDeviceStatus$1;->newArray(I)[Landroid/media/midi/MidiDeviceStatus;

    move-result-object p1

    return-object p1
.end method
