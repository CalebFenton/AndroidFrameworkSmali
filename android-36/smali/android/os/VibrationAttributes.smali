.class public final Landroid/os/VibrationAttributes;
.super Ljava/lang/Object;
.source "VibrationAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationAttributes$Builder;,
        Landroid/os/VibrationAttributes$Flag;,
        Landroid/os/VibrationAttributes$Usage;,
        Landroid/os/VibrationAttributes$UsageClass;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_ALL_SUPPORTED:I = 0xf

.field public static final whitelist FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x1

.field public static final blacklist FLAG_BYPASS_USER_VIBRATION_INTENSITY_OFF:I = 0x2

.field public static final blacklist FLAG_INVALIDATE_SETTINGS_CACHE:I = 0x4

.field public static final blacklist FLAG_PIPELINED_EFFECT:I = 0x8

.field private static final blacklist TAG:Ljava/lang/String; = "VibrationAttributes"

.field public static final whitelist USAGE_ACCESSIBILITY:I = 0x42

.field public static final whitelist USAGE_ALARM:I = 0x11

.field public static final whitelist USAGE_CLASS_ALARM:I = 0x1

.field public static final whitelist USAGE_CLASS_FEEDBACK:I = 0x2

.field public static final whitelist USAGE_CLASS_MASK:I = 0xf

.field public static final whitelist USAGE_CLASS_MEDIA:I = 0x3

.field public static final whitelist USAGE_CLASS_UNKNOWN:I = 0x0

.field public static final whitelist USAGE_COMMUNICATION_REQUEST:I = 0x41

.field public static final blacklist USAGE_FILTER_MATCH_ALL:I = -0x1

.field public static final whitelist USAGE_HARDWARE_FEEDBACK:I = 0x32

.field public static final blacklist USAGE_IME_FEEDBACK:I = 0x52

.field public static final whitelist USAGE_MEDIA:I = 0x13

.field public static final whitelist USAGE_NOTIFICATION:I = 0x31

.field public static final whitelist USAGE_PHYSICAL_EMULATION:I = 0x22

.field public static final whitelist USAGE_RINGTONE:I = 0x21

.field public static final whitelist USAGE_TOUCH:I = 0x12

.field public static final whitelist USAGE_UNKNOWN:I


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mOriginalAudioUsage:I

.field private final blacklist mUsage:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/os/VibrationAttributes;)I
    .registers 1

    iget p0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalAudioUsage(Landroid/os/VibrationAttributes;)I
    .registers 1

    iget p0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsage(Landroid/os/VibrationAttributes;)I
    .registers 1

    iget p0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 333
    new-instance v0, Landroid/os/VibrationAttributes$1;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$1;-><init>()V

    sput-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(III)V
    .registers 5
    .param p1, "usage"    # I
    .param p2, "audioUsage"    # I
    .param p3, "flags"    # I

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Landroid/os/VibrationAttributes;->mUsage:I

    .line 234
    iput p2, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 235
    and-int/lit8 v0, p3, 0xf

    iput v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    .line 236
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILandroid/os/VibrationAttributes-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/os/VibrationAttributes;-><init>(III)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    .line 330
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/VibrationAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createForUsage(I)Landroid/os/VibrationAttributes;
    .registers 2
    .param p0, "usage"    # I

    .line 224
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist usageToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "usage"    # I

    .line 376
    sparse-switch p0, :sswitch_data_3a

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 398
    :sswitch_18
    const-string v0, "IME"

    return-object v0

    .line 382
    :sswitch_1b
    const-string v0, "ACCESSIBILITY"

    return-object v0

    .line 388
    :sswitch_1e
    const-string v0, "COMMUNICATION_REQUEST"

    return-object v0

    .line 396
    :sswitch_21
    const-string v0, "HARDWARE_FEEDBACK"

    return-object v0

    .line 386
    :sswitch_24
    const-string v0, "NOTIFICATION"

    return-object v0

    .line 394
    :sswitch_27
    const-string v0, "PHYSICAL_EMULATION"

    return-object v0

    .line 384
    :sswitch_2a
    const-string v0, "RINGTONE"

    return-object v0

    .line 390
    :sswitch_2d
    const-string v0, "MEDIA"

    return-object v0

    .line 392
    :sswitch_30
    const-string v0, "TOUCH"

    return-object v0

    .line 380
    :sswitch_33
    const-string v0, "ALARM"

    return-object v0

    .line 378
    :sswitch_36
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_36
        0x11 -> :sswitch_33
        0x12 -> :sswitch_30
        0x13 -> :sswitch_2d
        0x21 -> :sswitch_2a
        0x22 -> :sswitch_27
        0x31 -> :sswitch_24
        0x32 -> :sswitch_21
        0x41 -> :sswitch_1e
        0x42 -> :sswitch_1b
        0x52 -> :sswitch_18
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 344
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 345
    return v0

    .line 347
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 350
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/os/VibrationAttributes;

    .line 351
    .local v2, "rhs":Landroid/os/VibrationAttributes;
    iget v3, p0, Landroid/os/VibrationAttributes;->mUsage:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mUsage:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/os/VibrationAttributes;->mFlags:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mFlags:I

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    .line 348
    .end local v2    # "rhs":Landroid/os/VibrationAttributes;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public blacklist getAudioUsage()I
    .registers 2

    .line 288
    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    if-eqz v0, :cond_7

    .line 290
    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    return v0

    .line 293
    :cond_7
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    sparse-switch v0, :sswitch_data_1e

    .line 310
    const/4 v0, 0x0

    return v0

    .line 306
    :sswitch_e
    const/16 v0, 0xb

    return v0

    .line 297
    :sswitch_11
    const/4 v0, 0x2

    return v0

    .line 295
    :sswitch_13
    const/4 v0, 0x5

    return v0

    .line 299
    :sswitch_15
    const/4 v0, 0x6

    return v0

    .line 308
    :sswitch_17
    const/4 v0, 0x1

    return v0

    .line 302
    :sswitch_19
    const/16 v0, 0xd

    return v0

    .line 304
    :sswitch_1c
    const/4 v0, 0x4

    return v0

    :sswitch_data_1e
    .sparse-switch
        0x11 -> :sswitch_1c
        0x12 -> :sswitch_19
        0x13 -> :sswitch_17
        0x21 -> :sswitch_15
        0x31 -> :sswitch_13
        0x41 -> :sswitch_11
        0x42 -> :sswitch_e
        0x52 -> :sswitch_19
    .end sparse-switch
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 269
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return v0
.end method

.method public blacklist getOriginalAudioUsage()I
    .registers 2

    .line 260
    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    return v0
.end method

.method public whitelist getUsage()I
    .registers 2

    .line 251
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return v0
.end method

.method public whitelist getUsageClass()I
    .registers 2

    .line 243
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 357
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isFlagSet(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 277
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    and-int/2addr v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibrationAttributes{mUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->usageToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAudioUsage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 364
    invoke-static {v1}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    return-object v0
.end method

.method public blacklist usageToString()Ljava/lang/String;
    .registers 2

    .line 371
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-static {v0}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 321
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    return-void
.end method
