.class public final Landroid/hardware/lights/Light;
.super Ljava/lang/Object;
.source "Light.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/lights/Light$LightCapability;,
        Landroid/hardware/lights/Light$LightType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LIGHT_CAPABILITY_BRIGHTNESS:I = 0x1

.field public static final whitelist LIGHT_CAPABILITY_COLOR_RGB:I = 0x2

.field public static final whitelist LIGHT_CAPABILITY_RGB:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist LIGHT_TYPE_CAMERA:I = 0x9

.field public static final whitelist LIGHT_TYPE_INPUT:I = 0x2711

.field public static final whitelist LIGHT_TYPE_KEYBOARD_BACKLIGHT:I = 0x2713

.field public static final blacklist LIGHT_TYPE_KEYBOARD_MIC_MUTE:I = 0x2714

.field public static final blacklist LIGHT_TYPE_KEYBOARD_VOLUME_MUTE:I = 0x2715

.field public static final whitelist LIGHT_TYPE_MICROPHONE:I = 0x8

.field public static final whitelist LIGHT_TYPE_PLAYER_ID:I = 0x2712


# instance fields
.field private final blacklist mCapabilities:I

.field private final blacklist mId:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mOrdinal:I

.field private final blacklist mPreferredBrightnessLevels:[I

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 190
    new-instance v0, Landroid/hardware/lights/Light$1;

    invoke-direct {v0}, Landroid/hardware/lights/Light$1;-><init>()V

    sput-object v0, Landroid/hardware/lights/Light;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "ordinal"    # I
    .param p3, "type"    # I

    .line 136
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "Light"

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    .end local p1    # "id":I
    .end local p2    # "ordinal":I
    .end local p3    # "type":I
    .local v1, "id":I
    .local v3, "ordinal":I
    .local v4, "type":I
    invoke-direct/range {v0 .. v6}, Landroid/hardware/lights/Light;-><init>(ILjava/lang/String;III[I)V

    .line 137
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;III)V
    .registers 13
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ordinal"    # I
    .param p4, "type"    # I
    .param p5, "capabilities"    # I

    .line 145
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "id":I
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "ordinal":I
    .end local p4    # "type":I
    .end local p5    # "capabilities":I
    .local v1, "id":I
    .local v2, "name":Ljava/lang/String;
    .local v3, "ordinal":I
    .local v4, "type":I
    .local v5, "capabilities":I
    invoke-direct/range {v0 .. v6}, Landroid/hardware/lights/Light;-><init>(ILjava/lang/String;III[I)V

    .line 146
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;III[I)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ordinal"    # I
    .param p4, "type"    # I
    .param p5, "capabilities"    # I
    .param p6, "preferredBrightnessLevels"    # [I

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p1, p0, Landroid/hardware/lights/Light;->mId:I

    .line 156
    iput-object p2, p0, Landroid/hardware/lights/Light;->mName:Ljava/lang/String;

    .line 157
    iput p3, p0, Landroid/hardware/lights/Light;->mOrdinal:I

    .line 158
    iput p4, p0, Landroid/hardware/lights/Light;->mType:I

    .line 159
    iput p5, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    .line 160
    iput-object p6, p0, Landroid/hardware/lights/Light;->mPreferredBrightnessLevels:[I

    .line 161
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/lights/Light;->mId:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/lights/Light;->mName:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/lights/Light;->mOrdinal:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/lights/Light;->mType:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/lights/Light;->mPreferredBrightnessLevels:[I

    .line 170
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/lights/Light-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/lights/Light;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 203
    instance-of v0, p1, Landroid/hardware/lights/Light;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 204
    move-object v0, p1

    check-cast v0, Landroid/hardware/lights/Light;

    .line 205
    .local v0, "light":Landroid/hardware/lights/Light;
    iget v2, p0, Landroid/hardware/lights/Light;->mId:I

    iget v3, v0, Landroid/hardware/lights/Light;->mId:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/hardware/lights/Light;->mOrdinal:I

    iget v3, v0, Landroid/hardware/lights/Light;->mOrdinal:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/hardware/lights/Light;->mType:I

    iget v3, v0, Landroid/hardware/lights/Light;->mType:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    iget v3, v0, Landroid/hardware/lights/Light;->mCapabilities:I

    if-ne v2, v3, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 208
    .end local v0    # "light":Landroid/hardware/lights/Light;
    :cond_22
    return v1
.end method

.method public blacklist getCapabilities()I
    .registers 2

    .line 263
    iget v0, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 228
    iget v0, p0, Landroid/hardware/lights/Light;->mId:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/hardware/lights/Light;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOrdinal()I
    .registers 2

    .line 247
    iget v0, p0, Landroid/hardware/lights/Light;->mOrdinal:I

    return v0
.end method

.method public blacklist getPreferredBrightnessLevels()[I
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/hardware/lights/Light;->mPreferredBrightnessLevels:[I

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 254
    iget v0, p0, Landroid/hardware/lights/Light;->mType:I

    return v0
.end method

.method public whitelist hasBrightnessControl()Z
    .registers 3

    .line 272
    iget v0, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist hasRgbControl()Z
    .registers 3

    .line 281
    iget v0, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 213
    iget v0, p0, Landroid/hardware/lights/Light;->mId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/lights/Light;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/lights/Light;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/lights/Light;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Ordinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/lights/Light;->mOrdinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 175
    iget v0, p0, Landroid/hardware/lights/Light;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Landroid/hardware/lights/Light;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget v0, p0, Landroid/hardware/lights/Light;->mOrdinal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Landroid/hardware/lights/Light;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Landroid/hardware/lights/Light;->mPreferredBrightnessLevels:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 181
    return-void
.end method
