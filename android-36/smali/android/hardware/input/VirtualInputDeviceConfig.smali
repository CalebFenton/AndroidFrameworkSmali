.class public abstract Landroid/hardware/input/VirtualInputDeviceConfig;
.super Ljava/lang/Object;
.source "VirtualInputDeviceConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    }
.end annotation


# static fields
.field private static final blacklist DEVICE_NAME_MAX_LENGTH:I = 0x50


# instance fields
.field private final blacklist mAssociatedDisplayId:I

.field private final blacklist mInputDeviceName:Ljava/lang/String;

.field private final blacklist mProductId:I

.field private final blacklist mVendorId:I


# direct methods
.method protected constructor whitelist <init>(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
            "+",
            "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
            "*>;>;)V"
        }
    .end annotation

    .line 56
    .local p1, "builder":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<+Landroid/hardware/input/VirtualInputDeviceConfig$Builder<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmVendorId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    .line 58
    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmProductId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    .line 59
    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmAssociatedDisplayId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    .line 60
    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmInputDeviceName(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing device name"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    .line 62
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_51

    .line 70
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x50

    if-ge v0, v1, :cond_36

    .line 74
    return-void

    .line 71
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input device name exceeds maximum length of 80bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display association is required for virtual input devices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing device name"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method blacklist additionalFieldsToString()Ljava/lang/String;
    .registers 2

    .line 141
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getAssociatedDisplayId()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    return v0
.end method

.method public whitelist getInputDeviceName()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProductId()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    return v0
.end method

.method public whitelist getVendorId()I
    .registers 2

    .line 89
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(  name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " associatedDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig;->additionalFieldsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 122
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 126
    return-void
.end method
