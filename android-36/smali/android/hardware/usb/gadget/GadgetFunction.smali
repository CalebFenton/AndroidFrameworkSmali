.class public Landroid/hardware/usb/gadget/GadgetFunction;
.super Ljava/lang/Object;
.source "GadgetFunction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist ACCESSORY:J = 0x2L

.field public static final blacklist ADB:J = 0x1L

.field public static final blacklist AUDIO_SOURCE:J = 0x40L

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/gadget/GadgetFunction;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MIDI:J = 0x8L

.field public static final blacklist MTP:J = 0x4L

.field public static final blacklist NCM:J = 0x400L

.field public static final blacklist NONE:J = 0x0L

.field public static final blacklist PTP:J = 0x10L

.field public static final blacklist RNDIS:J = 0x20L

.field public static final blacklist UVC:J = 0x80L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Landroid/hardware/usb/gadget/GadgetFunction$1;

    invoke-direct {v0}, Landroid/hardware/usb/gadget/GadgetFunction$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/gadget/GadgetFunction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 38
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 40
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_20

    .line 42
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a

    .line 45
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    nop

    .line 47
    return-void

    .line 43
    :cond_1a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/usb/gadget/GadgetFunction;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 42
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/usb/gadget/GadgetFunction;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :catchall_28
    move-exception v2

    sub-int/2addr v4, v1

    if-le v0, v4, :cond_32

    .line 43
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_32
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 29
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 31
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    return-void
.end method
