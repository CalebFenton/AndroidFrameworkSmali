.class public Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;
.super Ljava/lang/Object;
.source "IGnssAntennaInfoCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssAntennaInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist row:[D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 224
    new-instance v0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 249
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 251
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_3e

    .line 252
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_3c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 255
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 258
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 252
    return-void

    .line 256
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->row:[D
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_3c

    .line 255
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    .line 258
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 259
    nop

    .line 260
    return-void

    .line 256
    :cond_36
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    :catchall_3c
    move-exception v2

    goto :goto_46

    .line 251
    :cond_3e
    :try_start_3e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_3c

    .line 255
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_46
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_4f

    .line 256
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_4f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 259
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 239
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->row:[D

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 242
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 243
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 245
    return-void
.end method
