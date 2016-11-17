.class public Landroid/hardware/usb/UsbConfiguration;
.super Ljava/lang/Object;
.source "UsbConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbConfiguration$1;
    }
.end annotation


# static fields
.field private static final ATTR_REMOTE_WAKEUP:I = 0x20

.field private static final ATTR_SELF_POWERED:I = 0x40

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributes:I

.field private final mId:I

.field private mInterfaces:[Landroid/os/Parcelable;

.field private final mMaxPower:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 154
    new-instance v0, Landroid/hardware/usb/UsbConfiguration$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/usb/UsbConfiguration$1;-><init>()V

    #@5
    .line 153
    sput-object v0, Landroid/hardware/usb/UsbConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # I
    .param p4, "maxPower"    # I

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput p1, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    #@5
    .line 61
    iput-object p2, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    #@7
    .line 62
    iput p3, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    #@9
    .line 63
    iput p4, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    #@b
    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 172
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 73
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    #@2
    return v0
.end method

.method public getInterface(I)Landroid/hardware/usb/UsbInterface;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    #@2
    aget-object v0, v0, p1

    #@4
    check-cast v0, Landroid/hardware/usb/UsbInterface;

    #@6
    return-object v0
.end method

.method public getInterfaceCount()I
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getMaxPower()I
    .locals 1

    #@0
    .prologue
    .line 111
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    #@2
    mul-int/lit8 v0, v0, 0x2

    #@4
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isRemoteWakeup()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 102
    iget v1, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    #@3
    and-int/lit8 v1, v1, 0x20

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isSelfPowered()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 92
    iget v1, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    #@3
    and-int/lit8 v1, v1, 0x40

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public setInterfaces([Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "interfaces"    # [Landroid/os/Parcelable;

    #@0
    .prologue
    .line 137
    iput-object p1, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    #@2
    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "UsbConfiguration[mId="

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    iget v3, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 143
    const-string/jumbo v3, ",mName="

    #@17
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 143
    iget-object v3, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    #@1d
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 143
    const-string/jumbo v3, ",mAttributes="

    #@24
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 143
    iget v3, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    #@2a
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 144
    const-string/jumbo v3, ",mMaxPower="

    #@31
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 144
    iget v3, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    #@37
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 144
    const-string/jumbo v3, ",mInterfaces=["

    #@3e
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@49
    .line 145
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@4a
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    #@4c
    array-length v2, v2

    #@4d
    if-ge v1, v2, :cond_0

    #@4f
    .line 146
    const-string/jumbo v2, "\n"

    #@52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 147
    iget-object v2, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    #@57
    aget-object v2, v2, v1

    #@59
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 145
    add-int/lit8 v1, v1, 0x1

    #@62
    goto :goto_0

    #@63
    .line 149
    :cond_0
    const-string/jumbo v2, "]"

    #@66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 176
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 177
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 178
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 179
    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 180
    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    #@1a
    .line 175
    return-void
.end method
