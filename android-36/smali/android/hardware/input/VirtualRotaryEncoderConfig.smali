.class public final Landroid/hardware/input/VirtualRotaryEncoderConfig;
.super Landroid/hardware/input/VirtualInputDeviceConfig;
.source "VirtualRotaryEncoderConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualRotaryEncoderConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualRotaryEncoderConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/hardware/input/VirtualRotaryEncoderConfig$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualRotaryEncoderConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualRotaryEncoderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/input/VirtualRotaryEncoderConfig$Builder;)V
    .registers 2
    .param p1, "builder"    # Landroid/hardware/input/VirtualRotaryEncoderConfig$Builder;

    .line 51
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)V

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/VirtualRotaryEncoderConfig$Builder;Landroid/hardware/input/VirtualRotaryEncoderConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;-><init>(Landroid/hardware/input/VirtualRotaryEncoderConfig$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/os/Parcel;)V

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualRotaryEncoderConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    invoke-super {p0, p1, p2}, Landroid/hardware/input/VirtualInputDeviceConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    return-void
.end method
