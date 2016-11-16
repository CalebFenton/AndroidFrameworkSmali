.class public Landroid/hardware/usb/UsbAccessory;
.super Ljava/lang/Object;
.source "UsbAccessory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbAccessory$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbAccessory;",
            ">;"
        }
    .end annotation
.end field

.field public static final DESCRIPTION_STRING:I = 0x2

.field public static final MANUFACTURER_STRING:I = 0x0

.field public static final MODEL_STRING:I = 0x1

.field public static final SERIAL_STRING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "UsbAccessory"

.field public static final URI_STRING:I = 0x4

.field public static final VERSION_STRING:I = 0x3


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mManufacturer:Ljava/lang/String;

.field private final mModel:Ljava/lang/String;

.field private final mSerial:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 194
    new-instance v0, Landroid/hardware/usb/UsbAccessory$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/usb/UsbAccessory$1;-><init>()V

    #@5
    .line 193
    sput-object v0, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "serial"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iput-object p1, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@5
    .line 76
    iput-object p2, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@7
    .line 77
    iput-object p3, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@9
    .line 78
    iput-object p4, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@b
    .line 79
    iput-object p5, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@d
    .line 80
    iput-object p6, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    #@f
    .line 74
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    const/4 v0, 0x0

    #@4
    aget-object v0, p1, v0

    #@6
    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@8
    .line 89
    const/4 v0, 0x1

    #@9
    aget-object v0, p1, v0

    #@b
    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@d
    .line 90
    const/4 v0, 0x2

    #@e
    aget-object v0, p1, v0

    #@10
    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@12
    .line 91
    const/4 v0, 0x3

    #@13
    aget-object v0, p1, v0

    #@15
    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@17
    .line 92
    const/4 v0, 0x4

    #@18
    aget-object v0, p1, v0

    #@1a
    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@1c
    .line 93
    const/4 v0, 0x5

    #@1d
    aget-object v0, p1, v0

    #@1f
    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    #@21
    .line 87
    return-void
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 155
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
    .line 156
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 211
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 161
    instance-of v2, p1, Landroid/hardware/usb/UsbAccessory;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 162
    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    #@8
    .line 163
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@a
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 164
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@16
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    .line 163
    if-eqz v2, :cond_0

    #@20
    .line 165
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@22
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@29
    move-result v2

    #@2a
    .line 163
    if-eqz v2, :cond_0

    #@2c
    .line 166
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@2e
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@35
    move-result v2

    #@36
    .line 163
    if-eqz v2, :cond_0

    #@38
    .line 167
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@3a
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@41
    move-result v2

    #@42
    .line 163
    if-eqz v2, :cond_0

    #@44
    .line 168
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    #@46
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v1, v2}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@4d
    move-result v1

    #@4e
    .line 163
    :cond_0
    return v1

    #@4f
    .line 170
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_1
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 175
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    move v0, v1

    #@6
    .line 176
    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@8
    if-nez v2, :cond_1

    #@a
    move v2, v1

    #@b
    .line 175
    :goto_1
    xor-int/2addr v2, v0

    #@c
    .line 177
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@e
    if-nez v0, :cond_2

    #@10
    move v0, v1

    #@11
    .line 175
    :goto_2
    xor-int/2addr v2, v0

    #@12
    .line 178
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@14
    if-nez v0, :cond_3

    #@16
    move v0, v1

    #@17
    .line 175
    :goto_3
    xor-int/2addr v2, v0

    #@18
    .line 179
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@1a
    if-nez v0, :cond_4

    #@1c
    move v0, v1

    #@1d
    .line 175
    :goto_4
    xor-int/2addr v0, v2

    #@1e
    .line 180
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    #@20
    if-nez v2, :cond_5

    #@22
    .line 175
    :goto_5
    xor-int/2addr v0, v1

    #@23
    return v0

    #@24
    :cond_0
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@26
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@29
    move-result v0

    #@2a
    goto :goto_0

    #@2b
    .line 176
    :cond_1
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@2d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@30
    move-result v2

    #@31
    goto :goto_1

    #@32
    .line 177
    :cond_2
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@34
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@37
    move-result v0

    #@38
    goto :goto_2

    #@39
    .line 178
    :cond_3
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@3b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@3e
    move-result v0

    #@3f
    goto :goto_3

    #@40
    .line 179
    :cond_4
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@42
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@45
    move-result v0

    #@46
    goto :goto_4

    #@47
    .line 180
    :cond_5
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

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
    .line 185
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
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 186
    const-string/jumbo v1, ", mModel="

    #@15
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 186
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@1b
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 187
    const-string/jumbo v1, ", mDescription="

    #@22
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 187
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@28
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 188
    const-string/jumbo v1, ", mVersion="

    #@2f
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 188
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@35
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 189
    const-string/jumbo v1, ", mUri="

    #@3c
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 189
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@42
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 190
    const-string/jumbo v1, ", mSerial="

    #@49
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 190
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    #@4f
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 190
    const-string/jumbo v1, "]"

    #@56
    .line 185
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 216
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 217
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 218
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 219
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 220
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 214
    return-void
.end method
