.class public final Landroid/hardware/input/InputDeviceIdentifier;
.super Ljava/lang/Object;
.source "InputDeviceIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputDeviceIdentifier$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/input/InputDeviceIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDescriptor:Ljava/lang/String;

.field private final mProductId:I

.field private final mVendorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 87
    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/input/InputDeviceIdentifier$1;-><init>()V

    #@5
    .line 86
    sput-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    #@9
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    #@f
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    #@15
    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    #@5
    .line 37
    iput p2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    #@7
    .line 38
    iput p3, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    #@9
    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 73
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 74
    :cond_0
    if-eqz p1, :cond_2

    #@7
    instance-of v2, p1, Landroid/hardware/input/InputDeviceIdentifier;

    #@9
    if-eqz v2, :cond_2

    #@b
    move-object v0, p1

    #@c
    .line 76
    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    #@e
    .line 77
    .local v0, "that":Landroid/hardware/input/InputDeviceIdentifier;
    iget v2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    #@10
    iget v3, v0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    #@12
    if-ne v2, v3, :cond_1

    #@14
    iget v2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    #@16
    iget v3, v0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    #@18
    if-ne v2, v3, :cond_1

    #@1a
    .line 78
    iget-object v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    #@1c
    iget-object v2, v0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    #@1e
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@21
    move-result v1

    #@22
    .line 77
    :cond_1
    return v1

    #@23
    .line 74
    .end local v0    # "that":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_2
    return v1
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProductId()I
    .locals 1

    #@0
    .prologue
    .line 68
    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    #@2
    return v0
.end method

.method public getVendorId()I
    .locals 1

    #@0
    .prologue
    .line 64
    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 83
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    iget v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 55
    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 56
    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 53
    return-void
.end method
