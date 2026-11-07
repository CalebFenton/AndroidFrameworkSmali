.class public final Landroid/companion/virtual/sensor/VirtualSensorConfig;
.super Ljava/lang/Object;
.source "VirtualSensorConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;,
        Landroid/companion/virtual/sensor/VirtualSensorConfig$ReportingMode;
    }
.end annotation


# static fields
.field static final blacklist ADDITIONAL_INFO_MASK:I = 0x40

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DIRECT_CHANNEL_SHIFT:I = 0xa

.field private static final blacklist DIRECT_REPORT_MASK:I = 0x380

.field private static final blacklist DIRECT_REPORT_SHIFT:I = 0x7

.field private static final blacklist FLAG_WAKE_UP_SENSOR:I = 0x1

.field private static final blacklist REPORTING_MODE_MASK:I = 0xe

.field private static final blacklist REPORTING_MODE_SHIFT:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "VirtualSensorConfig"


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mMaxDelay:I

.field private final blacklist mMaximumRange:F

.field private final blacklist mMinDelay:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPower:F

.field private final blacklist mResolution:F

.field private final blacklist mType:I

.field private final blacklist mVendor:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 512
    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensorConfig$1;

    invoke-direct {v0}, Landroid/companion/virtual/sensor/VirtualSensorConfig$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;FFFIII)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "vendor"    # Ljava/lang/String;
    .param p4, "maximumRange"    # F
    .param p5, "resolution"    # F
    .param p6, "power"    # F
    .param p7, "minDelay"    # I
    .param p8, "maxDelay"    # I
    .param p9, "flags"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    .line 101
    iput-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    .line 103
    iput p4, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    .line 104
    iput p5, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    .line 105
    iput p6, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    .line 106
    iput p7, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    .line 107
    iput p8, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    .line 108
    iput p9, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    .line 109
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;FFFIIILandroid/companion/virtual/sensor/VirtualSensorConfig-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/companion/virtual/sensor/VirtualSensorConfig;-><init>(ILjava/lang/String;Ljava/lang/String;FFFIII)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    .line 121
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/sensor/VirtualSensorConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/sensor/VirtualSensorConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDirectChannelTypesSupported()I
    .registers 3

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "memoryTypes":I
    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit16 v1, v1, 0x400

    if-lez v1, :cond_9

    .line 240
    or-int/lit8 v0, v0, 0x1

    .line 242
    :cond_9
    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit16 v1, v1, 0x800

    if-lez v1, :cond_11

    .line 243
    or-int/lit8 v0, v0, 0x2

    .line 245
    :cond_11
    return v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 290
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    return v0
.end method

.method public whitelist getHighestDirectReportRateLevel()I
    .registers 3

    .line 227
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit16 v0, v0, 0x380

    shr-int/lit8 v0, v0, 0x7

    .line 228
    .local v0, "rateLevel":I
    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public whitelist getMaxDelay()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    return v0
.end method

.method public whitelist getMaximumRange()F
    .registers 2

    .line 180
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    return v0
.end method

.method public whitelist getMinDelay()I
    .registers 2

    .line 208
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPower()F
    .registers 2

    .line 198
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    return v0
.end method

.method public whitelist getReportingMode()I
    .registers 2

    .line 279
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist getResolution()F
    .registers 2

    .line 189
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    return v0
.end method

.method public whitelist getVendor()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isAdditionalInfoSupported()Z
    .registers 2

    .line 268
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isWakeUpSensor()Z
    .registers 3

    .line 256
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualSensorConfig{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 130
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 134
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 135
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 136
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void
.end method
