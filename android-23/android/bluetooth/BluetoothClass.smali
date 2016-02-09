.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$Service;,
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_HID:I = 0x3

.field public static final PROFILE_NAP:I = 0x5

.field public static final PROFILE_OPP:I = 0x2

.field public static final PROFILE_PANU:I = 0x4


# instance fields
.field private final mClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 88
    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    #@5
    .line 87
    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "classInt"    # I

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    #@5
    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 84
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public doesClassMatch(I)Z
    .locals 4
    .param p1, "profile"    # I

    #@0
    .prologue
    const/high16 v2, 0x40000

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v0, 0x1

    #@4
    .line 297
    if-ne p1, v0, :cond_1

    #@6
    .line 298
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 299
    return v0

    #@d
    .line 304
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    #@10
    move-result v2

    #@11
    sparse-switch v2, :sswitch_data_0

    #@14
    .line 311
    return v1

    #@15
    .line 309
    :sswitch_0
    return v0

    #@16
    .line 313
    :cond_1
    if-nez p1, :cond_3

    #@18
    .line 316
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 317
    return v0

    #@1f
    .line 320
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    #@22
    move-result v2

    #@23
    sparse-switch v2, :sswitch_data_1

    #@26
    .line 326
    return v1

    #@27
    .line 324
    :sswitch_1
    return v0

    #@28
    .line 328
    :cond_3
    const/4 v2, 0x2

    #@29
    if-ne p1, v2, :cond_5

    #@2b
    .line 329
    const/high16 v2, 0x100000

    #@2d
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_4

    #@33
    .line 330
    return v0

    #@34
    .line 333
    :cond_4
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    #@37
    move-result v2

    #@38
    sparse-switch v2, :sswitch_data_2

    #@3b
    .line 349
    return v1

    #@3c
    .line 347
    :sswitch_2
    return v0

    #@3d
    .line 351
    :cond_5
    const/4 v2, 0x3

    #@3e
    if-ne p1, v2, :cond_7

    #@40
    .line 352
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    #@43
    move-result v2

    #@44
    and-int/lit16 v2, v2, 0x500

    #@46
    const/16 v3, 0x500

    #@48
    if-ne v2, v3, :cond_6

    #@4a
    :goto_0
    return v0

    #@4b
    :cond_6
    move v0, v1

    #@4c
    goto :goto_0

    #@4d
    .line 353
    :cond_7
    const/4 v2, 0x4

    #@4e
    if-eq p1, v2, :cond_8

    #@50
    const/4 v2, 0x5

    #@51
    if-ne p1, v2, :cond_b

    #@53
    .line 355
    :cond_8
    const/high16 v2, 0x20000

    #@55
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_9

    #@5b
    .line 356
    return v0

    #@5c
    .line 358
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    #@5f
    move-result v2

    #@60
    and-int/lit16 v2, v2, 0x300

    #@62
    const/16 v3, 0x300

    #@64
    if-ne v2, v3, :cond_a

    #@66
    :goto_1
    return v0

    #@67
    :cond_a
    move v0, v1

    #@68
    goto :goto_1

    #@69
    .line 360
    :cond_b
    return v1

    #@6a
    .line 304
    :sswitch_data_0
    .sparse-switch
        0x414 -> :sswitch_0
        0x418 -> :sswitch_0
        0x420 -> :sswitch_0
        0x428 -> :sswitch_0
    .end sparse-switch

    #@7c
    .line 320
    :sswitch_data_1
    .sparse-switch
        0x404 -> :sswitch_1
        0x408 -> :sswitch_1
        0x420 -> :sswitch_1
    .end sparse-switch

    #@8a
    .line 333
    :sswitch_data_2
    .sparse-switch
        0x100 -> :sswitch_2
        0x104 -> :sswitch_2
        0x108 -> :sswitch_2
        0x10c -> :sswitch_2
        0x110 -> :sswitch_2
        0x114 -> :sswitch_2
        0x118 -> :sswitch_2
        0x200 -> :sswitch_2
        0x204 -> :sswitch_2
        0x208 -> :sswitch_2
        0x20c -> :sswitch_2
        0x210 -> :sswitch_2
        0x214 -> :sswitch_2
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 67
    instance-of v1, p1, Landroid/bluetooth/BluetoothClass;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 68
    iget v1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    #@7
    check-cast p1, Landroid/bluetooth/BluetoothClass;

    #@9
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    #@b
    if-ne v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0

    #@f
    .line 70
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public getDeviceClass()I
    .locals 1

    #@0
    .prologue
    .line 271
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    #@2
    and-int/lit16 v0, v0, 0x1ffc

    #@4
    return v0
.end method

.method public getMajorDeviceClass()I
    .locals 1

    #@0
    .prologue
    .line 258
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    #@2
    and-int/lit16 v0, v0, 0x1f00

    #@4
    return v0
.end method

.method public hasService(I)Z
    .locals 3
    .param p1, "service"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 130
    iget v1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    #@3
    const v2, 0xffe000

    #@6
    and-int/2addr v1, v2

    #@7
    and-int/2addr v1, p1

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 98
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 97
    return-void
.end method
