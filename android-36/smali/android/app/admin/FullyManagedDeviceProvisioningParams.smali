.class public final Landroid/app/admin/FullyManagedDeviceProvisioningParams;
.super Ljava/lang/Object;
.source "FullyManagedDeviceProvisioningParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    }
.end annotation


# static fields
.field private static final blacklist CAN_DEVICE_OWNER_GRANT_SENSOR_PERMISSIONS_PARAM:Ljava/lang/String; = "CAN_DEVICE_OWNER_GRANT_SENSOR_PERMISSIONS"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/FullyManagedDeviceProvisioningParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEMO_DEVICE:Ljava/lang/String; = "DEMO_DEVICE"

.field private static final blacklist LEAVE_ALL_SYSTEM_APPS_ENABLED_PARAM:Ljava/lang/String; = "LEAVE_ALL_SYSTEM_APPS_ENABLED"

.field private static final blacklist LOCALE_PROVIDED_PARAM:Ljava/lang/String; = "LOCALE_PROVIDED"

.field private static final blacklist TIME_ZONE_PROVIDED_PARAM:Ljava/lang/String; = "TIME_ZONE_PROVIDED"


# instance fields
.field private final blacklist mAdminExtras:Landroid/os/PersistableBundle;

.field private final blacklist mDemoDevice:Z

.field private final blacklist mDeviceAdminComponentName:Landroid/content/ComponentName;

.field private final blacklist mDeviceOwnerCanGrantSensorsPermissions:Z

.field private final blacklist mLeaveAllSystemAppsEnabled:Z

.field private final blacklist mLocalTime:J

.field private final blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mOwnerName:Ljava/lang/String;

.field private final blacklist mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 380
    new-instance v0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$1;

    invoke-direct {v0}, Landroid/app/admin/FullyManagedDeviceProvisioningParams$1;-><init>()V

    sput-object v0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/lang/String;ZLandroid/os/PersistableBundle;Z)V
    .registers 22
    .param p1, "deviceAdminComponentName"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "leaveAllSystemAppsEnabled"    # Z
    .param p4, "timeZone"    # Ljava/lang/String;
    .param p5, "localTime"    # J
    .param p7, "localeStr"    # Ljava/lang/String;
    .param p8, "deviceOwnerCanGrantSensorsPermissions"    # Z
    .param p9, "adminExtras"    # Landroid/os/PersistableBundle;
    .param p10, "demoDevice"    # Z

    .line 94
    nop

    .line 99
    invoke-static/range {p7 .. p7}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/util/Locale;ZLandroid/os/PersistableBundle;Z)V

    .line 103
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/lang/String;ZLandroid/os/PersistableBundle;ZLandroid/app/admin/FullyManagedDeviceProvisioningParams-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/lang/String;ZLandroid/os/PersistableBundle;Z)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/util/Locale;ZLandroid/os/PersistableBundle;Z)V
    .registers 12
    .param p1, "deviceAdminComponentName"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "leaveAllSystemAppsEnabled"    # Z
    .param p4, "timeZone"    # Ljava/lang/String;
    .param p5, "localTime"    # J
    .param p7, "locale"    # Ljava/util/Locale;
    .param p8, "deviceOwnerCanGrantSensorsPermissions"    # Z
    .param p9, "adminExtras"    # Landroid/os/PersistableBundle;
    .param p10, "demoDevice"    # Z

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    .line 73
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mOwnerName:Ljava/lang/String;

    .line 74
    iput-boolean p3, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    .line 75
    iput-object p4, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mTimeZone:Ljava/lang/String;

    .line 76
    iput-wide p5, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocalTime:J

    .line 77
    iput-object p7, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocale:Ljava/util/Locale;

    .line 78
    iput-boolean p8, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceOwnerCanGrantSensorsPermissions:Z

    .line 80
    iput-object p9, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    .line 81
    iput-boolean p10, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDemoDevice:Z

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/util/Locale;ZLandroid/os/PersistableBundle;ZLandroid/app/admin/FullyManagedDeviceProvisioningParams-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/util/Locale;ZLandroid/os/PersistableBundle;Z)V

    return-void
.end method

.method private static blacklist getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .registers 2
    .param p0, "localeStr"    # Ljava/lang/String;

    .line 107
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method private blacklist logParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 201
    nop

    .line 202
    const/16 v0, 0xc5

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    .line 204
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p3}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 208
    return-void
.end method


# virtual methods
.method public whitelist canDeviceOwnerGrantSensorsPermissions()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceOwnerCanGrantSensorsPermissions:Z

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAdminExtras()Landroid/os/PersistableBundle;
    .registers 3

    .line 173
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist getDeviceAdminComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getLocalTime()J
    .registers 3

    .line 147
    iget-wide v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocalTime:J

    return-wide v0
.end method

.method public whitelist getLocale()Ljava/util/Locale;
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getOwnerName()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mOwnerName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTimeZone()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isDemoDevice()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDemoDevice:Z

    return v0
.end method

.method public whitelist isLeaveAllSystemAppsEnabled()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    return v0
.end method

.method public blacklist logParams(Ljava/lang/String;)V
    .registers 6
    .param p1, "callerPackage"    # Ljava/lang/String;

    .line 190
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v0, "LEAVE_ALL_SYSTEM_APPS_ENABLED"

    iget-boolean v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    const-string v0, "CAN_DEVICE_OWNER_GRANT_SENSOR_PERMISSIONS"

    iget-boolean v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceOwnerCanGrantSensorsPermissions:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mTimeZone:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    const-string v3, "TIME_ZONE_PROVIDED"

    invoke-direct {p0, p1, v3, v0}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    const-string v0, "LOCALE_PROVIDED"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 197
    const-string v0, "DEMO_DEVICE"

    iget-boolean v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDemoDevice:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 198
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FullyManagedDeviceProvisioningParams{mDeviceAdminComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOwnerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLeaveAllSystemAppsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 356
    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mTimeZone:Ljava/lang/String;

    const-string/jumbo v2, "null"

    if-nez v1, :cond_38

    move-object v1, v2

    goto :goto_3a

    :cond_38
    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mTimeZone:Ljava/lang/String;

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocalTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 358
    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocale:Ljava/util/Locale;

    if-nez v1, :cond_55

    goto :goto_57

    :cond_55
    iget-object v2, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocale:Ljava/util/Locale;

    :goto_57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceOwnerCanGrantSensorsPermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceOwnerCanGrantSensorsPermissions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdminExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDemoDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDemoDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 368
    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 369
    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mOwnerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 371
    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mTimeZone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget-wide v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 373
    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocale:Ljava/util/Locale;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_25

    :cond_1f
    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    :goto_25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceOwnerCanGrantSensorsPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 375
    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 376
    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDemoDevice:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 377
    return-void
.end method
