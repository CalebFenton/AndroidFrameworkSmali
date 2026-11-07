.class public final Landroid/media/audio/common/AudioPortExt;
.super Ljava/lang/Object;
.source "AudioPortExt.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioPortExt$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioPortExt;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist device:I = 0x1

.field public static final blacklist mix:I = 0x2

.field public static final blacklist session:I = 0x3

.field public static final blacklist unspecified:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Landroid/media/audio/common/AudioPortExt$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioPortExt$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioPortExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    .line 33
    iput-object p2, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioPortExt;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioPortExt-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPortExt;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 211
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 214
    return-void

    .line 212
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPortExt;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/AudioPortExt;->_tagString(I)Ljava/lang/String;

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

    .line 227
    iput p1, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    .line 228
    iput-object p2, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    .line 229
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 217
    packed-switch p1, :pswitch_data_28

    .line 223
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

    .line 221
    :pswitch_1c
    const-string v0, "session"

    return-object v0

    .line 220
    :pswitch_1f
    const-string v0, "mix"

    return-object v0

    .line 219
    :pswitch_22
    const-string v0, "device"

    return-object v0

    .line 218
    :pswitch_25
    const-string v0, "unspecified"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 177
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 178
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 179
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 181
    :cond_10
    return v0
.end method

.method public static blacklist device(Landroid/media/audio/common/AudioPortDeviceExt;)Landroid/media/audio/common/AudioPortExt;
    .registers 3
    .param p0, "_value"    # Landroid/media/audio/common/AudioPortDeviceExt;

    .line 58
    new-instance v0, Landroid/media/audio/common/AudioPortExt;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPortExt;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mix(Landroid/media/audio/common/AudioPortMixExt;)Landroid/media/audio/common/AudioPortExt;
    .registers 3
    .param p0, "_value"    # Landroid/media/audio/common/AudioPortMixExt;

    .line 73
    new-instance v0, Landroid/media/audio/common/AudioPortExt;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPortExt;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist session(I)Landroid/media/audio/common/AudioPortExt;
    .registers 4
    .param p0, "_value"    # I

    .line 88
    new-instance v0, Landroid/media/audio/common/AudioPortExt;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioPortExt;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist unspecified(Z)Landroid/media/audio/common/AudioPortExt;
    .registers 4
    .param p0, "_value"    # Z

    .line 43
    new-instance v0, Landroid/media/audio/common/AudioPortExt;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioPortExt;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    goto :goto_1d

    .line 171
    :pswitch_9
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getMix()Landroid/media/audio/common/AudioPortMixExt;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPortExt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1d

    .line 168
    :pswitch_13
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getDevice()Landroid/media/audio/common/AudioPortDeviceExt;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPortExt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 169
    nop

    .line 174
    :goto_1d
    return v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 196
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 197
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 198
    :cond_8
    instance-of v2, p1, Landroid/media/audio/common/AudioPortExt;

    if-nez v2, :cond_d

    return v1

    .line 199
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioPortExt;

    .line 200
    .local v2, "that":Landroid/media/audio/common/AudioPortExt;
    iget v3, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    iget v4, v2, Landroid/media/audio/common/AudioPortExt;->_tag:I

    if-eq v3, v4, :cond_17

    return v1

    .line 201
    :cond_17
    iget-object v3, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    return v1

    .line 202
    :cond_22
    return v0
.end method

.method public blacklist getDevice()Landroid/media/audio/common/AudioPortDeviceExt;
    .registers 2

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortExt;->_assertTag(I)V

    .line 63
    iget-object v0, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioPortDeviceExt;

    return-object v0
.end method

.method public blacklist getMix()Landroid/media/audio/common/AudioPortMixExt;
    .registers 2

    .line 77
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortExt;->_assertTag(I)V

    .line 78
    iget-object v0, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioPortMixExt;

    return-object v0
.end method

.method public blacklist getSession()I
    .registers 2

    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortExt;->_assertTag(I)V

    .line 93
    iget-object v0, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 37
    iget v0, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    return v0
.end method

.method public blacklist getUnspecified()Z
    .registers 2

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortExt;->_assertTag(I)V

    .line 48
    iget-object v0, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 207
    iget v0, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

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

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_50

    .line 160
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

    .line 156
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 157
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 158
    return-void

    .line 151
    .end local v1    # "_aidl_value":I
    :pswitch_2c
    sget-object v1, Landroid/media/audio/common/AudioPortMixExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioPortMixExt;

    .line 152
    .local v1, "_aidl_value":Landroid/media/audio/common/AudioPortMixExt;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 153
    return-void

    .line 146
    .end local v1    # "_aidl_value":Landroid/media/audio/common/AudioPortMixExt;
    :pswitch_38
    sget-object v1, Landroid/media/audio/common/AudioPortDeviceExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioPortDeviceExt;

    .line 147
    .local v1, "_aidl_value":Landroid/media/audio/common/AudioPortDeviceExt;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 148
    return-void

    .line 141
    .end local v1    # "_aidl_value":Landroid/media/audio/common/AudioPortDeviceExt;
    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 142
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 143
    return-void

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setDevice(Landroid/media/audio/common/AudioPortDeviceExt;)V
    .registers 3
    .param p1, "_value"    # Landroid/media/audio/common/AudioPortDeviceExt;

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public blacklist setMix(Landroid/media/audio/common/AudioPortMixExt;)V
    .registers 3
    .param p1, "_value"    # Landroid/media/audio/common/AudioPortMixExt;

    .line 82
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public blacklist setSession(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 97
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 98
    return-void
.end method

.method public blacklist setUnspecified(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 52
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 186
    iget v0, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_9a

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPortExt.session("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getSession()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :pswitch_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPortExt.mix("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getMix()Landroid/media/audio/common/AudioPortMixExt;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :pswitch_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPortExt.device("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getDevice()Landroid/media/audio/common/AudioPortDeviceExt;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :pswitch_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPortExt.unspecified("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getUnspecified()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_5e
        :pswitch_3e
        :pswitch_22
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 118
    iget v0, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    packed-switch v0, :pswitch_data_2c

    goto :goto_2b

    .line 130
    :pswitch_b
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getSession()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 127
    :pswitch_13
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getMix()Landroid/media/audio/common/AudioPortMixExt;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 128
    goto :goto_2b

    .line 124
    :pswitch_1b
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getDevice()Landroid/media/audio/common/AudioPortDeviceExt;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 125
    goto :goto_2b

    .line 121
    :pswitch_23
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getUnspecified()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    nop

    .line 133
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
