.class final Landroid/hardware/input/InputDeviceIdentifier$1;
.super Ljava/lang/Object;
.source "InputDeviceIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputDeviceIdentifier;
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
        "Landroid/hardware/input/InputDeviceIdentifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/InputDeviceIdentifier;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 73
    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Landroid/os/Parcel;Landroid/hardware/input/InputDeviceIdentifier;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputDeviceIdentifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/InputDeviceIdentifier;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/input/InputDeviceIdentifier;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 78
    new-array v0, p1, [Landroid/hardware/input/InputDeviceIdentifier;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputDeviceIdentifier$1;->newArray(I)[Landroid/hardware/input/InputDeviceIdentifier;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
