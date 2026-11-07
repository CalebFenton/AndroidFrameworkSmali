.class public final Landroid/media/audio/common/AudioPortMixExtUseCase;
.super Ljava/lang/Object;
.source "AudioPortMixExtUseCase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioPortMixExtUseCase$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioPortMixExtUseCase;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist source:I = 0x2

.field public static final blacklist stream:I = 0x1

.field public static final blacklist unspecified:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Landroid/media/audio/common/AudioPortMixExtUseCase$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioPortMixExtUseCase$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioPortMixExtUseCase;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v1, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

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
    iput p1, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    .line 32
    iput-object p2, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioPortMixExtUseCase;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioPortMixExtUseCase-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPortMixExtUseCase;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 173
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 176
    return-void

    .line 174
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tagString(I)Ljava/lang/String;

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

    .line 188
    iput p1, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    .line 189
    iput-object p2, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    .line 190
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 179
    packed-switch p1, :pswitch_data_26

    .line 184
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

    .line 182
    :pswitch_1c
    const-string v0, "source"

    return-object v0

    .line 181
    :pswitch_1f
    const-string v0, "stream"

    return-object v0

    .line 180
    :pswitch_22
    const-string v0, "unspecified"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist source(I)Landroid/media/audio/common/AudioPortMixExtUseCase;
    .registers 4
    .param p0, "_value"    # I

    .line 72
    new-instance v0, Landroid/media/audio/common/AudioPortMixExtUseCase;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioPortMixExtUseCase;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist stream(I)Landroid/media/audio/common/AudioPortMixExtUseCase;
    .registers 4
    .param p0, "_value"    # I

    .line 57
    new-instance v0, Landroid/media/audio/common/AudioPortMixExtUseCase;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioPortMixExtUseCase;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist unspecified(Z)Landroid/media/audio/common/AudioPortMixExtUseCase;
    .registers 4
    .param p0, "_value"    # Z

    .line 42
    new-instance v0, Landroid/media/audio/common/AudioPortMixExtUseCase;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioPortMixExtUseCase;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getTag()I

    .line 144
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 158
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 159
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 160
    :cond_8
    instance-of v2, p1, Landroid/media/audio/common/AudioPortMixExtUseCase;

    if-nez v2, :cond_d

    return v1

    .line 161
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioPortMixExtUseCase;

    .line 162
    .local v2, "that":Landroid/media/audio/common/AudioPortMixExtUseCase;
    iget v3, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    iget v4, v2, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    if-eq v3, v4, :cond_17

    return v1

    .line 163
    :cond_17
    iget-object v3, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    return v1

    .line 164
    :cond_22
    return v0
.end method

.method public blacklist getSource()I
    .registers 2

    .line 76
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_assertTag(I)V

    .line 77
    iget-object v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStream()I
    .registers 2

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_assertTag(I)V

    .line 62
    iget-object v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 36
    iget v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    return v0
.end method

.method public blacklist getUnspecified()Z
    .registers 2

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_assertTag(I)V

    .line 47
    iget-object v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 169
    iget v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_set(ILjava/lang/Object;)V

    .line 134
    return-void

    .line 127
    .end local v1    # "_aidl_value":I
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_set(ILjava/lang/Object;)V

    .line 129
    return-void

    .line 122
    .end local v1    # "_aidl_value":I
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 123
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_set(ILjava/lang/Object;)V

    .line 124
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setSource(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 81
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_set(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public blacklist setStream(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 66
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_set(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public blacklist setUnspecified(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 51
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_set(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 149
    iget v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_76

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPortMixExtUseCase.source("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getSource()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 151
    :pswitch_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPortMixExtUseCase.stream("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getStream()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :pswitch_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPortMixExtUseCase.unspecified("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getUnspecified()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_3e
        :pswitch_22
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 102
    iget v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    packed-switch v0, :pswitch_data_24

    goto :goto_23

    .line 111
    :pswitch_b
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getSource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 108
    :pswitch_13
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getStream()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    goto :goto_23

    .line 105
    :pswitch_1b
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getUnspecified()Z

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
