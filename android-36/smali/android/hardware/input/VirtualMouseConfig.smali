.class public final Landroid/hardware/input/VirtualMouseConfig;
.super Landroid/hardware/input/VirtualInputDeviceConfig;
.source "VirtualMouseConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualMouseConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualMouseConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/hardware/input/VirtualMouseConfig$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualMouseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/input/VirtualMouseConfig$Builder;)V
    .registers 2
    .param p1, "builder"    # Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 45
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)V

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/VirtualMouseConfig$Builder;Landroid/hardware/input/VirtualMouseConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualMouseConfig;-><init>(Landroid/hardware/input/VirtualMouseConfig$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/os/Parcel;)V

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualMouseConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualMouseConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 59
    invoke-super {p0, p1, p2}, Landroid/hardware/input/VirtualInputDeviceConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    return-void
.end method
