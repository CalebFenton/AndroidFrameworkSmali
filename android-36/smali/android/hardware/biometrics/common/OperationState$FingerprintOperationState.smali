.class public Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;
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
    name = "FingerprintOperationState"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist extension:Landroid/os/ParcelableHolder;

.field public blacklist isHardwareIgnoringTouches:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 160
    new-instance v0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Landroid/os/ParcelableHolder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ParcelableHolder;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->extension:Landroid/os/ParcelableHolder;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->isHardwareIgnoringTouches:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 209
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 210
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 211
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 213
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->extension:Landroid/os/ParcelableHolder;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 206
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 186
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5f

    .line 189
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_5d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 196
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 199
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 189
    return-void

    .line 197
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31

    .line 191
    iget-object v2, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->extension:Landroid/os/ParcelableHolder;

    invoke-virtual {v2, p1}, Landroid/os/ParcelableHolder;->readFromParcel(Landroid/os/Parcel;)V

    .line 193
    :cond_31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_5d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_47

    .line 196
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_41

    .line 199
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 193
    return-void

    .line 197
    :cond_41
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_47
    :try_start_47
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->isHardwareIgnoringTouches:Z
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_5d

    .line 196
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_57

    .line 199
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 200
    nop

    .line 201
    return-void

    .line 197
    :cond_57
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :catchall_5d
    move-exception v2

    goto :goto_67

    .line 188
    :cond_5f
    :try_start_5f
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_5d

    .line 196
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_67
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_70

    .line 197
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_70
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 200
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 175
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v2, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->extension:Landroid/os/ParcelableHolder;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    iget-boolean v1, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->isHardwareIgnoringTouches:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 179
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 180
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 182
    return-void
.end method
