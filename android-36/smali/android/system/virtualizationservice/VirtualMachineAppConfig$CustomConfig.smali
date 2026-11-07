.class public Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;
.super Ljava/lang/Object;
.source "VirtualMachineAppConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/VirtualMachineAppConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomConfig"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist customKernelImage:Landroid/os/ParcelFileDescriptor;

.field public blacklist devices:[Ljava/lang/String;

.field public blacklist extraKernelCmdlineParams:[Ljava/lang/String;

.field public blacklist gdbPort:I

.field public blacklist networkSupported:Z

.field public blacklist teeServices:[Ljava/lang/String;

.field public blacklist vendorImage:Landroid/os/ParcelFileDescriptor;

.field public blacklist wantUpdatable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 362
    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig$1;

    invoke-direct {v0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig$1;-><init>()V

    sput-object v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->gdbPort:I

    .line 355
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->wantUpdatable:Z

    .line 357
    iput-boolean v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->networkSupported:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 428
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 429
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 430
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 432
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->customKernelImage:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 424
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->vendorImage:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 425
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 394
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 396
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_10a

    .line 397
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 414
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 417
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 397
    return-void

    .line 415
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :cond_26
    :try_start_26
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->customKernelImage:Landroid/os/ParcelFileDescriptor;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 414
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 417
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 399
    return-void

    .line 415
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->gdbPort:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 414
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 417
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 401
    return-void

    .line 415
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :cond_62
    :try_start_62
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->vendorImage:Landroid/os/ParcelFileDescriptor;

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 414
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 417
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 403
    return-void

    .line 415
    :cond_7c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_82
    :try_start_82
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->devices:[Ljava/lang/String;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9e

    .line 414
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_98

    .line 417
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 405
    return-void

    .line 415
    :cond_98
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 406
    :cond_9e
    :try_start_9e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->wantUpdatable:Z

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ba

    .line 414
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b4

    .line 417
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 407
    return-void

    .line 415
    :cond_b4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    :cond_ba
    :try_start_ba
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->networkSupported:Z

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c4
    .catchall {:try_start_ba .. :try_end_c4} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d6

    .line 414
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d0

    .line 417
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 409
    return-void

    .line 415
    :cond_d0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 410
    :cond_d6
    :try_start_d6
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->extraKernelCmdlineParams:[Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e0
    .catchall {:try_start_d6 .. :try_end_e0} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f2

    .line 414
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ec

    .line 417
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 411
    return-void

    .line 415
    :cond_ec
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :cond_f2
    :try_start_f2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->teeServices:[Ljava/lang/String;
    :try_end_f8
    .catchall {:try_start_f2 .. :try_end_f8} :catchall_108

    .line 414
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_102

    .line 417
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 418
    nop

    .line 419
    return-void

    .line 415
    :cond_102
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    :catchall_108
    move-exception v2

    goto :goto_112

    .line 396
    :cond_10a
    :try_start_10a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_112
    .catchall {:try_start_10a .. :try_end_112} :catchall_108

    .line 414
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_112
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_11b

    .line 415
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    :cond_11b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 418
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 377
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->customKernelImage:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 379
    iget v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->gdbPort:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->vendorImage:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 381
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->devices:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 382
    iget-boolean v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->wantUpdatable:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 383
    iget-boolean v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->networkSupported:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 384
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->extraKernelCmdlineParams:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->teeServices:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 387
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 388
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 390
    return-void
.end method
