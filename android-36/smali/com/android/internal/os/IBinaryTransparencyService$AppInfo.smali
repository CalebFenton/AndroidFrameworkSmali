.class public Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;
.super Ljava/lang/Object;
.source "IBinaryTransparencyService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IBinaryTransparencyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist digest:[B

.field public blacklist digestAlgorithm:I

.field public blacklist initiator:Ljava/lang/String;

.field public blacklist initiatorSignerDigests:[Ljava/lang/String;

.field public blacklist installer:Ljava/lang/String;

.field public blacklist longVersion:J

.field public blacklist mbaStatus:I

.field public blacklist originator:Ljava/lang/String;

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist signerDigests:[Ljava/lang/String;

.field public blacklist splitName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 374
    new-instance v0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo$1;

    invoke-direct {v0}, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->longVersion:J

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digestAlgorithm:I

    .line 369
    iput v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->mbaStatus:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 409
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 411
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_156

    .line 412
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 438
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 412
    return-void

    .line 436
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->packageName:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 438
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 414
    return-void

    .line 436
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->longVersion:J

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 438
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 416
    return-void

    .line 436
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->splitName:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 438
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 418
    return-void

    .line 436
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digest:[B

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 438
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 420
    return-void

    .line 436
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 421
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digestAlgorithm:I

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 438
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 422
    return-void

    .line 436
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 423
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->signerDigests:[Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 438
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 424
    return-void

    .line 436
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->mbaStatus:I

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 438
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 426
    return-void

    .line 436
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->initiator:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 438
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 428
    return-void

    .line 436
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 429
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->initiatorSignerDigests:[Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 438
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 430
    return-void

    .line 436
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->installer:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12c
    .catchall {:try_start_122 .. :try_end_12c} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13e

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_138

    .line 438
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 432
    return-void

    .line 436
    :cond_138
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 433
    :cond_13e
    :try_start_13e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->originator:Ljava/lang/String;
    :try_end_144
    .catchall {:try_start_13e .. :try_end_144} :catchall_154

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14e

    .line 438
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 439
    nop

    .line 440
    return-void

    .line 436
    :cond_14e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    :catchall_154
    move-exception v2

    goto :goto_15e

    .line 411
    :cond_156
    :try_start_156
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_15e
    .catchall {:try_start_156 .. :try_end_15e} :catchall_154

    .line 435
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_15e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_167

    .line 436
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 438
    :cond_167
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 439
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 389
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget-object v1, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-wide v1, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->longVersion:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 392
    iget-object v1, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->splitName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digest:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 394
    iget v1, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digestAlgorithm:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget-object v1, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->signerDigests:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 396
    iget v1, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->mbaStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget-object v1, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->initiator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->initiatorSignerDigests:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->installer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->originator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 402
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 403
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 405
    return-void
.end method
