.class public Landroid/hardware/usb/UsbInterface;
.super Ljava/lang/Object;
.source "UsbInterface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbInterface$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlternateSetting:I

.field private final mClass:I

.field private mEndpoints:[Landroid/os/Parcelable;

.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mProtocol:I

.field private final mSubclass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 162
    new-instance v0, Landroid/hardware/usb/UsbInterface$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/usb/UsbInterface$1;-><init>()V

    #@5
    .line 161
    sput-object v0, Landroid/hardware/usb/UsbInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;III)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "alternateSetting"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "Class"    # I
    .param p5, "subClass"    # I
    .param p6, "protocol"    # I

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput p1, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    #@5
    .line 52
    iput p2, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    #@7
    .line 53
    iput-object p3, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    #@9
    .line 54
    iput p4, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    #@b
    .line 55
    iput p5, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    #@d
    .line 56
    iput p6, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    #@f
    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 182
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAlternateSetting()I
    .locals 1

    #@0
    .prologue
    .line 80
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    #@2
    return v0
.end method

.method public getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    #@2
    aget-object v0, v0, p1

    #@4
    check-cast v0, Landroid/hardware/usb/UsbEndpoint;

    #@6
    return-object v0
.end method

.method public getEndpointCount()I
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 67
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    #@2
    return v0
.end method

.method public getInterfaceClass()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    #@2
    return v0
.end method

.method public getInterfaceProtocol()I
    .locals 1

    #@0
    .prologue
    .line 117
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    #@2
    return v0
.end method

.method public getInterfaceSubclass()I
    .locals 1

    #@0
    .prologue
    .line 108
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setEndpoints([Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "endpoints"    # [Landroid/os/Parcelable;

    #@0
    .prologue
    .line 143
    iput-object p1, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    #@2
    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "UsbInterface[mId="

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    iget v3, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 149
    const-string/jumbo v3, ",mAlternateSetting="

    #@17
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 149
    iget v3, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    #@1d
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 150
    const-string/jumbo v3, ",mName="

    #@24
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 150
    iget-object v3, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    #@2a
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 150
    const-string/jumbo v3, ",mClass="

    #@31
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 150
    iget v3, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    #@37
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 151
    const-string/jumbo v3, ",mSubclass="

    #@3e
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 151
    iget v3, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    #@44
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 151
    const-string/jumbo v3, ",mProtocol="

    #@4b
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 151
    iget v3, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    #@51
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    .line 152
    const-string/jumbo v3, ",mEndpoints=["

    #@58
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@63
    .line 153
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@64
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    #@66
    array-length v2, v2

    #@67
    if-ge v1, v2, :cond_0

    #@69
    .line 154
    const-string/jumbo v2, "\n"

    #@6c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    .line 155
    iget-object v2, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    #@71
    aget-object v2, v2, v1

    #@73
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 153
    add-int/lit8 v1, v1, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 157
    :cond_0
    const-string/jumbo v2, "]"

    #@80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v2

    #@87
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 186
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 187
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 188
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 189
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 190
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 191
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 192
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    #@20
    const/4 v1, 0x0

    #@21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    #@24
    .line 185
    return-void
.end method
