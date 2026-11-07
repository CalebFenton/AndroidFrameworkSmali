.class public Landroid/hardware/usb/UsbInterface;
.super Ljava/lang/Object;
.source "UsbInterface.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAlternateSetting:I

.field private final greylist-max-o mClass:I

.field private greylist-max-o mEndpoints:[Landroid/os/Parcelable;

.field private final greylist-max-o mId:I

.field private final greylist-max-o mName:Ljava/lang/String;

.field private final greylist-max-o mProtocol:I

.field private final greylist-max-o mSubclass:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 165
    new-instance v0, Landroid/hardware/usb/UsbInterface$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbInterface$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(IILjava/lang/String;III)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "alternateSetting"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "Class"    # I
    .param p5, "subClass"    # I
    .param p6, "protocol"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    .line 56
    iput p2, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    .line 57
    iput-object p3, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    .line 58
    iput p4, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    .line 59
    iput p5, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    .line 60
    iput p6, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAlternateSetting()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    return v0
.end method

.method public whitelist getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;
    .registers 3
    .param p1, "index"    # I

    .line 139
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    aget-object v0, v0, p1

    check-cast v0, Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public whitelist getEndpointCount()I
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    array-length v0, v0

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 71
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    return v0
.end method

.method public whitelist getInterfaceClass()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    return v0
.end method

.method public whitelist getInterfaceProtocol()I
    .registers 2

    .line 121
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    return v0
.end method

.method public whitelist getInterfaceSubclass()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o setEndpoints([Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "endpoints"    # [Landroid/os/Parcelable;

    .line 147
    const-string v0, "endpoints"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    .line 148
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbInterface[mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mAlternateSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mSubclass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mProtocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mEndpoints=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5d
    iget-object v2, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    array-length v2, v2

    if-ge v1, v2, :cond_75

    .line 158
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v2, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/os/Parcelable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 161
    .end local v1    # "i":I
    :cond_75
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 190
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mAlternateSetting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mSubclass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Landroid/hardware/usb/UsbInterface;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Landroid/hardware/usb/UsbInterface;->mEndpoints:[Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 197
    return-void
.end method
