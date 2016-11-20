.class public Landroid/hardware/usb/UsbEndpoint;
.super Ljava/lang/Object;
.source "UsbEndpoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbEndpoint$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress:I

.field private final mAttributes:I

.field private final mInterval:I

.field private final mMaxPacketSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 137
    new-instance v0, Landroid/hardware/usb/UsbEndpoint$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/usb/UsbEndpoint$1;-><init>()V

    #@5
    .line 136
    sput-object v0, Landroid/hardware/usb/UsbEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "address"    # I
    .param p2, "attributes"    # I
    .param p3, "maxPacketSize"    # I
    .param p4, "interval"    # I

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput p1, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    #@5
    .line 45
    iput p2, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    #@7
    .line 46
    iput p3, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    #@9
    .line 47
    iput p4, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    #@b
    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 152
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAddress()I
    .locals 1

    #@0
    .prologue
    .line 60
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    #@2
    return v0
.end method

.method public getAttributes()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    #@2
    return v0
.end method

.method public getDirection()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    #@2
    and-int/lit16 v0, v0, 0x80

    #@4
    return v0
.end method

.method public getEndpointNumber()I
    .locals 1

    #@0
    .prologue
    .line 69
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    #@2
    and-int/lit8 v0, v0, 0xf

    #@4
    return v0
.end method

.method public getInterval()I
    .locals 1

    #@0
    .prologue
    .line 127
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    #@2
    return v0
.end method

.method public getMaxPacketSize()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    #@2
    and-int/lit8 v0, v0, 0x3

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "UsbEndpoint[mAddress="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ",mAttributes="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 133
    const-string/jumbo v1, ",mMaxPacketSize="

    #@22
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 133
    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    #@28
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 133
    const-string/jumbo v1, ",mInterval="

    #@2f
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 133
    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    #@35
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 133
    const-string/jumbo v1, "]"

    #@3c
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 156
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 157
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 158
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 159
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 155
    return-void
.end method
