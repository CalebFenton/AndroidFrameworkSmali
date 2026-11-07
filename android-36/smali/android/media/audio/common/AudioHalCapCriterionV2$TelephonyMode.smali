.class public Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;
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
    name = "TelephonyMode"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist defaultValue:I

.field public blacklist logic:B

.field public blacklist values:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 349
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;->defaultValue:I

    .line 346
    iput-byte v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;->logic:B

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 376
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 378
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_76

    .line 379
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_74

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 386
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 389
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 379
    return-void

    .line 387
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 380
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;->values:[I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_74

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 386
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 389
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 381
    return-void

    .line 387
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 382
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;->defaultValue:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_74

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 386
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 389
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 383
    return-void

    .line 387
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;->logic:B
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_74

    .line 386
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6e

    .line 389
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 390
    nop

    .line 391
    return-void

    .line 387
    :cond_6e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 386
    :catchall_74
    move-exception v2

    goto :goto_7e

    .line 378
    :cond_76
    :try_start_76
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_74

    .line 386
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_7e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_87

    .line 387
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 389
    :cond_87
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 390
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 364
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;->values:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 366
    iget v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;->defaultValue:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-byte v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$TelephonyMode;->logic:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 369
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 370
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 372
    return-void
.end method
