.class public Landroid/media/audio/common/AudioHalEngineConfig;
.super Ljava/lang/Object;
.source "AudioHalEngineConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalEngineConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist capSpecificConfig:Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;

.field public blacklist defaultProductStrategyId:I

.field public blacklist productStrategies:[Landroid/media/audio/common/AudioHalProductStrategy;

.field public blacklist volumeGroups:[Landroid/media/audio/common/AudioHalVolumeGroup;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Landroid/media/audio/common/AudioHalEngineConfig$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalEngineConfig$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalEngineConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/audio/common/AudioHalEngineConfig;->defaultProductStrategyId:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 101
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 104
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/media/audio/common/AudioHalEngineConfig;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 103
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 106
    :cond_19
    return v1

    .line 108
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 109
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 111
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig;->productStrategies:[Landroid/media/audio/common/AudioHalProductStrategy;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalEngineConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 95
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig;->volumeGroups:[Landroid/media/audio/common/AudioHalVolumeGroup;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalEngineConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 96
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig;->capSpecificConfig:Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalEngineConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 97
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 77
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 78
    :cond_8
    instance-of v2, p1, Landroid/media/audio/common/AudioHalEngineConfig;

    if-nez v2, :cond_d

    return v1

    .line 79
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioHalEngineConfig;

    .line 80
    .local v2, "that":Landroid/media/audio/common/AudioHalEngineConfig;
    iget v3, p0, Landroid/media/audio/common/AudioHalEngineConfig;->defaultProductStrategyId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/media/audio/common/AudioHalEngineConfig;->defaultProductStrategyId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 81
    :cond_23
    iget-object v3, p0, Landroid/media/audio/common/AudioHalEngineConfig;->productStrategies:[Landroid/media/audio/common/AudioHalProductStrategy;

    iget-object v4, v2, Landroid/media/audio/common/AudioHalEngineConfig;->productStrategies:[Landroid/media/audio/common/AudioHalProductStrategy;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v1

    .line 82
    :cond_2e
    iget-object v3, p0, Landroid/media/audio/common/AudioHalEngineConfig;->volumeGroups:[Landroid/media/audio/common/AudioHalVolumeGroup;

    iget-object v4, v2, Landroid/media/audio/common/AudioHalEngineConfig;->volumeGroups:[Landroid/media/audio/common/AudioHalVolumeGroup;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    return v1

    .line 83
    :cond_39
    iget-object v3, p0, Landroid/media/audio/common/AudioHalEngineConfig;->capSpecificConfig:Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;

    iget-object v4, v2, Landroid/media/audio/common/AudioHalEngineConfig;->capSpecificConfig:Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    return v1

    .line 84
    :cond_44
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 89
    iget v0, p0, Landroid/media/audio/common/AudioHalEngineConfig;->defaultProductStrategyId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig;->productStrategies:[Landroid/media/audio/common/AudioHalProductStrategy;

    iget-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig;->volumeGroups:[Landroid/media/audio/common/AudioHalVolumeGroup;

    iget-object v3, p0, Landroid/media/audio/common/AudioHalEngineConfig;->capSpecificConfig:Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 47
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 49
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_9e

    .line 50
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_9c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 60
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/audio/common/AudioHalEngineConfig;->defaultProductStrategyId:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_9c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 60
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_42
    :try_start_42
    sget-object v2, Landroid/media/audio/common/AudioHalProductStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioHalProductStrategy;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig;->productStrategies:[Landroid/media/audio/common/AudioHalProductStrategy;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_9c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 60
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_62
    :try_start_62
    sget-object v2, Landroid/media/audio/common/AudioHalVolumeGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioHalVolumeGroup;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig;->volumeGroups:[Landroid/media/audio/common/AudioHalVolumeGroup;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_9c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 60
    :cond_7c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_82
    :try_start_82
    sget-object v2, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig;->capSpecificConfig:Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_9c

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_96

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    nop

    .line 64
    return-void

    .line 60
    :cond_96
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :catchall_9c
    move-exception v2

    goto :goto_a6

    .line 49
    :cond_9e
    :try_start_9e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/audio/common/AudioHalEngineConfig;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_9c

    .line 59
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/audio/common/AudioHalEngineConfig;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_a6
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_af

    .line 60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_af
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 67
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 68
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultProductStrategyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioHalEngineConfig;->defaultProductStrategyId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "productStrategies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig;->productStrategies:[Landroid/media/audio/common/AudioHalProductStrategy;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volumeGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig;->volumeGroups:[Landroid/media/audio/common/AudioHalVolumeGroup;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capSpecificConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig;->capSpecificConfig:Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioHalEngineConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 34
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v1, p0, Landroid/media/audio/common/AudioHalEngineConfig;->defaultProductStrategyId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig;->productStrategies:[Landroid/media/audio/common/AudioHalProductStrategy;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 37
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig;->volumeGroups:[Landroid/media/audio/common/AudioHalVolumeGroup;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 38
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig;->capSpecificConfig:Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 40
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    return-void
.end method
