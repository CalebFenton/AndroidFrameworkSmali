.class public Landroid/hardware/power/CompositionData;
.super Ljava/lang/Object;
.source "CompositionData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/power/CompositionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist latchTimestampNanos:J

.field public blacklist outputIds:[J

.field public blacklist producers:[Landroid/hardware/power/FrameProducer;

.field public blacklist scheduledPresentTimestampsNanos:[J

.field public blacklist timestampNanos:J

.field public blacklist updateData:Landroid/hardware/power/CompositionUpdate;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/hardware/power/CompositionData$1;

    invoke-direct {v0}, Landroid/hardware/power/CompositionData$1;-><init>()V

    sput-object v0, Landroid/hardware/power/CompositionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/power/CompositionData;->timestampNanos:J

    .line 14
    iput-wide v0, p0, Landroid/hardware/power/CompositionData;->latchTimestampNanos:J

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 81
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 84
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/power/CompositionData;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 83
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 86
    :cond_19
    return v1

    .line 88
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 89
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 91
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/power/CompositionData;->producers:[Landroid/hardware/power/FrameProducer;

    invoke-direct {p0, v1}, Landroid/hardware/power/CompositionData;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 76
    iget-object v1, p0, Landroid/hardware/power/CompositionData;->updateData:Landroid/hardware/power/CompositionUpdate;

    invoke-direct {p0, v1}, Landroid/hardware/power/CompositionData;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 77
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 50
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_d2

    .line 53
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 67
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/power/CompositionData;->timestampNanos:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_d0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 67
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/power/CompositionData;->scheduledPresentTimestampsNanos:[J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_d0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 67
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/power/CompositionData;->latchTimestampNanos:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_d0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 67
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_7a
    :try_start_7a
    sget-object v2, Landroid/hardware/power/FrameProducer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/power/FrameProducer;

    iput-object v2, p0, Landroid/hardware/power/CompositionData;->producers:[Landroid/hardware/power/FrameProducer;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7a .. :try_end_88} :catchall_d0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 67
    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_9a
    :try_start_9a
    sget-object v2, Landroid/hardware/power/CompositionUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/power/CompositionUpdate;

    iput-object v2, p0, Landroid/hardware/power/CompositionData;->updateData:Landroid/hardware/power/CompositionUpdate;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a8
    .catchall {:try_start_9a .. :try_end_a8} :catchall_d0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ba

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b4

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 67
    :cond_b4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_ba
    :try_start_ba
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/power/CompositionData;->outputIds:[J
    :try_end_c0
    .catchall {:try_start_ba .. :try_end_c0} :catchall_d0

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ca

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    nop

    .line 71
    return-void

    .line 67
    :cond_ca
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :catchall_d0
    move-exception v2

    goto :goto_da

    .line 52
    :cond_d2
    :try_start_d2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/power/CompositionData;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_da
    .catchall {:try_start_d2 .. :try_end_da} :catchall_d0

    .line 66
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/power/CompositionData;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_da
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_e3

    .line 67
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_e3
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 35
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-wide v1, p0, Landroid/hardware/power/CompositionData;->timestampNanos:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget-object v1, p0, Landroid/hardware/power/CompositionData;->scheduledPresentTimestampsNanos:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 38
    iget-wide v1, p0, Landroid/hardware/power/CompositionData;->latchTimestampNanos:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-object v1, p0, Landroid/hardware/power/CompositionData;->producers:[Landroid/hardware/power/FrameProducer;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 40
    iget-object v1, p0, Landroid/hardware/power/CompositionData;->updateData:Landroid/hardware/power/CompositionUpdate;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 41
    iget-object v1, p0, Landroid/hardware/power/CompositionData;->outputIds:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 43
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void
.end method
