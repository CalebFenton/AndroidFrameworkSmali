.class public Lcom/android/future/usb/UsbAccessory;
.super Ljava/lang/Object;
.source "UsbAccessory.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mManufacturer:Ljava/lang/String;

.field private final mModel:Ljava/lang/String;

.field private final mSerial:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/hardware/usb/UsbAccessory;)V
    .locals 1
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@9
    .line 33
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@f
    .line 34
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@15
    .line 35
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@1b
    .line 36
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@21
    .line 37
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    #@27
    .line 31
    return-void
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    .line 100
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 105
    instance-of v2, p1, Lcom/android/future/usb/UsbAccessory;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 106
    check-cast v0, Lcom/android/future/usb/UsbAccessory;

    #@8
    .line 107
    .local v0, "accessory":Lcom/android/future/usb/UsbAccessory;
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@a
    invoke-virtual {v0}, Lcom/android/future/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 108
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@16
    invoke-virtual {v0}, Lcom/android/future/usb/UsbAccessory;->getModel()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    .line 107
    if-eqz v2, :cond_0

    #@20
    .line 109
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@22
    invoke-virtual {v0}, Lcom/android/future/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@29
    move-result v2

    #@2a
    .line 107
    if-eqz v2, :cond_0

    #@2c
    .line 110
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@2e
    invoke-virtual {v0}, Lcom/android/future/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@35
    move-result v2

    #@36
    .line 107
    if-eqz v2, :cond_0

    #@38
    .line 111
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@3a
    invoke-virtual {v0}, Lcom/android/future/usb/UsbAccessory;->getUri()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@41
    move-result v2

    #@42
    .line 107
    if-eqz v2, :cond_0

    #@44
    .line 112
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    #@46
    invoke-virtual {v0}, Lcom/android/future/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v1, v2}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@4d
    move-result v1

    #@4e
    .line 107
    :cond_0
    return v1

    #@4f
    .line 114
    .end local v0    # "accessory":Lcom/android/future/usb/UsbAccessory;
    :cond_1
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 119
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    move v0, v1

    #@6
    .line 120
    :goto_0
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@8
    if-nez v2, :cond_1

    #@a
    move v2, v1

    #@b
    .line 119
    :goto_1
    xor-int/2addr v2, v0

    #@c
    .line 121
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@e
    if-nez v0, :cond_2

    #@10
    move v0, v1

    #@11
    .line 119
    :goto_2
    xor-int/2addr v2, v0

    #@12
    .line 122
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@14
    if-nez v0, :cond_3

    #@16
    move v0, v1

    #@17
    .line 119
    :goto_3
    xor-int/2addr v2, v0

    #@18
    .line 123
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@1a
    if-nez v0, :cond_4

    #@1c
    move v0, v1

    #@1d
    .line 119
    :goto_4
    xor-int/2addr v0, v2

    #@1e
    .line 124
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    #@20
    if-nez v2, :cond_5

    #@22
    .line 119
    :goto_5
    xor-int/2addr v0, v1

    #@23
    return v0

    #@24
    :cond_0
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@26
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@29
    move-result v0

    #@2a
    goto :goto_0

    #@2b
    .line 120
    :cond_1
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@2d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@30
    move-result v2

    #@31
    goto :goto_1

    #@32
    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@34
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@37
    move-result v0

    #@38
    goto :goto_2

    #@39
    .line 122
    :cond_3
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@3b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@3e
    move-result v0

    #@3f
    goto :goto_3

    #@40
    .line 123
    :cond_4
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@42
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@45
    move-result v0

    #@46
    goto :goto_4

    #@47
    .line 124
    :cond_5
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    #@49
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@4c
    move-result v1

    #@4d
    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "UsbAccessory[mManufacturer="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 130
    const-string/jumbo v1, ", mModel="

    #@15
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 130
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@1b
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 131
    const-string/jumbo v1, ", mDescription="

    #@22
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 131
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@28
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 132
    const-string/jumbo v1, ", mVersion="

    #@2f
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 132
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@35
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 133
    const-string/jumbo v1, ", mUri="

    #@3c
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 133
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@42
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 134
    const-string/jumbo v1, ", mSerial="

    #@49
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 134
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    #@4f
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 134
    const-string/jumbo v1, "]"

    #@56
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    return-object v0
.end method
