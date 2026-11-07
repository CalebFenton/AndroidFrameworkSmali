.class public Landroid/hardware/graphics/common/PlaneLayout;
.super Ljava/lang/Object;
.source "PlaneLayout.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/graphics/common/PlaneLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist components:[Landroid/hardware/graphics/common/PlaneLayoutComponent;

.field public blacklist heightInSamples:J

.field public blacklist horizontalSubsampling:J

.field public blacklist offsetInBytes:J

.field public blacklist sampleIncrementInBits:J

.field public blacklist strideInBytes:J

.field public blacklist totalSizeInBytes:J

.field public blacklist verticalSubsampling:J

.field public blacklist widthInSamples:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Landroid/hardware/graphics/common/PlaneLayout$1;

    invoke-direct {v0}, Landroid/hardware/graphics/common/PlaneLayout$1;-><init>()V

    sput-object v0, Landroid/hardware/graphics/common/PlaneLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->offsetInBytes:J

    .line 15
    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->sampleIncrementInBits:J

    .line 16
    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->strideInBytes:J

    .line 17
    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->widthInSamples:J

    .line 18
    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->heightInSamples:J

    .line 19
    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->totalSizeInBytes:J

    .line 20
    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->horizontalSubsampling:J

    .line 21
    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->verticalSubsampling:J

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 92
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 93
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 96
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/graphics/common/PlaneLayout;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 95
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 98
    :cond_19
    return v1

    .line 100
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 101
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 103
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->components:[Landroid/hardware/graphics/common/PlaneLayoutComponent;

    invoke-direct {p0, v1}, Landroid/hardware/graphics/common/PlaneLayout;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 89
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 57
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_122

    .line 60
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 80
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_26
    :try_start_26
    sget-object v2, Landroid/hardware/graphics/common/PlaneLayoutComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/graphics/common/PlaneLayoutComponent;

    iput-object v2, p0, Landroid/hardware/graphics/common/PlaneLayout;->components:[Landroid/hardware/graphics/common/PlaneLayoutComponent;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 80
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->offsetInBytes:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 80
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->sampleIncrementInBits:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 80
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->strideInBytes:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 80
    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->widthInSamples:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b6

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b0

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 80
    :cond_b0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_b6
    :try_start_b6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->heightInSamples:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d2

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cc

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 80
    :cond_cc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->totalSizeInBytes:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 80
    :cond_e8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->horizontalSubsampling:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 80
    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_10a
    :try_start_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->verticalSubsampling:J
    :try_end_110
    .catchall {:try_start_10a .. :try_end_110} :catchall_120

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11a

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    nop

    .line 84
    return-void

    .line 80
    :cond_11a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :catchall_120
    move-exception v2

    goto :goto_12a

    .line 59
    :cond_122
    :try_start_122
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/graphics/common/PlaneLayout;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_12a
    .catchall {:try_start_122 .. :try_end_12a} :catchall_120

    .line 79
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/graphics/common/PlaneLayout;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_12a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_133

    .line 80
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_133
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 39
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->components:[Landroid/hardware/graphics/common/PlaneLayoutComponent;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 41
    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->offsetInBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->sampleIncrementInBits:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->strideInBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->widthInSamples:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->heightInSamples:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->totalSizeInBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->horizontalSubsampling:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->verticalSubsampling:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 50
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void
.end method
