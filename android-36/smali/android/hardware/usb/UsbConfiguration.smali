.class public Landroid/hardware/usb/UsbConfiguration;
.super Ljava/lang/Object;
.source "UsbConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final greylist-max-o ATTR_REMOTE_WAKEUP:I = 0x20

.field private static final greylist-max-o ATTR_SELF_POWERED:I = 0x40

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAttributes:I

.field private final greylist-max-o mId:I

.field private greylist-max-o mInterfaces:[Landroid/os/Parcelable;

.field private final greylist-max-o mMaxPower:I

.field private final greylist-max-o mName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 168
    new-instance v0, Landroid/hardware/usb/UsbConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;II)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # I
    .param p4, "maxPower"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    .line 65
    iput-object p2, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    .line 66
    iput p3, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    .line 67
    iput p4, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAttributes()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    return v0
.end method

.method public whitelist getInterface(I)Landroid/hardware/usb/UsbInterface;
    .registers 3
    .param p1, "index"    # I

    .line 144
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    aget-object v0, v0, p1

    check-cast v0, Landroid/hardware/usb/UsbInterface;

    return-object v0
.end method

.method public whitelist getInterfaceCount()I
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    array-length v0, v0

    return v0
.end method

.method public whitelist getMaxPower()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isRemoteWakeup()Z
    .registers 2

    .line 106
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isSelfPowered()Z
    .registers 2

    .line 96
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o setInterfaces([Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "interfaces"    # [Landroid/os/Parcelable;

    .line 152
    const-string v0, "interfaces"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    .line 153
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbConfiguration[mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mAttributes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mMaxPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mInterfaces=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_45
    iget-object v2, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    array-length v2, v2

    if-ge v1, v2, :cond_5d

    .line 161
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v2, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/os/Parcelable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 164
    .end local v1    # "i":I
    :cond_5d
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 192
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 197
    return-void
.end method
