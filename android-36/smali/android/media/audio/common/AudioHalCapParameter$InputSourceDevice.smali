.class public Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;
.super Ljava/lang/Object;
.source "AudioHalCapParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioHalCapParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputSourceDevice"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist device:Landroid/media/audio/common/AudioDeviceDescription;

.field public blacklist inputSource:I

.field public blacklist isSelected:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 281
    new-instance v0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->inputSource:I

    .line 278
    iput-boolean v0, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->isSelected:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 331
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 332
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 333
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 335
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->device:Landroid/media/audio/common/AudioDeviceDescription;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 328
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 308
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 310
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7a

    .line 311
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 318
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 321
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 311
    return-void

    .line 319
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_26
    :try_start_26
    sget-object v2, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioDeviceDescription;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->device:Landroid/media/audio/common/AudioDeviceDescription;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 318
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 321
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 313
    return-void

    .line 319
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->inputSource:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 318
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 321
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 315
    return-void

    .line 319
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->isSelected:Z
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_78

    .line 318
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_72

    .line 321
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 322
    nop

    .line 323
    return-void

    .line 319
    :cond_72
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :catchall_78
    move-exception v2

    goto :goto_82

    .line 310
    :cond_7a
    :try_start_7a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_78

    .line 318
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_82
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8b

    .line 319
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_8b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 322
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 296
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->device:Landroid/media/audio/common/AudioDeviceDescription;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 298
    iget v1, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->inputSource:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-boolean v1, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->isSelected:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 301
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 302
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 304
    return-void
.end method
