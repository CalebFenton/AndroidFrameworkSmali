.class public Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
.super Ljava/lang/Object;
.source "ConcurrentCameraIdCombination.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConcurrentCameraIdDeviceIdPairs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination$1;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->mConcurrentCameraIdDeviceIdPairs:Ljava/util/Set;

    .line 52
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->readFromParcel(Landroid/os/Parcel;)V

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getConcurrentCameraIdCombination()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->mConcurrentCameraIdDeviceIdPairs:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    iget-object v0, p0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->mConcurrentCameraIdDeviceIdPairs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, "cameraCombinationSize":I
    if-ltz v0, :cond_32

    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_31

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "cameraId":Ljava/lang/String;
    if-eqz v2, :cond_29

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 85
    .local v3, "deviceId":I
    iget-object v4, p0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->mConcurrentCameraIdDeviceIdPairs:Ljava/util/Set;

    new-instance v5, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v3    # "deviceId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 82
    .restart local v2    # "cameraId":Ljava/lang/String;
    :cond_29
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to read camera id from Parcel"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    .end local v1    # "i":I
    .end local v2    # "cameraId":Ljava/lang/String;
    :cond_31
    return-void

    .line 76
    :cond_32
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cameraCombinationSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should not be negative"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    iget-object v0, p0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->mConcurrentCameraIdDeviceIdPairs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->mConcurrentCameraIdDeviceIdPairs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 64
    .local v1, "cameraIdDeviceIdPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    .end local v1    # "cameraIdDeviceIdPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_f

    .line 67
    :cond_2e
    return-void
.end method
