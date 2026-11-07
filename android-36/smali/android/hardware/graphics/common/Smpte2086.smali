.class public Landroid/hardware/graphics/common/Smpte2086;
.super Ljava/lang/Object;
.source "Smpte2086.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/graphics/common/Smpte2086;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist maxLuminance:F

.field public blacklist minLuminance:F

.field public blacklist primaryBlue:Landroid/hardware/graphics/common/XyColor;

.field public blacklist primaryGreen:Landroid/hardware/graphics/common/XyColor;

.field public blacklist primaryRed:Landroid/hardware/graphics/common/XyColor;

.field public blacklist whitePoint:Landroid/hardware/graphics/common/XyColor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/hardware/graphics/common/Smpte2086$1;

    invoke-direct {v0}, Landroid/hardware/graphics/common/Smpte2086$1;-><init>()V

    sput-object v0, Landroid/hardware/graphics/common/Smpte2086;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/graphics/common/Smpte2086;->maxLuminance:F

    .line 18
    iput v0, p0, Landroid/hardware/graphics/common/Smpte2086;->minLuminance:F

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 84
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 85
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 87
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryRed:Landroid/hardware/graphics/common/XyColor;

    invoke-direct {p0, v1}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryGreen:Landroid/hardware/graphics/common/XyColor;

    invoke-direct {p0, v1}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryBlue:Landroid/hardware/graphics/common/XyColor;

    invoke-direct {p0, v1}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 79
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->whitePoint:Landroid/hardware/graphics/common/XyColor;

    invoke-direct {p0, v1}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 80
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 51
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_da

    .line 54
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 68
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_26
    :try_start_26
    sget-object v2, Landroid/hardware/graphics/common/XyColor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/graphics/common/XyColor;

    iput-object v2, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryRed:Landroid/hardware/graphics/common/XyColor;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 68
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_46
    :try_start_46
    sget-object v2, Landroid/hardware/graphics/common/XyColor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/graphics/common/XyColor;

    iput-object v2, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryGreen:Landroid/hardware/graphics/common/XyColor;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_66

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_60

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 68
    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_66
    :try_start_66
    sget-object v2, Landroid/hardware/graphics/common/XyColor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/graphics/common/XyColor;

    iput-object v2, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryBlue:Landroid/hardware/graphics/common/XyColor;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_86

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_80

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 68
    :cond_80
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_86
    :try_start_86
    sget-object v2, Landroid/hardware/graphics/common/XyColor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/graphics/common/XyColor;

    iput-object v2, p0, Landroid/hardware/graphics/common/Smpte2086;->whitePoint:Landroid/hardware/graphics/common/XyColor;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_94
    .catchall {:try_start_86 .. :try_end_94} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a6

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a0

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 68
    :cond_a0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_a6
    :try_start_a6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/graphics/common/Smpte2086;->maxLuminance:F

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b0
    .catchall {:try_start_a6 .. :try_end_b0} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c2

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_bc

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 68
    :cond_bc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_c2
    :try_start_c2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/graphics/common/Smpte2086;->minLuminance:F
    :try_end_c8
    .catchall {:try_start_c2 .. :try_end_c8} :catchall_d8

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d2

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    nop

    .line 72
    return-void

    .line 68
    :cond_d2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :catchall_d8
    move-exception v2

    goto :goto_e2

    .line 53
    :cond_da
    :try_start_da
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/graphics/common/Smpte2086;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_e2
    .catchall {:try_start_da .. :try_end_e2} :catchall_d8

    .line 67
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/graphics/common/Smpte2086;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_e2
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_eb

    .line 68
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_eb
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 36
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryRed:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 38
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryGreen:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 39
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryBlue:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 40
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->whitePoint:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 41
    iget v1, p0, Landroid/hardware/graphics/common/Smpte2086;->maxLuminance:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 42
    iget v1, p0, Landroid/hardware/graphics/common/Smpte2086;->minLuminance:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 44
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void
.end method
