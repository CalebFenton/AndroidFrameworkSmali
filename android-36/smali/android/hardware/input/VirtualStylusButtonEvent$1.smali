.class Landroid/hardware/input/VirtualStylusButtonEvent$1;
.super Ljava/lang/Object;
.source "VirtualStylusButtonEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualStylusButtonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/input/VirtualStylusButtonEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/VirtualStylusButtonEvent;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 208
    new-instance v0, Landroid/hardware/input/VirtualStylusButtonEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/input/VirtualStylusButtonEvent;-><init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualStylusButtonEvent-IA;)V

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

    .line 206
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualStylusButtonEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/VirtualStylusButtonEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/input/VirtualStylusButtonEvent;
    .registers 3
    .param p1, "size"    # I

    .line 212
    new-array v0, p1, [Landroid/hardware/input/VirtualStylusButtonEvent;

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

    .line 206
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualStylusButtonEvent$1;->newArray(I)[Landroid/hardware/input/VirtualStylusButtonEvent;

    move-result-object p1

    return-object p1
.end method
