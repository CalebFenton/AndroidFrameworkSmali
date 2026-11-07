.class public final Landroid/app/time/TimeZoneCapabilities;
.super Ljava/lang/Object;
.source "TimeZoneCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/TimeZoneCapabilities$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeZoneCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfigureAutoDetectionEnabledCapability:I

.field private final blacklist mConfigureGeoDetectionEnabledCapability:I

.field private final blacklist mConfigureNotificationsEnabledCapability:I

.field private final blacklist mSetManualTimeZoneCapability:I

.field private final blacklist mUseLocationEnabled:Z

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigureGeoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigureNotificationsEnabledCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSetManualTimeZoneCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseLocationEnabled(Landroid/app/time/TimeZoneCapabilities;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Landroid/app/time/TimeZoneCapabilities;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilities;
    .registers 1

    invoke-static {p0}, Landroid/app/time/TimeZoneCapabilities;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroid/app/time/TimeZoneCapabilities$1;

    invoke-direct {v0}, Landroid/app/time/TimeZoneCapabilities$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeZoneCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/time/TimeZoneCapabilities$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/app/time/TimeZoneCapabilities$Builder;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmUserHandle(Landroid/app/time/TimeZoneCapabilities$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    .line 77
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    .line 79
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmUseLocationEnabled(Landroid/app/time/TimeZoneCapabilities$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    .line 80
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmConfigureGeoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    .line 82
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmSetManualTimeZoneCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    .line 83
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmConfigureNotificationsEnabledCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    .line 85
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/time/TimeZoneCapabilities$Builder;Landroid/app/time/TimeZoneCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/time/TimeZoneCapabilities;-><init>(Landroid/app/time/TimeZoneCapabilities$Builder;)V

    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilities;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 89
    invoke-static {p0}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    .line 90
    .local v0, "userHandle":Landroid/os/UserHandle;
    new-instance v1, Landroid/app/time/TimeZoneCapabilities$Builder;

    invoke-direct {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    .line 91
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureAutoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeZoneCapabilities$Builder;->setUseLocationEnabled(Z)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureGeoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeZoneCapabilities$Builder;->setSetManualTimeZoneCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureNotificationsEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->build()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v1

    .line 90
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 211
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 212
    return v0

    .line 214
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_40

    .line 217
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/time/TimeZoneCapabilities;

    .line 218
    .local v2, "that":Landroid/app/time/TimeZoneCapabilities;
    iget-object v3, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    iget-object v4, v2, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget v3, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    iget v4, v2, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    if-ne v3, v4, :cond_3e

    iget-boolean v3, p0, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    iget-boolean v4, v2, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    if-ne v3, v4, :cond_3e

    iget v3, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    iget v4, v2, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    if-ne v3, v4, :cond_3e

    iget v3, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    iget v4, v2, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    if-ne v3, v4, :cond_3e

    iget v3, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    iget v4, v2, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    if-ne v3, v4, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    :goto_3f
    return v0

    .line 215
    .end local v2    # "that":Landroid/app/time/TimeZoneCapabilities;
    :cond_40
    :goto_40
    return v1
.end method

.method public whitelist getConfigureAutoDetectionEnabledCapability()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    return v0
.end method

.method public whitelist getConfigureGeoDetectionEnabledCapability()I
    .registers 2

    .line 140
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    return v0
.end method

.method public blacklist getConfigureNotificationsEnabledCapability()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    return v0
.end method

.method public whitelist getSetManualTimeZoneCapability()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 231
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    .line 232
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    .line 233
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 231
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isUseLocationEnabled()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneDetectorCapabilities{mUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigureAutoDetectionEnabledCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUseLocationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigureGeoDetectionEnabledCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSetManualTimeZoneCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigureNotificationsEnabledCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist tryApplyConfigChanges(Landroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)Landroid/app/time/TimeZoneConfiguration;
    .registers 7
    .param p1, "config"    # Landroid/app/time/TimeZoneConfiguration;
    .param p2, "requestedChanges"    # Landroid/app/time/TimeZoneConfiguration;

    .line 180
    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v0, p1}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>(Landroid/app/time/TimeZoneConfiguration;)V

    .line 181
    .local v0, "newConfigBuilder":Landroid/app/time/TimeZoneConfiguration$Builder;
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsAutoDetectionEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1e

    if-eqz v1, :cond_1c

    .line 182
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities;->getConfigureAutoDetectionEnabledCapability()I

    move-result v1

    if-ge v1, v3, :cond_15

    .line 183
    return-object v2

    .line 185
    :cond_15
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 188
    :cond_1c
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsGeoDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 189
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities;->getConfigureGeoDetectionEnabledCapability()I

    move-result v1

    if-ge v1, v3, :cond_29

    .line 190
    return-object v2

    .line 192
    :cond_29
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 195
    :cond_30
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsNotificationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 196
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities;->getConfigureNotificationsEnabledCapability()I

    move-result v1

    if-ge v1, v3, :cond_3d

    .line 197
    return-object v2

    .line 199
    :cond_3d
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->areNotificationsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setNotificationsEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 201
    :cond_44
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    .line 102
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-boolean v0, p0, Landroid/app/time/TimeZoneCapabilities;->mUseLocationEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 104
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mSetManualTimeZoneCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureNotificationsEnabledCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return-void
.end method
