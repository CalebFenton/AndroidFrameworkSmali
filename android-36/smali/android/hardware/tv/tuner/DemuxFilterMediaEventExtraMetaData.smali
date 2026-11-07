.class public final Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;
.super Ljava/lang/Object;
.source "DemuxFilterMediaEventExtraMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist audio:I = 0x1

.field public static final blacklist audioPresentations:I = 0x2

.field public static final blacklist noinit:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_tag:I

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_value:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_tag:I

    .line 32
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_value:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 168
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 171
    return-void

    .line 169
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 183
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_tag:I

    .line 184
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_value:Ljava/lang/Object;

    .line 185
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 174
    packed-switch p1, :pswitch_data_26

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_1c
    const-string v0, "audioPresentations"

    return-object v0

    .line 176
    :pswitch_1f
    const-string v0, "audio"

    return-object v0

    .line 175
    :pswitch_22
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist audio(Landroid/hardware/tv/tuner/AudioExtraMetaData;)Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/AudioExtraMetaData;

    .line 57
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist audioPresentations([Landroid/hardware/tv/tuner/AudioPresentation;)Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;
    .registers 3
    .param p0, "_value"    # [Landroid/hardware/tv/tuner/AudioPresentation;

    .line 72
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 153
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 154
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 157
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 156
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 159
    :cond_19
    return v1

    .line 161
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 162
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 164
    :cond_26
    return v0
.end method

.method public static blacklist noinit(Z)Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;
    .registers 4
    .param p0, "_value"    # Z

    .line 42
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    goto :goto_1d

    .line 147
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->getAudioPresentations()[Landroid/hardware/tv/tuner/AudioPresentation;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1d

    .line 144
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->getAudio()Landroid/hardware/tv/tuner/AudioExtraMetaData;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 145
    nop

    .line 150
    :goto_1d
    return v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getAudio()Landroid/hardware/tv/tuner/AudioExtraMetaData;
    .registers 2

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_assertTag(I)V

    .line 62
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/AudioExtraMetaData;

    return-object v0
.end method

.method public blacklist getAudioPresentations()[Landroid/hardware/tv/tuner/AudioPresentation;
    .registers 2

    .line 76
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_assertTag(I)V

    .line 77
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/AudioPresentation;

    return-object v0
.end method

.method public blacklist getNoinit()Z
    .registers 2

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_assertTag(I)V

    .line 47
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 36
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_44

    .line 136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :pswitch_20
    sget-object v1, Landroid/hardware/tv/tuner/AudioPresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/AudioPresentation;

    .line 133
    .local v1, "_aidl_value":[Landroid/hardware/tv/tuner/AudioPresentation;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_set(ILjava/lang/Object;)V

    .line 134
    return-void

    .line 127
    .end local v1    # "_aidl_value":[Landroid/hardware/tv/tuner/AudioPresentation;
    :pswitch_2c
    sget-object v1, Landroid/hardware/tv/tuner/AudioExtraMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/AudioExtraMetaData;

    .line 128
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/AudioExtraMetaData;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_set(ILjava/lang/Object;)V

    .line 129
    return-void

    .line 122
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/AudioExtraMetaData;
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 123
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_set(ILjava/lang/Object;)V

    .line 124
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setAudio(Landroid/hardware/tv/tuner/AudioExtraMetaData;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/AudioExtraMetaData;

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_set(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public blacklist setAudioPresentations([Landroid/hardware/tv/tuner/AudioPresentation;)V
    .registers 3
    .param p1, "_value"    # [Landroid/hardware/tv/tuner/AudioPresentation;

    .line 81
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_set(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public blacklist setNoinit(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 51
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_set(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 102
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->_tag:I

    packed-switch v0, :pswitch_data_24

    goto :goto_23

    .line 111
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->getAudioPresentations()[Landroid/hardware/tv/tuner/AudioPresentation;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_23

    .line 108
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->getAudio()Landroid/hardware/tv/tuner/AudioExtraMetaData;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 109
    goto :goto_23

    .line 105
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 106
    nop

    .line 114
    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
