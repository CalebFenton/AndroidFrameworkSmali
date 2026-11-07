.class public final Landroid/hardware/display/BrightnessInfo;
.super Ljava/lang/Object;
.source "BrightnessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessInfo$BrightnessMaxReason;,
        Landroid/hardware/display/BrightnessInfo$HighBrightnessMode;
    }
.end annotation


# static fields
.field public static final blacklist BRIGHTNESS_MAX_REASON_NONE:I = 0x0

.field public static final blacklist BRIGHTNESS_MAX_REASON_POWER_IC:I = 0x2

.field public static final blacklist BRIGHTNESS_MAX_REASON_THERMAL:I = 0x1

.field public static final blacklist BRIGHTNESS_MAX_REASON_WEAR_BEDTIME_MODE:I = 0x3

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HIGH_BRIGHTNESS_MODE_HDR:I = 0x2

.field public static final blacklist HIGH_BRIGHTNESS_MODE_OFF:I = 0x0

.field public static final blacklist HIGH_BRIGHTNESS_MODE_SUNLIGHT:I = 0x1


# instance fields
.field public final blacklist adjustedBrightness:F

.field public final blacklist brightness:F

.field public final blacklist brightnessMaxReason:I

.field public final blacklist brightnessMaximum:F

.field public final blacklist brightnessMinimum:F

.field public final blacklist highBrightnessMode:I

.field public final blacklist highBrightnessTransitionPoint:F

.field public final blacklist isBrightnessOverrideByWindow:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 193
    new-instance v0, Landroid/hardware/display/BrightnessInfo$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFFFIFIZ)V
    .registers 9
    .param p1, "brightness"    # F
    .param p2, "adjustedBrightness"    # F
    .param p3, "brightnessMinimum"    # F
    .param p4, "brightnessMaximum"    # F
    .param p5, "highBrightnessMode"    # I
    .param p6, "highBrightnessTransitionPoint"    # F
    .param p7, "brightnessMaxReason"    # I
    .param p8, "isBrightnessOverrideByWindow"    # Z

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    .line 135
    iput p2, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    .line 136
    iput p3, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    .line 137
    iput p4, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    .line 138
    iput p5, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    .line 139
    iput p6, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    .line 140
    iput p7, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaxReason:I

    .line 141
    iput-boolean p8, p0, Landroid/hardware/display/BrightnessInfo;->isBrightnessOverrideByWindow:Z

    .line 142
    return-void
.end method

.method public constructor blacklist <init>(FFFIFI)V
    .registers 16
    .param p1, "brightness"    # F
    .param p2, "brightnessMinimum"    # F
    .param p3, "brightnessMaximum"    # F
    .param p4, "highBrightnessMode"    # I
    .param p5, "highBrightnessTransitionPoint"    # F
    .param p6, "brightnessMaxReason"    # I

    .line 125
    const/4 v8, 0x0

    move v2, p1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "brightness":F
    .end local p2    # "brightnessMinimum":F
    .end local p3    # "brightnessMaximum":F
    .end local p4    # "highBrightnessMode":I
    .end local p5    # "highBrightnessTransitionPoint":F
    .end local p6    # "brightnessMaxReason":I
    .local v1, "brightness":F
    .local v3, "brightnessMinimum":F
    .local v4, "brightnessMaximum":F
    .local v5, "highBrightnessMode":I
    .local v6, "highBrightnessTransitionPoint":F
    .local v7, "brightnessMaxReason":I
    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/BrightnessInfo;-><init>(FFFFIFIZ)V

    .line 128
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaxReason:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessInfo;->isBrightnessOverrideByWindow:Z

    .line 215
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/BrightnessInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/display/BrightnessInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist briMaxReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "reason"    # I

    .line 163
    packed-switch p0, :pswitch_data_12

    .line 173
    const-string v0, "invalid"

    return-object v0

    .line 171
    :pswitch_6
    const-string v0, "wear bedtime"

    return-object v0

    .line 169
    :pswitch_9
    const-string v0, "power IC"

    return-object v0

    .line 167
    :pswitch_c
    const-string v0, "thermal"

    return-object v0

    .line 165
    :pswitch_f
    const-string v0, "none"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist hbmToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "highBrightnessMode"    # I

    .line 148
    packed-switch p0, :pswitch_data_10

    .line 156
    const-string v0, "invalid"

    return-object v0

    .line 152
    :pswitch_6
    const-string v0, "hdr"

    return-object v0

    .line 154
    :pswitch_9
    const-string v0, "sunlight"

    return-object v0

    .line 150
    :pswitch_c
    const-string v0, "off"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 183
    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 184
    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 185
    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 186
    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 187
    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 189
    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaxReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-boolean v0, p0, Landroid/hardware/display/BrightnessInfo;->isBrightnessOverrideByWindow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    return-void
.end method
