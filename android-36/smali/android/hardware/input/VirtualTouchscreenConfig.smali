.class public final Landroid/hardware/input/VirtualTouchscreenConfig;
.super Landroid/hardware/input/VirtualTouchDeviceConfig;
.source "VirtualTouchscreenConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualTouchscreenConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualTouchscreenConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/hardware/input/VirtualTouchscreenConfig$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualTouchscreenConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualTouchscreenConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/input/VirtualTouchscreenConfig$Builder;)V
    .registers 2
    .param p1, "builder"    # Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    .line 34
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualTouchDeviceConfig;-><init>(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)V

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/VirtualTouchscreenConfig$Builder;Landroid/hardware/input/VirtualTouchscreenConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualTouchscreenConfig;-><init>(Landroid/hardware/input/VirtualTouchscreenConfig$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualTouchDeviceConfig;-><init>(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualTouchscreenConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualTouchscreenConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist getHeight()I
    .registers 2

    .line 30
    invoke-super {p0}, Landroid/hardware/input/VirtualTouchDeviceConfig;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist getWidth()I
    .registers 2

    .line 30
    invoke-super {p0}, Landroid/hardware/input/VirtualTouchDeviceConfig;->getWidth()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 48
    invoke-super {p0, p1, p2}, Landroid/hardware/input/VirtualTouchDeviceConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 49
    return-void
.end method
