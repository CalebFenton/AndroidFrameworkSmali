.class Landroid/hardware/biometrics/common/OperationState$FaceOperationState$1;
.super Ljava/lang/Object;
.source "OperationState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/common/OperationState$FaceOperationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/biometrics/common/OperationState$FaceOperationState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/common/OperationState$FaceOperationState;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 224
    new-instance v0, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;-><init>()V

    .line 225
    .local v0, "_aidl_out":Landroid/hardware/biometrics/common/OperationState$FaceOperationState;
    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;->readFromParcel(Landroid/os/Parcel;)V

    .line 226
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/common/OperationState$FaceOperationState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/biometrics/common/OperationState$FaceOperationState;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 230
    new-array v0, p1, [Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/common/OperationState$FaceOperationState$1;->newArray(I)[Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    move-result-object p1

    return-object p1
.end method
