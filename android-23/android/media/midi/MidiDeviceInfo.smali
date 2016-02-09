.class public final Landroid/media/midi/MidiDeviceInfo;
.super Ljava/lang/Object;
.source "MidiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDeviceInfo$PortInfo;,
        Landroid/media/midi/MidiDeviceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/midi/MidiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_ALSA_CARD:Ljava/lang/String; = "alsa_card"

.field public static final PROPERTY_ALSA_DEVICE:Ljava/lang/String; = "alsa_device"

.field public static final PROPERTY_BLUETOOTH_DEVICE:Ljava/lang/String; = "bluetooth_device"

.field public static final PROPERTY_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field public static final PROPERTY_NAME:Ljava/lang/String; = "name"

.field public static final PROPERTY_PRODUCT:Ljava/lang/String; = "product"

.field public static final PROPERTY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field public static final PROPERTY_SERVICE_INFO:Ljava/lang/String; = "service_info"

.field public static final PROPERTY_USB_DEVICE:Ljava/lang/String; = "usb_device"

.field public static final PROPERTY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "MidiDeviceInfo"

.field public static final TYPE_BLUETOOTH:I = 0x3

.field public static final TYPE_USB:I = 0x1

.field public static final TYPE_VIRTUAL:I = 0x2


# instance fields
.field private final mId:I

.field private final mInputPortCount:I

.field private final mInputPortNames:[Ljava/lang/String;

.field private final mIsPrivate:Z

.field private final mOutputPortCount:I

.field private final mOutputPortNames:[Ljava/lang/String;

.field private final mProperties:Landroid/os/Bundle;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 322
    new-instance v0, Landroid/media/midi/MidiDeviceInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/midi/MidiDeviceInfo$1;-><init>()V

    #@5
    .line 321
    sput-object v0, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "id"    # I
    .param p3, "numInputPorts"    # I
    .param p4, "numOutputPorts"    # I
    .param p5, "inputPortNames"    # [Ljava/lang/String;
    .param p6, "outputPortNames"    # [Ljava/lang/String;
    .param p7, "properties"    # Landroid/os/Bundle;
    .param p8, "isPrivate"    # Z

    #@0
    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 201
    iput p1, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    #@5
    .line 202
    iput p2, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    #@7
    .line 203
    iput p3, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    #@9
    .line 204
    iput p4, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    #@b
    .line 205
    if-nez p5, :cond_0

    #@d
    .line 206
    new-array v0, p3, [Ljava/lang/String;

    #@f
    iput-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    #@11
    .line 210
    :goto_0
    if-nez p6, :cond_1

    #@13
    .line 211
    new-array v0, p4, [Ljava/lang/String;

    #@15
    iput-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    #@17
    .line 215
    :goto_1
    iput-object p7, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    #@19
    .line 216
    iput-boolean p8, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    #@1b
    .line 200
    return-void

    #@1c
    .line 208
    :cond_0
    iput-object p5, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    #@1e
    goto :goto_0

    #@1f
    .line 213
    :cond_1
    iput-object p6, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    #@21
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 342
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 297
    instance-of v1, p1, Landroid/media/midi/MidiDeviceInfo;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 298
    check-cast p1, Landroid/media/midi/MidiDeviceInfo;

    #@7
    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p1, Landroid/media/midi/MidiDeviceInfo;->mId:I

    #@9
    iget v2, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    #@b
    if-ne v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0

    #@f
    .line 300
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 235
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    #@2
    return v0
.end method

.method public getInputPortCount()I
    .locals 1

    #@0
    .prologue
    .line 244
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    #@2
    return v0
.end method

.method public getOutputPortCount()I
    .locals 1

    #@0
    .prologue
    .line 253
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    #@2
    return v0
.end method

.method public getPorts()[Landroid/media/midi/MidiDeviceInfo$PortInfo;
    .locals 7

    #@0
    .prologue
    .line 263
    iget v4, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    #@2
    iget v5, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    #@4
    add-int/2addr v4, v5

    #@5
    new-array v3, v4, [Landroid/media/midi/MidiDeviceInfo$PortInfo;

    #@7
    .line 265
    .local v3, "ports":[Landroid/media/midi/MidiDeviceInfo$PortInfo;
    const/4 v1, 0x0

    #@8
    .line 266
    .local v1, "index":I
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    iget v4, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    #@b
    if-ge v0, v4, :cond_0

    #@d
    .line 267
    add-int/lit8 v2, v1, 0x1

    #@f
    .end local v1    # "index":I
    .local v2, "index":I
    new-instance v4, Landroid/media/midi/MidiDeviceInfo$PortInfo;

    #@11
    iget-object v5, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    #@13
    aget-object v5, v5, v0

    #@15
    const/4 v6, 0x1

    #@16
    invoke-direct {v4, v6, v0, v5}, Landroid/media/midi/MidiDeviceInfo$PortInfo;-><init>(IILjava/lang/String;)V

    #@19
    aput-object v4, v3, v1

    #@1b
    .line 266
    add-int/lit8 v0, v0, 0x1

    #@1d
    move v1, v2

    #@1e
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@1f
    .line 269
    :cond_0
    const/4 v0, 0x0

    #@20
    :goto_1
    iget v4, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    #@22
    if-ge v0, v4, :cond_1

    #@24
    .line 270
    add-int/lit8 v2, v1, 0x1

    #@26
    .end local v1    # "index":I
    .restart local v2    # "index":I
    new-instance v4, Landroid/media/midi/MidiDeviceInfo$PortInfo;

    #@28
    iget-object v5, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    #@2a
    aget-object v5, v5, v0

    #@2c
    const/4 v6, 0x2

    #@2d
    invoke-direct {v4, v6, v0, v5}, Landroid/media/midi/MidiDeviceInfo$PortInfo;-><init>(IILjava/lang/String;)V

    #@30
    aput-object v4, v3, v1

    #@32
    .line 269
    add-int/lit8 v0, v0, 0x1

    #@34
    move v1, v2

    #@35
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    #@36
    .line 273
    :cond_1
    return-object v3
.end method

.method public getProperties()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 225
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 306
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    #@2
    return v0
.end method

.method public isPrivate()Z
    .locals 1

    #@0
    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "name"

    #@5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@8
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "MidiDeviceInfo[mType="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 315
    const-string/jumbo v1, ",mInputPortCount="

    #@1d
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 315
    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    #@23
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 316
    const-string/jumbo v1, ",mOutputPortCount="

    #@2a
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 316
    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    #@30
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 317
    const-string/jumbo v1, ",mProperties="

    #@37
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 317
    iget-object v1, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    #@3d
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 318
    const-string/jumbo v1, ",mIsPrivate="

    #@44
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 318
    iget-boolean v1, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    #@4a
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 346
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 347
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 348
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 349
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 350
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@19
    .line 351
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1e
    .line 352
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@23
    .line 353
    iget-boolean v0, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    #@25
    if-eqz v0, :cond_0

    #@27
    const/4 v0, 0x1

    #@28
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 345
    return-void

    #@2c
    .line 353
    :cond_0
    const/4 v0, 0x0

    #@2d
    goto :goto_0
.end method
