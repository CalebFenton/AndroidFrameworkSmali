.class Landroid/hardware/input/VirtualTouchscreenConfig$1;
.super Ljava/lang/Object;
.source "VirtualTouchscreenConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualTouchscreenConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/input/VirtualTouchscreenConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/VirtualTouchscreenConfig;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    new-instance v0, Landroid/hardware/input/VirtualTouchscreenConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/input/VirtualTouchscreenConfig;-><init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualTouchscreenConfig-IA;)V

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

    .line 53
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualTouchscreenConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/VirtualTouchscreenConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/input/VirtualTouchscreenConfig;
    .registers 3
    .param p1, "size"    # I

    .line 61
    new-array v0, p1, [Landroid/hardware/input/VirtualTouchscreenConfig;

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

    .line 53
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualTouchscreenConfig$1;->newArray(I)[Landroid/hardware/input/VirtualTouchscreenConfig;

    move-result-object p1

    return-object p1
.end method
