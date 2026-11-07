.class public final Landroid/bluetooth/BluetoothLeAudioCodecStatus;
.super Ljava/lang/Object;
.source "BluetoothLeAudioCodecStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeAudioCodecStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_LE_AUDIO_CODEC_STATUS:Ljava/lang/String; = "android.bluetooth.extra.LE_AUDIO_CODEC_STATUS"


# instance fields
.field private final blacklist mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

.field private final blacklist mInputCodecsLocalCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInputCodecsSelectableCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

.field private final blacklist mOutputCodecsLocalCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutputCodecsSelectableCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 243
    new-instance v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeAudioCodecStatus$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "inputCodecConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .param p2, "outputCodecConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p3, "inputCodecsLocalCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeAudioCodecConfig;>;"
    .local p4, "outputCodecsLocalCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeAudioCodecConfig;>;"
    .local p5, "inputCodecsSelectableCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeAudioCodecConfig;>;"
    .local p6, "outputCodecsSelectableCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeAudioCodecConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 68
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 69
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    .line 70
    iput-object p4, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    .line 71
    iput-object p5, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    .line 72
    iput-object p6, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    .line 73
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 77
    sget-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 78
    sget-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    .line 80
    sget-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    .line 82
    sget-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    .line 84
    sget-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    .line 86
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothLeAudioCodecStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist isCodecConfigSelectable(Landroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;)Z
    .registers 5
    .param p0, "codecConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .param p1, "selectableConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 133
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    move-result v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 134
    return v2

    .line 136
    :cond_c
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getFrameDuration()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 137
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getFrameDuration()I

    move-result v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getFrameDuration()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_1e

    .line 138
    return v2

    .line 140
    :cond_1e
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getChannelCount()I

    move-result v0

    if-eqz v0, :cond_30

    .line 141
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getChannelCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getChannelCount()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_30

    .line 142
    return v2

    .line 144
    :cond_30
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getSampleRate()I

    move-result v0

    if-eqz v0, :cond_42

    .line 145
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getSampleRate()I

    move-result v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getSampleRate()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_42

    .line 146
    return v2

    .line 148
    :cond_42
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getBitsPerSample()I

    move-result v0

    if-eqz v0, :cond_54

    .line 149
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getBitsPerSample()I

    move-result v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getBitsPerSample()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_54

    .line 150
    return v2

    .line 152
    :cond_54
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getOctetsPerFrame()I

    move-result v0

    if-eqz v0, :cond_6f

    .line 153
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getOctetsPerFrame()I

    move-result v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMinOctetsPerFrame()I

    move-result v1

    if-lt v0, v1, :cond_6e

    .line 154
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getOctetsPerFrame()I

    move-result v0

    .line 155
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMaxOctetsPerFrame()I

    move-result v1

    if-le v0, v1, :cond_6f

    .line 156
    :cond_6e
    return v2

    .line 158
    :cond_6f
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist sameCapabilities(Ljava/util/List;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;)Z"
        }
    .end annotation

    .line 119
    .local p0, "c1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeAudioCodecConfig;>;"
    .local p1, "c2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeAudioCodecConfig;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_7

    .line 120
    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    .line 122
    :cond_7
    if-nez p1, :cond_a

    .line 123
    return v0

    .line 125
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 126
    return v0

    .line 128
    :cond_15
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 90
    instance-of v0, p1, Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 91
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    .line 92
    .local v0, "other":Landroid/bluetooth/BluetoothLeAudioCodecStatus;
    iget-object v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 93
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    .line 94
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    .line 96
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    .line 98
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    .line 101
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v1, 0x1

    goto :goto_47

    :cond_46
    nop

    .line 92
    :goto_47
    return v1

    .line 105
    .end local v0    # "other":Landroid/bluetooth/BluetoothLeAudioCodecStatus;
    :cond_48
    return v1
.end method

.method public whitelist getInputCodecConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .registers 2

    .line 276
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    return-object v0
.end method

.method public whitelist getInputCodecLocalCapabilities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    if-nez v0, :cond_9

    .line 295
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    .line 296
    :cond_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    .line 294
    :goto_b
    return-object v0
.end method

.method public whitelist getInputCodecSelectableCapabilities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    if-nez v0, :cond_9

    .line 318
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    .line 319
    :cond_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    .line 317
    :goto_b
    return-object v0
.end method

.method public whitelist getOutputCodecConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .registers 2

    .line 285
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    return-object v0
.end method

.method public whitelist getOutputCodecLocalCapabilities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    if-nez v0, :cond_9

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    .line 307
    :cond_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    .line 305
    :goto_b
    return-object v0
.end method

.method public whitelist getOutputCodecSelectableCapabilities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    if-nez v0, :cond_9

    .line 330
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    .line 331
    :cond_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    .line 329
    :goto_b
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 203
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    iget-object v5, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isInputCodecConfigSelectable(Landroid/bluetooth/BluetoothLeAudioCodecConfig;)Z
    .registers 6
    .param p1, "codecConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 169
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 170
    return v0

    .line 172
    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 173
    .local v2, "selectableConfig":Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    invoke-static {p1, v2}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->isCodecConfigSelectable(Landroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 174
    const/4 v0, 0x1

    return v0

    .line 176
    .end local v2    # "selectableConfig":Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    :cond_1e
    goto :goto_a

    .line 177
    :cond_1f
    return v0
.end method

.method public whitelist isOutputCodecConfigSelectable(Landroid/bluetooth/BluetoothLeAudioCodecConfig;)Z
    .registers 6
    .param p1, "codecConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 189
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 190
    return v0

    .line 192
    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 193
    .local v2, "selectableConfig":Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    invoke-static {p1, v2}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->isCodecConfigSelectable(Landroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 194
    const/4 v0, 0x1

    return v0

    .line 196
    .end local v2    # "selectableConfig":Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    :cond_1e
    goto :goto_a

    .line 197
    :cond_1f
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mInputCodecConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOutputCodecConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mInputCodecsLocalCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOutputCodecsLocalCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mInputCodecsSelectableCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOutputCodecsSelectableCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 262
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 263
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 264
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 265
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 266
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 267
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 268
    return-void
.end method
