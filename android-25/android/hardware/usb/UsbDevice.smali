.class public Landroid/hardware/usb/UsbDevice;
.super Ljava/lang/Object;
.source "UsbDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbDevice$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbDevice"


# instance fields
.field private final mClass:I

.field private mConfigurations:[Landroid/os/Parcelable;

.field private mInterfaces:[Landroid/hardware/usb/UsbInterface;

.field private final mManufacturerName:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mProductId:I

.field private final mProductName:Ljava/lang/String;

.field private final mProtocol:I

.field private final mSerialNumber:Ljava/lang/String;

.field private final mSubclass:I

.field private final mVendorId:I

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 287
    new-instance v0, Landroid/hardware/usb/UsbDevice$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/usb/UsbDevice$1;-><init>()V

    #@5
    .line 286
    sput-object v0, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "Class"    # I
    .param p5, "subClass"    # I
    .param p6, "protocol"    # I
    .param p7, "manufacturerName"    # Ljava/lang/String;
    .param p8, "productName"    # Ljava/lang/String;
    .param p9, "version"    # Ljava/lang/String;
    .param p10, "serialNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-object p1, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    #@5
    .line 68
    iput p2, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    #@7
    .line 69
    iput p3, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    #@9
    .line 70
    iput p4, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    #@b
    .line 71
    iput p5, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    #@d
    .line 72
    iput p6, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    #@f
    .line 73
    iput-object p7, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    #@11
    .line 74
    iput-object p8, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    #@13
    .line 75
    iput-object p9, p0, Landroid/hardware/usb/UsbDevice;->mVersion:Ljava/lang/String;

    #@15
    .line 76
    iput-object p10, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumber:Ljava/lang/String;

    #@17
    .line 66
    return-void
.end method

.method public static getDeviceId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 330
    invoke-static {p0}, Landroid/hardware/usb/UsbDevice;->native_get_device_id(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    #@0
    .prologue
    .line 334
    invoke-static {p0}, Landroid/hardware/usb/UsbDevice;->native_get_device_name(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private getInterfaceList()[Landroid/hardware/usb/UsbInterface;
    .locals 9

    #@0
    .prologue
    .line 203
    iget-object v7, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    #@2
    if-nez v7, :cond_2

    #@4
    .line 204
    iget-object v7, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    #@6
    array-length v1, v7

    #@7
    .line 205
    .local v1, "configurationCount":I
    const/4 v3, 0x0

    #@8
    .line 206
    .local v3, "interfaceCount":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@b
    .line 207
    iget-object v7, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    #@d
    aget-object v0, v7, v2

    #@f
    check-cast v0, Landroid/hardware/usb/UsbConfiguration;

    #@11
    .line 208
    .local v0, "configuration":Landroid/hardware/usb/UsbConfiguration;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    #@14
    move-result v7

    #@15
    add-int/2addr v3, v7

    #@16
    .line 206
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 211
    .end local v0    # "configuration":Landroid/hardware/usb/UsbConfiguration;
    :cond_0
    new-array v7, v3, [Landroid/hardware/usb/UsbInterface;

    #@1b
    iput-object v7, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    #@1d
    .line 212
    const/4 v5, 0x0

    #@1e
    .line 213
    .local v5, "offset":I
    const/4 v2, 0x0

    #@1f
    :goto_1
    if-ge v2, v1, :cond_2

    #@21
    .line 214
    iget-object v7, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    #@23
    aget-object v0, v7, v2

    #@25
    check-cast v0, Landroid/hardware/usb/UsbConfiguration;

    #@27
    .line 215
    .restart local v0    # "configuration":Landroid/hardware/usb/UsbConfiguration;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    #@2a
    move-result v3

    #@2b
    .line 216
    const/4 v4, 0x0

    #@2c
    .local v4, "j":I
    move v6, v5

    #@2d
    .end local v5    # "offset":I
    .local v6, "offset":I
    :goto_2
    if-ge v4, v3, :cond_1

    #@2f
    .line 217
    iget-object v7, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    #@31
    add-int/lit8 v5, v6, 0x1

    #@33
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    #@36
    move-result-object v8

    #@37
    aput-object v8, v7, v6

    #@39
    .line 216
    add-int/lit8 v4, v4, 0x1

    #@3b
    move v6, v5

    #@3c
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_2

    #@3d
    .line 213
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@3f
    move v5, v6

    #@40
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_1

    #@41
    .line 222
    .end local v0    # "configuration":Landroid/hardware/usb/UsbConfiguration;
    .end local v1    # "configurationCount":I
    .end local v2    # "i":I
    .end local v3    # "interfaceCount":I
    .end local v4    # "j":I
    .end local v5    # "offset":I
    :cond_2
    iget-object v7, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    #@43
    return-object v7
.end method

.method private static native native_get_device_id(Ljava/lang/String;)I
.end method

.method private static native native_get_device_name(I)Ljava/lang/String;
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 312
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 257
    instance-of v0, p1, Landroid/hardware/usb/UsbDevice;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 258
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    #@8
    iget-object v1, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 259
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 260
    check-cast p1, Ljava/lang/String;

    #@15
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    #@17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    return v0

    #@1c
    .line 262
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    #@1d
    return v0
.end method

.method public getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    #@2
    aget-object v0, v0, p1

    #@4
    check-cast v0, Landroid/hardware/usb/UsbConfiguration;

    #@6
    return-object v0
.end method

.method public getConfigurationCount()I
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getDeviceClass()I
    .locals 1

    #@0
    .prologue
    .line 163
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    #@2
    return v0
.end method

.method public getDeviceId()I
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDeviceProtocol()I
    .locals 1

    #@0
    .prologue
    .line 181
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    #@2
    return v0
.end method

.method public getDeviceSubclass()I
    .locals 1

    #@0
    .prologue
    .line 172
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    #@2
    return v0
.end method

.method public getInterface(I)Landroid/hardware/usb/UsbInterface;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 244
    invoke-direct {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceList()[Landroid/hardware/usb/UsbInterface;

    #@3
    move-result-object v0

    #@4
    aget-object v0, v0, p1

    #@6
    return-object v0
.end method

.method public getInterfaceCount()I
    .locals 1

    #@0
    .prologue
    .line 233
    invoke-direct {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceList()[Landroid/hardware/usb/UsbInterface;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    return v0
.end method

.method public getManufacturerName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProductId()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    #@2
    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumber:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVendorId()I
    .locals 1

    #@0
    .prologue
    .line 144
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    #@2
    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setConfigurations([Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "configuration"    # [Landroid/os/Parcelable;

    #@0
    .prologue
    .line 252
    iput-object p1, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    #@2
    .line 251
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "UsbDevice[mName="

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 274
    const-string/jumbo v3, ",mVendorId="

    #@17
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 274
    iget v3, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    #@1d
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 274
    const-string/jumbo v3, ",mProductId="

    #@24
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 274
    iget v3, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    #@2a
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 275
    const-string/jumbo v3, ",mClass="

    #@31
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 275
    iget v3, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    #@37
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 275
    const-string/jumbo v3, ",mSubclass="

    #@3e
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 275
    iget v3, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    #@44
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 275
    const-string/jumbo v3, ",mProtocol="

    #@4b
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 275
    iget v3, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    #@51
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    .line 276
    const-string/jumbo v3, ",mManufacturerName="

    #@58
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    .line 276
    iget-object v3, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    #@5e
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    .line 276
    const-string/jumbo v3, ",mProductName="

    #@65
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    .line 276
    iget-object v3, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    #@6b
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    .line 277
    const-string/jumbo v3, ",mVersion="

    #@72
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    .line 277
    iget-object v3, p0, Landroid/hardware/usb/UsbDevice;->mVersion:Ljava/lang/String;

    #@78
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    .line 277
    const-string/jumbo v3, ",mSerialNumber="

    #@7f
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    .line 277
    iget-object v3, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumber:Ljava/lang/String;

    #@85
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    .line 277
    const-string/jumbo v3, ",mConfigurations=["

    #@8c
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v2

    #@94
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@97
    .line 278
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@98
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    #@9a
    array-length v2, v2

    #@9b
    if-ge v1, v2, :cond_0

    #@9d
    .line 279
    const-string/jumbo v2, "\n"

    #@a0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    .line 280
    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    #@a5
    aget-object v2, v2, v1

    #@a7
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@aa
    move-result-object v2

    #@ab
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    .line 278
    add-int/lit8 v1, v1, 0x1

    #@b0
    goto :goto_0

    #@b1
    .line 282
    :cond_0
    const-string/jumbo v2, "]"

    #@b4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v2

    #@bb
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 317
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 318
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 319
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 320
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 321
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 322
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 323
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@28
    .line 324
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mVersion:Ljava/lang/String;

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2d
    .line 325
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumber:Ljava/lang/String;

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@32
    .line 326
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    #@34
    const/4 v1, 0x0

    #@35
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    #@38
    .line 315
    return-void
.end method
