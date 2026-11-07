.class public Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
.super Ljava/lang/Object;
.source "IAGnssRil.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnssRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AGnssRefLocation"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist cellID:Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;

.field public blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 425
    new-instance v0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 472
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 473
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 474
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 476
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->cellID:Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 469
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 451
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 453
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5e

    .line 454
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_5c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 459
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 462
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 454
    return-void

    .line 460
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 455
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->type:I

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_5c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 459
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 462
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 456
    return-void

    .line 460
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 457
    :cond_42
    :try_start_42
    sget-object v2, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;

    iput-object v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->cellID:Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_5c

    .line 459
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_56

    .line 462
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 463
    nop

    .line 464
    return-void

    .line 460
    :cond_56
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 459
    :catchall_5c
    move-exception v2

    goto :goto_66

    .line 453
    :cond_5e
    :try_start_5e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_5c

    .line 459
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_66
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6f

    .line 460
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    :cond_6f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 463
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 440
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget-object v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->cellID:Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 444
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 445
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 447
    return-void
.end method
