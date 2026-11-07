.class public final Landroid/bluetooth/BluetoothCodecStatus;
.super Ljava/lang/Object;
.source "BluetoothCodecStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothCodecStatus$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothCodecStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_CODEC_STATUS:Ljava/lang/String; = "android.bluetooth.extra.CODEC_STATUS"


# instance fields
.field private final blacklist mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

.field private final blacklist mCodecsLocalCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCodecsSelectableCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 166
    new-instance v0, Landroid/bluetooth/BluetoothCodecStatus$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecStatus$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothCodecConfig;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p1, "codecConfig"    # Landroid/bluetooth/BluetoothCodecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p2, "codecsLocalCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    .local p3, "codecsSelectableCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 55
    iput-object p2, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    .line 56
    iput-object p3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    .line 57
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothCodecConfig;

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 61
    sget-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    .line 62
    sget-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothCodecStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothCodecStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist sameCapabilities(Ljava/util/List;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;)Z"
        }
    .end annotation

    .line 87
    .local p0, "c1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    .local p1, "c2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_7

    .line 88
    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    .line 90
    :cond_7
    if-nez p1, :cond_a

    .line 91
    return v0

    .line 93
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 94
    return v0

    .line 96
    :cond_15
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 67
    instance-of v0, p1, Landroid/bluetooth/BluetoothCodecStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 68
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothCodecStatus;

    .line 69
    .local v0, "other":Landroid/bluetooth/BluetoothCodecStatus;
    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    .line 70
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    .line 71
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 69
    :goto_29
    return v1

    .line 74
    .end local v0    # "other":Landroid/bluetooth/BluetoothCodecStatus;
    :cond_2a
    return v1
.end method

.method public whitelist getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;
    .registers 2

    .line 192
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    return-object v0
.end method

.method public whitelist getCodecsLocalCapabilities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    if-nez v0, :cond_9

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    .line 199
    :cond_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    .line 197
    :goto_b
    return-object v0
.end method

.method public whitelist getCodecsSelectableCapabilities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    if-nez v0, :cond_9

    .line 205
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    .line 206
    :cond_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    .line 204
    :goto_b
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 140
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    iget-object v2, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isCodecConfigSelectable(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .registers 9
    .param p1, "codecConfig"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 107
    const/4 v0, 0x0

    if-eqz p1, :cond_60

    .line 108
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleSampleRate()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 109
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBitsPerSample()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 110
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleChannelMode()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_60

    .line 113
    :cond_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothCodecConfig;

    .line 114
    .local v2, "selectableConfig":Landroid/bluetooth/BluetoothCodecConfig;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v4

    if-eq v3, v4, :cond_33

    .line 115
    goto :goto_1c

    .line 117
    :cond_33
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v3

    .line 118
    .local v3, "sampleRate":I
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v4

    and-int/2addr v4, v3

    if-nez v4, :cond_41

    if-eqz v3, :cond_41

    .line 120
    goto :goto_1c

    .line 122
    :cond_41
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v4

    .line 123
    .local v4, "bitsPerSample":I
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v5

    and-int/2addr v5, v4

    if-nez v5, :cond_4f

    if-eqz v4, :cond_4f

    .line 125
    goto :goto_1c

    .line 127
    :cond_4f
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v5

    .line 128
    .local v5, "channelMode":I
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v6

    and-int/2addr v6, v5

    if-nez v6, :cond_5d

    if-eqz v5, :cond_5d

    .line 130
    goto :goto_1c

    .line 132
    :cond_5d
    const/4 v0, 0x1

    return v0

    .line 134
    .end local v2    # "selectableConfig":Landroid/bluetooth/BluetoothCodecConfig;
    .end local v3    # "sampleRate":I
    .end local v4    # "bitsPerSample":I
    .end local v5    # "channelMode":I
    :cond_5f
    return v0

    .line 111
    :cond_60
    :goto_60
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mCodecConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecsLocalCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecsSelectableCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

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
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 185
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 186
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 187
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 188
    return-void
.end method
