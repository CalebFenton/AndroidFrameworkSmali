.class public final Landroid/media/midi/MidiDeviceInfo;
.super Ljava/lang/Object;
.source "MidiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDeviceInfo$PortInfo;,
        Landroid/media/midi/MidiDeviceInfo$Protocol;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/midi/MidiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o PROPERTY_ALSA_CARD:Ljava/lang/String; = "alsa_card"

.field public static final greylist-max-o PROPERTY_ALSA_DEVICE:Ljava/lang/String; = "alsa_device"

.field public static final whitelist PROPERTY_BLUETOOTH_DEVICE:Ljava/lang/String; = "bluetooth_device"

.field public static final whitelist PROPERTY_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field public static final whitelist PROPERTY_NAME:Ljava/lang/String; = "name"

.field public static final whitelist PROPERTY_PRODUCT:Ljava/lang/String; = "product"

.field public static final whitelist PROPERTY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field public static final greylist-max-o PROPERTY_SERVICE_INFO:Ljava/lang/String; = "service_info"

.field public static final whitelist PROPERTY_USB_DEVICE:Ljava/lang/String; = "usb_device"

.field public static final whitelist PROPERTY_VERSION:Ljava/lang/String; = "version"

.field public static final whitelist PROTOCOL_UMP_MIDI_1_0_UP_TO_128_BITS:I = 0x3

.field public static final whitelist PROTOCOL_UMP_MIDI_1_0_UP_TO_128_BITS_AND_JRTS:I = 0x4

.field public static final whitelist PROTOCOL_UMP_MIDI_1_0_UP_TO_64_BITS:I = 0x1

.field public static final whitelist PROTOCOL_UMP_MIDI_1_0_UP_TO_64_BITS_AND_JRTS:I = 0x2

.field public static final whitelist PROTOCOL_UMP_MIDI_2_0:I = 0x11

.field public static final whitelist PROTOCOL_UMP_MIDI_2_0_AND_JRTS:I = 0x12

.field public static final whitelist PROTOCOL_UMP_USE_MIDI_CI:I = 0x0

.field public static final whitelist PROTOCOL_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MidiDeviceInfo"

.field public static final whitelist TYPE_BLUETOOTH:I = 0x3

.field public static final whitelist TYPE_USB:I = 0x1

.field public static final whitelist TYPE_VIRTUAL:I = 0x2


# instance fields
.field private final blacklist mDefaultProtocol:I

.field private final greylist-max-o mId:I

.field private final greylist-max-o mInputPortCount:I

.field private final greylist-max-o mInputPortNames:[Ljava/lang/String;

.field private final greylist-max-o mIsPrivate:Z

.field private final greylist-max-o mOutputPortCount:I

.field private final greylist-max-o mOutputPortNames:[Ljava/lang/String;

.field private final greylist-max-o mProperties:Landroid/os/Bundle;

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 464
    new-instance v0, Landroid/media/midi/MidiDeviceInfo$1;

    invoke-direct {v0}, Landroid/media/midi/MidiDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ZI)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "id"    # I
    .param p3, "numInputPorts"    # I
    .param p4, "numOutputPorts"    # I
    .param p5, "inputPortNames"    # [Ljava/lang/String;
    .param p6, "outputPortNames"    # [Ljava/lang/String;
    .param p7, "properties"    # Landroid/os/Bundle;
    .param p8, "isPrivate"    # Z
    .param p9, "defaultProtocol"    # I

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/16 v0, 0x100

    .line 322
    .local v0, "maxPorts":I
    if-ltz p3, :cond_49

    const/16 v1, 0x100

    if-gt p3, v1, :cond_49

    .line 326
    if-ltz p4, :cond_30

    if-gt p4, v1, :cond_30

    .line 330
    iput p1, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    .line 331
    iput p2, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    .line 332
    iput p3, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    .line 333
    iput p4, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    .line 334
    if-nez p5, :cond_1e

    .line 335
    new-array v1, p3, [Ljava/lang/String;

    iput-object v1, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    goto :goto_20

    .line 337
    :cond_1e
    iput-object p5, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    .line 339
    :goto_20
    if-nez p6, :cond_27

    .line 340
    new-array v1, p4, [Ljava/lang/String;

    iput-object v1, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    goto :goto_29

    .line 342
    :cond_27
    iput-object p6, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    .line 344
    :goto_29
    iput-object p7, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    .line 345
    iput-boolean p8, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    .line 346
    iput p9, p0, Landroid/media/midi/MidiDeviceInfo;->mDefaultProtocol:I

    .line 347
    return-void

    .line 327
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numOutputPorts out of range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numInputPorts out of range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o getBasicProperties([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9
    .param p1, "keys"    # [Ljava/lang/String;

    .line 493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 494
    .local v0, "basicProperties":Landroid/os/Bundle;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_50

    aget-object v3, p1, v2

    .line 495
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 496
    .local v4, "val":Ljava/lang/Object;
    if-eqz v4, :cond_4d

    .line 497
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1e

    .line 498
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 499
    :cond_1e
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2d

    .line 500
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4d

    .line 502
    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported property type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MidiDeviceInfo"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/Object;
    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 506
    :cond_50
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 439
    instance-of v0, p1, Landroid/media/midi/MidiDeviceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 440
    move-object v0, p1

    check-cast v0, Landroid/media/midi/MidiDeviceInfo;

    iget v0, v0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    iget v2, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    if-ne v0, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 442
    :cond_10
    return v1
.end method

.method public whitelist getDefaultProtocol()I
    .registers 2

    .line 434
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mDefaultProtocol:I

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 365
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    return v0
.end method

.method public whitelist getInputPortCount()I
    .registers 2

    .line 374
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    return v0
.end method

.method public whitelist getOutputPortCount()I
    .registers 2

    .line 383
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    return v0
.end method

.method public whitelist getPorts()[Landroid/media/midi/MidiDeviceInfo$PortInfo;
    .registers 8

    .line 393
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Landroid/media/midi/MidiDeviceInfo$PortInfo;

    .line 395
    .local v0, "ports":[Landroid/media/midi/MidiDeviceInfo$PortInfo;
    const/4 v1, 0x0

    .line 396
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget v3, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    if-ge v2, v3, :cond_1f

    .line 397
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "index":I
    .local v3, "index":I
    new-instance v4, Landroid/media/midi/MidiDeviceInfo$PortInfo;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x1

    invoke-direct {v4, v6, v2, v5}, Landroid/media/midi/MidiDeviceInfo$PortInfo;-><init>(IILjava/lang/String;)V

    aput-object v4, v0, v1

    .line 396
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_9

    .line 399
    .end local v2    # "i":I
    .end local v3    # "index":I
    .restart local v1    # "index":I
    :cond_1f
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_20
    iget v3, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    if-ge v2, v3, :cond_36

    .line 400
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "index":I
    .restart local v3    # "index":I
    new-instance v4, Landroid/media/midi/MidiDeviceInfo$PortInfo;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x2

    invoke-direct {v4, v6, v2, v5}, Landroid/media/midi/MidiDeviceInfo$PortInfo;-><init>(IILjava/lang/String;)V

    aput-object v4, v0, v1

    .line 399
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_20

    .line 403
    .end local v2    # "i":I
    .end local v3    # "index":I
    .restart local v1    # "index":I
    :cond_36
    return-object v0
.end method

.method public whitelist getProperties()Landroid/os/Bundle;
    .registers 2

    .line 412
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 355
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 448
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    return v0
.end method

.method public whitelist isPrivate()Z
    .registers 2

    .line 422
    iget-boolean v0, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 455
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MidiDeviceInfo[mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mInputPortCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOutputPortCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mIsPrivate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDefaultProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mDefaultProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 11
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 511
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 517
    iget-boolean v0, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mDefaultProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const-string v6, "alsa_card"

    const-string v7, "alsa_device"

    const-string v1, "name"

    const-string v2, "manufacturer"

    const-string v3, "product"

    const-string v4, "version"

    const-string v5, "serial_number"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/midi/MidiDeviceInfo;->getBasicProperties([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 527
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 528
    return-void
.end method
