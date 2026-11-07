.class public Landroid/hardware/usb/UsbAccessory;
.super Ljava/lang/Object;
.source "UsbAccessory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbAccessory;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DESCRIPTION_STRING:I = 0x2

.field public static final greylist-max-o MANUFACTURER_STRING:I = 0x0

.field public static final greylist-max-o MODEL_STRING:I = 0x1

.field public static final greylist-max-o SERIAL_STRING:I = 0x5

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UsbAccessory"

.field public static final greylist-max-o URI_STRING:I = 0x4

.field public static final greylist-max-o VERSION_STRING:I = 0x3


# instance fields
.field private final greylist-max-o mDescription:Ljava/lang/String;

.field private final greylist-max-o mManufacturer:Ljava/lang/String;

.field private final greylist-max-o mModel:Ljava/lang/String;

.field private final blacklist mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

.field private final greylist-max-o mUri:Ljava/lang/String;

.field private final greylist-max-o mVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 220
    new-instance v0, Landroid/hardware/usb/UsbAccessory$2;

    invoke-direct {v0}, Landroid/hardware/usb/UsbAccessory$2;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/usb/IUsbSerialReader;)V
    .registers 8
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "serialNumberReader"    # Landroid/hardware/usb/IUsbSerialReader;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    .line 85
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    .line 89
    iput-object p6, p0, Landroid/hardware/usb/UsbAccessory;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    .line 92
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 93
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    instance-of v0, v0, Landroid/hardware/usb/IUsbSerialReader$Stub;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 95
    :cond_28
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "serialNumber"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    new-instance v6, Landroid/hardware/usb/UsbAccessory$1;

    invoke-direct {v6, p6}, Landroid/hardware/usb/UsbAccessory$1;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "manufacturer":Ljava/lang/String;
    .end local p2    # "model":Ljava/lang/String;
    .end local p3    # "description":Ljava/lang/String;
    .end local p4    # "version":Ljava/lang/String;
    .end local p5    # "uri":Ljava/lang/String;
    .local v1, "manufacturer":Ljava/lang/String;
    .local v2, "model":Ljava/lang/String;
    .local v3, "description":Ljava/lang/String;
    .local v4, "version":Ljava/lang/String;
    .local v5, "uri":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/usb/IUsbSerialReader;)V

    .line 115
    return-void
.end method

.method private static greylist-max-o compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 184
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 185
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 190
    instance-of v0, p1, Landroid/hardware/usb/UsbAccessory;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 191
    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 192
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    .line 193
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    .line 194
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    .line 195
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    .line 196
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 197
    invoke-virtual {p0}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v1, 0x1

    goto :goto_55

    :cond_54
    nop

    .line 192
    :goto_55
    return v1

    .line 199
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_56
    return v1
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getManufacturer()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getModel()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSerial()Ljava/lang/String;
    .registers 3

    .line 176
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/usb/IUsbSerialReader;->getSerial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 177
    :catch_b
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 179
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getUri()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersion()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 204
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 205
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    move v1, v2

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1a
    xor-int/2addr v0, v1

    .line 206
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    if-nez v1, :cond_21

    move v1, v2

    goto :goto_27

    :cond_21
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_27
    xor-int/2addr v0, v1

    .line 207
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    if-nez v1, :cond_2d

    goto :goto_33

    :cond_2d
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_33
    xor-int/2addr v0, v2

    .line 204
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbAccessory[mManufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSerialNumberReader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 245
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbSerialReader;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 251
    return-void
.end method
