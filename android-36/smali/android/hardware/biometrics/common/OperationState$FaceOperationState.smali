.class public Landroid/hardware/biometrics/common/OperationState$FaceOperationState;
.super Ljava/lang/Object;
.source "OperationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/common/OperationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceOperationState"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/common/OperationState$FaceOperationState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist extension:Landroid/os/ParcelableHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 221
    new-instance v0, Landroid/hardware/biometrics/common/OperationState$FaceOperationState$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationState$FaceOperationState$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Landroid/os/ParcelableHolder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ParcelableHolder;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;->extension:Landroid/os/ParcelableHolder;

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 267
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 268
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 269
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 271
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;->extension:Landroid/os/ParcelableHolder;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 264
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 246
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 248
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_43

    .line 249
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_41

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 254
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 257
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 249
    return-void

    .line 255
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31

    .line 251
    iget-object v2, p0, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;->extension:Landroid/os/ParcelableHolder;

    invoke-virtual {v2, p1}, Landroid/os/ParcelableHolder;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_41

    .line 254
    :cond_31
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3b

    .line 257
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 258
    nop

    .line 259
    return-void

    .line 255
    :cond_3b
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :catchall_41
    move-exception v2

    goto :goto_4b

    .line 248
    :cond_43
    :try_start_43
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/biometrics/common/OperationState$FaceOperationState;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_41

    .line 254
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/biometrics/common/OperationState$FaceOperationState;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_4b
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_54

    .line 255
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_54
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 258
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 236
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v2, p0, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;->extension:Landroid/os/ParcelableHolder;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 239
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 240
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 242
    return-void
.end method
