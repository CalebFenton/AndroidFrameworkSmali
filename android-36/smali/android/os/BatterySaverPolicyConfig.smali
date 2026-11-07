.class public final Landroid/os/BatterySaverPolicyConfig;
.super Ljava/lang/Object;
.source "BatterySaverPolicyConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatterySaverPolicyConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BatterySaverPolicyConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdjustBrightnessFactor:F

.field private final blacklist mAdvertiseIsEnabled:Z

.field private final blacklist mDeferFullBackup:Z

.field private final blacklist mDeferKeyValueBackup:Z

.field private final blacklist mDeviceSpecificSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisableAnimation:Z

.field private final blacklist mDisableAod:Z

.field private final blacklist mDisableLaunchBoost:Z

.field private final blacklist mDisableOptionalSensors:Z

.field private final blacklist mDisableVibration:Z

.field private final blacklist mEnableAdjustBrightness:Z

.field private final blacklist mEnableDataSaver:Z

.field private final blacklist mEnableFirewall:Z

.field private final blacklist mEnableNightMode:Z

.field private final blacklist mEnableQuickDoze:Z

.field private final blacklist mForceAllAppsStandby:Z

.field private final blacklist mForceBackgroundCheck:Z

.field private final blacklist mLocationMode:I

.field private final blacklist mSoundTriggerMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 117
    new-instance v0, Landroid/os/BatterySaverPolicyConfig$1;

    invoke-direct {v0}, Landroid/os/BatterySaverPolicyConfig$1;-><init>()V

    sput-object v0, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/BatterySaverPolicyConfig$Builder;)V
    .registers 5
    .param p1, "in"    # Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmAdjustBrightnessFactor(Landroid/os/BatterySaverPolicyConfig$Builder;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdjustBrightnessFactor:F

    .line 58
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmAdvertiseIsEnabled(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdvertiseIsEnabled:Z

    .line 59
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDeferFullBackup(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferFullBackup:Z

    .line 60
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDeferKeyValueBackup(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferKeyValueBackup:Z

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDeviceSpecificSettings(Landroid/os/BatterySaverPolicyConfig$Builder;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeviceSpecificSettings:Ljava/util/Map;

    .line 63
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDisableAnimation(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAnimation:Z

    .line 64
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDisableAod(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAod:Z

    .line 65
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDisableLaunchBoost(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableLaunchBoost:Z

    .line 66
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDisableOptionalSensors(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableOptionalSensors:Z

    .line 67
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDisableVibration(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableVibration:Z

    .line 68
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmEnableAdjustBrightness(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableAdjustBrightness:Z

    .line 69
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmEnableDataSaver(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableDataSaver:Z

    .line 70
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmEnableFirewall(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableFirewall:Z

    .line 71
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmEnableNightMode(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableNightMode:Z

    .line 72
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmEnableQuickDoze(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableQuickDoze:Z

    .line 73
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmForceAllAppsStandby(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mForceAllAppsStandby:Z

    .line 74
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmForceBackgroundCheck(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mForceBackgroundCheck:Z

    .line 75
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmLocationMode(Landroid/os/BatterySaverPolicyConfig$Builder;)I

    move-result v0

    .line 76
    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 75
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig;->mLocationMode:I

    .line 77
    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmSoundTriggerMode(Landroid/os/BatterySaverPolicyConfig$Builder;)I

    move-result v0

    .line 78
    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 77
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig;->mSoundTriggerMode:I

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/BatterySaverPolicyConfig$Builder;Landroid/os/BatterySaverPolicyConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BatterySaverPolicyConfig;-><init>(Landroid/os/BatterySaverPolicyConfig$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdjustBrightnessFactor:F

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdvertiseIsEnabled:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferFullBackup:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferKeyValueBackup:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 89
    .local v1, "deviceSpecificSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    if-ge v2, v0, :cond_53

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "val":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 93
    goto :goto_50

    .line 95
    :cond_4d
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 97
    .end local v2    # "i":I
    :cond_53
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDeviceSpecificSettings:Ljava/util/Map;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAnimation:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAod:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableLaunchBoost:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableOptionalSensors:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableVibration:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableAdjustBrightness:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableDataSaver:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableFirewall:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableNightMode:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableQuickDoze:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mForceAllAppsStandby:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mForceBackgroundCheck:Z

    .line 111
    nop

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 111
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/os/BatterySaverPolicyConfig;->mLocationMode:I

    .line 113
    nop

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 113
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/os/BatterySaverPolicyConfig;->mSoundTriggerMode:I

    .line 115
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/BatterySaverPolicyConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BatterySaverPolicyConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAdjustBrightnessFactor()F
    .registers 2

    .line 199
    iget v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdjustBrightnessFactor:F

    return v0
.end method

.method public whitelist getAdvertiseIsEnabled()Z
    .registers 2

    .line 206
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdvertiseIsEnabled:Z

    return v0
.end method

.method public whitelist getDeferFullBackup()Z
    .registers 2

    .line 211
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferFullBackup:Z

    return v0
.end method

.method public whitelist getDeferKeyValueBackup()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferKeyValueBackup:Z

    return v0
.end method

.method public whitelist getDeviceSpecificSettings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeviceSpecificSettings:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getDisableAnimation()Z
    .registers 2

    .line 229
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAnimation:Z

    return v0
.end method

.method public whitelist getDisableAod()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAod:Z

    return v0
.end method

.method public whitelist getDisableLaunchBoost()Z
    .registers 2

    .line 239
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableLaunchBoost:Z

    return v0
.end method

.method public whitelist getDisableOptionalSensors()Z
    .registers 2

    .line 244
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableOptionalSensors:Z

    return v0
.end method

.method public whitelist getDisableSoundTrigger()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    iget v0, p0, Landroid/os/BatterySaverPolicyConfig;->mSoundTriggerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist getDisableVibration()Z
    .registers 2

    .line 267
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableVibration:Z

    return v0
.end method

.method public whitelist getEnableAdjustBrightness()Z
    .registers 2

    .line 272
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableAdjustBrightness:Z

    return v0
.end method

.method public whitelist getEnableDataSaver()Z
    .registers 2

    .line 277
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableDataSaver:Z

    return v0
.end method

.method public whitelist getEnableFirewall()Z
    .registers 2

    .line 285
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableFirewall:Z

    return v0
.end method

.method public whitelist getEnableNightMode()Z
    .registers 2

    .line 290
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableNightMode:Z

    return v0
.end method

.method public whitelist getEnableQuickDoze()Z
    .registers 2

    .line 295
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableQuickDoze:Z

    return v0
.end method

.method public whitelist getForceAllAppsStandby()Z
    .registers 2

    .line 300
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mForceAllAppsStandby:Z

    return v0
.end method

.method public whitelist getForceBackgroundCheck()Z
    .registers 2

    .line 310
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mForceBackgroundCheck:Z

    return v0
.end method

.method public whitelist getLocationMode()I
    .registers 2

    .line 315
    iget v0, p0, Landroid/os/BatterySaverPolicyConfig;->mLocationMode:I

    return v0
.end method

.method public whitelist getSoundTriggerMode()I
    .registers 2

    .line 252
    iget v0, p0, Landroid/os/BatterySaverPolicyConfig;->mSoundTriggerMode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/os/BatterySaverPolicyConfig;->mDeviceSpecificSettings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 171
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_f

    .line 173
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjust_brightness_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableAdjustBrightness:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",adjust_brightness_factor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/BatterySaverPolicyConfig;->mAdjustBrightnessFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",advertise_is_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mAdvertiseIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",animation_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",aod_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAod:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",datasaver_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableDataSaver:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",enable_night_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableNightMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",firewall_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableFirewall:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",force_all_apps_standby="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mForceAllAppsStandby:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",force_background_check="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mForceBackgroundCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fullbackup_deferred="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferFullBackup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",gps_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/BatterySaverPolicyConfig;->mLocationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",keyvaluebackup_deferred="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferKeyValueBackup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",launch_boost_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableLaunchBoost:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",optional_sensors_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableOptionalSensors:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",quick_doze_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableQuickDoze:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",soundtrigger_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/BatterySaverPolicyConfig;->mSoundTriggerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",vibration_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableVibration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    iget v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdjustBrightnessFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 138
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdvertiseIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 139
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferFullBackup:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 140
    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferKeyValueBackup:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 142
    iget-object v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeviceSpecificSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 143
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 144
    .local v1, "size":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 146
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_25

    .line 150
    :cond_44
    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAnimation:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 151
    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAod:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 152
    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableLaunchBoost:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 153
    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableOptionalSensors:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 154
    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableVibration:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 155
    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableAdjustBrightness:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 156
    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableDataSaver:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableFirewall:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 158
    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableNightMode:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 159
    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableQuickDoze:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 160
    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mForceAllAppsStandby:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 161
    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mForceBackgroundCheck:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 162
    iget v2, p0, Landroid/os/BatterySaverPolicyConfig;->mLocationMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v2, p0, Landroid/os/BatterySaverPolicyConfig;->mSoundTriggerMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    return-void
.end method
