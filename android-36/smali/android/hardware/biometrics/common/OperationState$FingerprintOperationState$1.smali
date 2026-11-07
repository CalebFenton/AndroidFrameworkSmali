.class Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState$1;
.super Ljava/lang/Object;
.source "OperationState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 163
    new-instance v0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;-><init>()V

    .line 164
    .local v0, "_aidl_out":Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;
    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->readFromParcel(Landroid/os/Parcel;)V

    .line 165
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

    .line 160
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 169
    new-array v0, p1, [Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

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

    .line 160
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState$1;->newArray(I)[Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    move-result-object p1

    return-object p1
.end method
