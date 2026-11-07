.class public final Landroid/media/audio/common/AudioChannelLayout;
.super Ljava/lang/Object;
.source "AudioChannelLayout.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioChannelLayout$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CHANNEL_BACK_CENTER:I = 0x100

.field public static final blacklist CHANNEL_BACK_LEFT:I = 0x10

.field public static final blacklist CHANNEL_BACK_RIGHT:I = 0x20

.field public static final blacklist CHANNEL_BOTTOM_FRONT_CENTER:I = 0x200000

.field public static final blacklist CHANNEL_BOTTOM_FRONT_LEFT:I = 0x100000

.field public static final blacklist CHANNEL_BOTTOM_FRONT_RIGHT:I = 0x400000

.field public static final blacklist CHANNEL_FRONT_CENTER:I = 0x4

.field public static final blacklist CHANNEL_FRONT_LEFT:I = 0x1

.field public static final blacklist CHANNEL_FRONT_LEFT_OF_CENTER:I = 0x40

.field public static final blacklist CHANNEL_FRONT_RIGHT:I = 0x2

.field public static final blacklist CHANNEL_FRONT_RIGHT_OF_CENTER:I = 0x80

.field public static final blacklist CHANNEL_FRONT_WIDE_LEFT:I = 0x1000000

.field public static final blacklist CHANNEL_FRONT_WIDE_RIGHT:I = 0x2000000

.field public static final blacklist CHANNEL_HAPTIC_A:I = 0x40000000

.field public static final blacklist CHANNEL_HAPTIC_B:I = 0x20000000

.field public static final blacklist CHANNEL_LOW_FREQUENCY:I = 0x8

.field public static final blacklist CHANNEL_LOW_FREQUENCY_2:I = 0x800000

.field public static final blacklist CHANNEL_SIDE_LEFT:I = 0x200

.field public static final blacklist CHANNEL_SIDE_RIGHT:I = 0x400

.field public static final blacklist CHANNEL_TOP_BACK_CENTER:I = 0x10000

.field public static final blacklist CHANNEL_TOP_BACK_LEFT:I = 0x8000

.field public static final blacklist CHANNEL_TOP_BACK_RIGHT:I = 0x20000

.field public static final blacklist CHANNEL_TOP_CENTER:I = 0x800

.field public static final blacklist CHANNEL_TOP_FRONT_CENTER:I = 0x2000

.field public static final blacklist CHANNEL_TOP_FRONT_LEFT:I = 0x1000

.field public static final blacklist CHANNEL_TOP_FRONT_RIGHT:I = 0x4000

.field public static final blacklist CHANNEL_TOP_SIDE_LEFT:I = 0x40000

.field public static final blacklist CHANNEL_TOP_SIDE_RIGHT:I = 0x80000

.field public static final blacklist CHANNEL_VOICE_DNLINK:I = 0x8000

.field public static final blacklist CHANNEL_VOICE_UPLINK:I = 0x4000

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioChannelLayout;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INDEX_MASK_1:I = 0x1

.field public static final blacklist INDEX_MASK_10:I = 0x3ff

.field public static final blacklist INDEX_MASK_11:I = 0x7ff

.field public static final blacklist INDEX_MASK_12:I = 0xfff

.field public static final blacklist INDEX_MASK_13:I = 0x1fff

.field public static final blacklist INDEX_MASK_14:I = 0x3fff

.field public static final blacklist INDEX_MASK_15:I = 0x7fff

.field public static final blacklist INDEX_MASK_16:I = 0xffff

.field public static final blacklist INDEX_MASK_17:I = 0x1ffff

.field public static final blacklist INDEX_MASK_18:I = 0x3ffff

.field public static final blacklist INDEX_MASK_19:I = 0x7ffff

.field public static final blacklist INDEX_MASK_2:I = 0x3

.field public static final blacklist INDEX_MASK_20:I = 0xfffff

.field public static final blacklist INDEX_MASK_21:I = 0x1fffff

.field public static final blacklist INDEX_MASK_22:I = 0x3fffff

.field public static final blacklist INDEX_MASK_23:I = 0x7fffff

.field public static final blacklist INDEX_MASK_24:I = 0xffffff

.field public static final blacklist INDEX_MASK_3:I = 0x7

.field public static final blacklist INDEX_MASK_4:I = 0xf

.field public static final blacklist INDEX_MASK_5:I = 0x1f

.field public static final blacklist INDEX_MASK_6:I = 0x3f

.field public static final blacklist INDEX_MASK_7:I = 0x7f

.field public static final blacklist INDEX_MASK_8:I = 0xff

.field public static final blacklist INDEX_MASK_9:I = 0x1ff

.field public static final blacklist INTERLEAVE_LEFT:I = 0x0

.field public static final blacklist INTERLEAVE_RIGHT:I = 0x1

.field public static final blacklist LAYOUT_13POINT0:I = 0x72f607

.field public static final blacklist LAYOUT_13POINT_360RA:I = 0x72f607

.field public static final blacklist LAYOUT_22POINT2:I = 0xffffff

.field public static final blacklist LAYOUT_2POINT0POINT2:I = 0xc0003

.field public static final blacklist LAYOUT_2POINT1:I = 0xb

.field public static final blacklist LAYOUT_2POINT1POINT2:I = 0xc000b

.field public static final blacklist LAYOUT_3POINT0POINT2:I = 0xc0007

.field public static final blacklist LAYOUT_3POINT1:I = 0xf

.field public static final blacklist LAYOUT_3POINT1POINT2:I = 0xc000f

.field public static final blacklist LAYOUT_5POINT1:I = 0x3f

.field public static final blacklist LAYOUT_5POINT1POINT2:I = 0xc003f

.field public static final blacklist LAYOUT_5POINT1POINT4:I = 0x2d03f

.field public static final blacklist LAYOUT_5POINT1_SIDE:I = 0x60f

.field public static final blacklist LAYOUT_6POINT1:I = 0x13f

.field public static final blacklist LAYOUT_7POINT1:I = 0x63f

.field public static final blacklist LAYOUT_7POINT1POINT2:I = 0xc063f

.field public static final blacklist LAYOUT_7POINT1POINT4:I = 0x2d63f

.field public static final blacklist LAYOUT_9POINT1POINT4:I = 0x302d63f

.field public static final blacklist LAYOUT_9POINT1POINT6:I = 0x30ed63f

.field public static final blacklist LAYOUT_FRONT_BACK:I = 0x104

.field public static final blacklist LAYOUT_HAPTIC_AB:I = 0x60000000

.field public static final blacklist LAYOUT_MONO:I = 0x1

.field public static final blacklist LAYOUT_MONO_HAPTIC_A:I = 0x40000001

.field public static final blacklist LAYOUT_MONO_HAPTIC_AB:I = 0x60000001

.field public static final blacklist LAYOUT_PENTA:I = 0x37

.field public static final blacklist LAYOUT_QUAD:I = 0x33

.field public static final blacklist LAYOUT_QUAD_SIDE:I = 0x603

.field public static final blacklist LAYOUT_STEREO:I = 0x3

.field public static final blacklist LAYOUT_STEREO_HAPTIC_A:I = 0x40000003

.field public static final blacklist LAYOUT_STEREO_HAPTIC_AB:I = 0x60000003

.field public static final blacklist LAYOUT_SURROUND:I = 0x107

.field public static final blacklist LAYOUT_TRI:I = 0x7

.field public static final blacklist LAYOUT_TRI_BACK:I = 0x103

.field public static final blacklist VOICE_CALL_MONO:I = 0xc000

.field public static final blacklist VOICE_DNLINK_MONO:I = 0x8000

.field public static final blacklist VOICE_UPLINK_MONO:I = 0x4000

.field public static final blacklist indexMask:I = 0x2

.field public static final blacklist invalid:I = 0x1

.field public static final blacklist layoutMask:I = 0x3

.field public static final blacklist none:I = 0x0

.field public static final blacklist voiceMask:I = 0x4


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Landroid/media/audio/common/AudioChannelLayout$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioChannelLayout$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioChannelLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioChannelLayout;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioChannelLayout-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioChannelLayout;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 315
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 318
    return-void

    .line 316
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioChannelLayout;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_tagString(I)Ljava/lang/String;

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

    .line 332
    iput p1, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    .line 333
    iput-object p2, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    .line 334
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 321
    packed-switch p1, :pswitch_data_2c

    .line 328
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

    .line 326
    :pswitch_1c
    const-string v0, "voiceMask"

    return-object v0

    .line 325
    :pswitch_1f
    const-string v0, "layoutMask"

    return-object v0

    .line 324
    :pswitch_22
    const-string v0, "indexMask"

    return-object v0

    .line 323
    :pswitch_25
    const-string v0, "invalid"

    return-object v0

    .line 322
    :pswitch_28
    const-string v0, "none"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist indexMask(I)Landroid/media/audio/common/AudioChannelLayout;
    .registers 4
    .param p0, "_value"    # I

    .line 74
    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist invalid(I)Landroid/media/audio/common/AudioChannelLayout;
    .registers 4
    .param p0, "_value"    # I

    .line 59
    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist layoutMask(I)Landroid/media/audio/common/AudioChannelLayout;
    .registers 4
    .param p0, "_value"    # I

    .line 89
    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist none(I)Landroid/media/audio/common/AudioChannelLayout;
    .registers 4
    .param p0, "_value"    # I

    .line 44
    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist voiceMask(I)Landroid/media/audio/common/AudioChannelLayout;
    .registers 4
    .param p0, "_value"    # I

    .line 104
    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    .line 284
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 300
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 301
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 302
    :cond_8
    instance-of v2, p1, Landroid/media/audio/common/AudioChannelLayout;

    if-nez v2, :cond_d

    return v1

    .line 303
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioChannelLayout;

    .line 304
    .local v2, "that":Landroid/media/audio/common/AudioChannelLayout;
    iget v3, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    iget v4, v2, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    if-eq v3, v4, :cond_17

    return v1

    .line 305
    :cond_17
    iget-object v3, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    return v1

    .line 306
    :cond_22
    return v0
.end method

.method public blacklist getIndexMask()I
    .registers 2

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    .line 79
    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getInvalid()I
    .registers 2

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    .line 64
    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getLayoutMask()I
    .registers 2

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    .line 94
    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getNone()I
    .registers 2

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    return v0
.end method

.method public blacklist getVoiceMask()I
    .registers 2

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    .line 109
    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 311
    iget v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

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

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_5c

    .line 184
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

    .line 180
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 181
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 182
    return-void

    .line 175
    .end local v1    # "_aidl_value":I
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 177
    return-void

    .line 170
    .end local v1    # "_aidl_value":I
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 172
    return-void

    .line 165
    .end local v1    # "_aidl_value":I
    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 167
    return-void

    .line 160
    .end local v1    # "_aidl_value":I
    :pswitch_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 162
    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setIndexMask(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 83
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public blacklist setInvalid(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 68
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public blacklist setLayoutMask(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 98
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public blacklist setNone(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 53
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public blacklist setVoiceMask(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 113
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 289
    iget v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_ae

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :pswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioChannelLayout.voiceMask("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getVoiceMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 293
    :pswitch_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioChannelLayout.layoutMask("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :pswitch_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioChannelLayout.indexMask("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getIndexMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 291
    :pswitch_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioChannelLayout.invalid("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getInvalid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 290
    :pswitch_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioChannelLayout.none("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getNone()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_92
        :pswitch_76
        :pswitch_5a
        :pswitch_3e
        :pswitch_22
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 134
    iget v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    packed-switch v0, :pswitch_data_34

    goto :goto_33

    .line 149
    :pswitch_b
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getVoiceMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 146
    :pswitch_13
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    goto :goto_33

    .line 143
    :pswitch_1b
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getIndexMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    goto :goto_33

    .line 140
    :pswitch_23
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getInvalid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    goto :goto_33

    .line 137
    :pswitch_2b
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getNone()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    nop

    .line 152
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
