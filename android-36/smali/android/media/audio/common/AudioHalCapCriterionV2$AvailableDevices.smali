.class public Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
.super Ljava/lang/Object;
.source "AudioHalCapCriterionV2.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioHalCapCriterionV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvailableDevices"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist logic:B

.field public blacklist values:[Landroid/media/audio/common/AudioDeviceDescription;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 404
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->logic:B

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 451
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 452
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 455
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 454
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 457
    :cond_19
    return v1

    .line 459
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 460
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 462
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->values:[Landroid/media/audio/common/AudioDeviceDescription;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 448
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 430
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 432
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5e

    .line 433
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_5c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 441
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 433
    return-void

    .line 439
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    :cond_26
    :try_start_26
    sget-object v2, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioDeviceDescription;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->values:[Landroid/media/audio/common/AudioDeviceDescription;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_5c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 441
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 435
    return-void

    .line 439
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 436
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->logic:B
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_5c

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_56

    .line 441
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 442
    nop

    .line 443
    return-void

    .line 439
    :cond_56
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 438
    :catchall_5c
    move-exception v2

    goto :goto_66

    .line 432
    :cond_5e
    :try_start_5e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_5c

    .line 438
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_66
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6f

    .line 439
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 441
    :cond_6f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 442
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 419
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->values:[Landroid/media/audio/common/AudioDeviceDescription;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 421
    iget-byte v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->logic:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 423
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 424
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 426
    return-void
.end method
