.class public final Landroid/hardware/input/InputDeviceIdentifier;
.super Ljava/lang/Object;
.source "InputDeviceIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/InputDeviceIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mDescriptor:Ljava/lang/String;

.field private final greylist-max-o mProductId:I

.field private final greylist-max-o mVendorId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier$1;

    invoke-direct {v0}, Landroid/hardware/input/InputDeviceIdentifier$1;-><init>()V

    sput-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/InputDeviceIdentifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    .line 41
    iput p2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    .line 42
    iput p3, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 78
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 79
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    instance-of v2, p1, Landroid/hardware/input/InputDeviceIdentifier;

    if-nez v2, :cond_c

    goto :goto_28

    .line 81
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 82
    .local v2, "that":Landroid/hardware/input/InputDeviceIdentifier;
    iget v3, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    iget v4, v2, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    if-ne v3, v4, :cond_26

    iget v3, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    iget v4, v2, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    .line 83
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    .line 82
    :goto_27
    return v0

    .line 79
    .end local v2    # "that":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_28
    :goto_28
    return v1
.end method

.method public greylist-max-o getDescriptor()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getProductId()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    return v0
.end method

.method public greylist-max-o getVendorId()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 88
    iget-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputDeviceIdentifier: vendorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 58
    iget-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method
