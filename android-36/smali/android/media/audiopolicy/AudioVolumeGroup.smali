.class public final Landroid/media/audiopolicy/AudioVolumeGroup;
.super Ljava/lang/Object;
.source "AudioVolumeGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_VOLUME_GROUP:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AudioVolumeGroup"

.field private static blacklist sAudioVolumeGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mAudioAttributes:[Landroid/media/AudioAttributes;

.field private blacklist mId:I

.field private blacklist mLegacyStreamTypes:[I

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->sLock:Ljava/lang/Object;

    .line 175
    new-instance v0, Landroid/media/audiopolicy/AudioVolumeGroup$1;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioVolumeGroup$1;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;I[Landroid/media/AudioAttributes;[I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "audioAttributes"    # [Landroid/media/AudioAttributes;
    .param p4, "legacyStreamTypes"    # [I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, "name must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "audioAttributes must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "legacyStreamTypes must not be null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    .line 106
    iput p2, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    .line 107
    iput-object p3, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 108
    iput-object p4, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    .line 109
    return-void
.end method

.method public static blacklist getAudioVolumeGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    .line 72
    sget-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->sAudioVolumeGroups:Ljava/util/List;

    if-nez v0, :cond_16

    .line 73
    sget-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_7
    sget-object v1, Landroid/media/audiopolicy/AudioVolumeGroup;->sAudioVolumeGroups:Ljava/util/List;

    if-nez v1, :cond_11

    .line 75
    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->initializeAudioVolumeGroups()Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/media/audiopolicy/AudioVolumeGroup;->sAudioVolumeGroups:Ljava/util/List;

    .line 77
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 79
    :cond_16
    :goto_16
    sget-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->sAudioVolumeGroups:Ljava/util/List;

    return-object v0
.end method

.method private static blacklist initializeAudioVolumeGroups()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "avgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    invoke-static {v0}, Landroid/media/audiopolicy/AudioVolumeGroup;->native_list_audio_volume_groups(Ljava/util/ArrayList;)I

    move-result v1

    .line 85
    .local v1, "status":I
    if-eqz v1, :cond_12

    .line 86
    const-string v2, "AudioVolumeGroup"

    const-string v3, ": listAudioVolumeGroups failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_12
    return-object v0
.end method

.method private static native blacklist native_list_audio_volume_groups(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;)I"
        }
    .end annotation
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 113
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 114
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 116
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 118
    .local v2, "thatAvg":Landroid/media/audiopolicy/AudioVolumeGroup;
    iget-object v3, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget v3, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    iget v4, v2, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 119
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 118
    :goto_31
    return v0

    .line 114
    .end local v2    # "thatAvg":Landroid/media/audiopolicy/AudioVolumeGroup;
    :cond_32
    :goto_32
    return v1
.end method

.method public whitelist getAudioAttributes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    return v0
.end method

.method public whitelist getLegacyStreamTypes()[I
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 124
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    iget v1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 125
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 124
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist name()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "\n Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, " Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget v1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, "\n     Supported Audio Attributes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_27
    if-ge v4, v2, :cond_3a

    aget-object v5, v1, v4

    .line 211
    .local v5, "attribute":Landroid/media/AudioAttributes;
    const-string v6, "\n       -"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v5}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .end local v5    # "attribute":Landroid/media/AudioAttributes;
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 214
    :cond_3a
    const-string v1, "\n     Supported Legacy Stream Types: { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    array-length v2, v1

    :goto_42
    if-ge v3, v2, :cond_55

    aget v4, v1, v3

    .line 216
    .local v4, "legacyStreamType":I
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .end local v4    # "legacyStreamType":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 219
    :cond_55
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 163
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_21

    aget-object v4, v0, v3

    .line 167
    .local v4, "attributes":Landroid/media/AudioAttributes;
    or-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 166
    .end local v4    # "attributes":Landroid/media/AudioAttributes;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 169
    :cond_21
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    array-length v1, v0

    :goto_2a
    if-ge v2, v1, :cond_34

    aget v3, v0, v2

    .line 171
    .local v3, "streamType":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    .end local v3    # "streamType":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 173
    :cond_34
    return-void
.end method
