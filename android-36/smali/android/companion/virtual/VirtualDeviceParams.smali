.class public final Landroid/companion/virtual/VirtualDeviceParams;
.super Ljava/lang/Object;
.source "VirtualDeviceParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceParams$Builder;,
        Landroid/companion/virtual/VirtualDeviceParams$DynamicDisplayPolicyType;,
        Landroid/companion/virtual/VirtualDeviceParams$DynamicPolicyType;,
        Landroid/companion/virtual/VirtualDeviceParams$PolicyType;,
        Landroid/companion/virtual/VirtualDeviceParams$DevicePolicy;,
        Landroid/companion/virtual/VirtualDeviceParams$NavigationPolicy;,
        Landroid/companion/virtual/VirtualDeviceParams$ActivityPolicy;,
        Landroid/companion/virtual/VirtualDeviceParams$LockState;
    }
.end annotation


# static fields
.field public static final whitelist ACTIVITY_POLICY_DEFAULT_ALLOWED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTIVITY_POLICY_DEFAULT_BLOCKED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/VirtualDeviceParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_POLICY_CUSTOM:I = 0x1

.field public static final whitelist DEVICE_POLICY_DEFAULT:I = 0x0

.field public static final whitelist LOCK_STATE_ALWAYS_UNLOCKED:I = 0x1

.field public static final whitelist LOCK_STATE_DEFAULT:I = 0x0

.field public static final whitelist NAVIGATION_POLICY_DEFAULT_ALLOWED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NAVIGATION_POLICY_DEFAULT_BLOCKED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist POLICY_TYPE_ACTIVITY:I = 0x3

.field public static final whitelist POLICY_TYPE_AUDIO:I = 0x1

.field public static final whitelist POLICY_TYPE_BLOCKED_ACTIVITY:I = 0x6

.field public static final whitelist POLICY_TYPE_CAMERA:I = 0x5

.field public static final whitelist POLICY_TYPE_CLIPBOARD:I = 0x4

.field public static final whitelist POLICY_TYPE_DEFAULT_DEVICE_CAMERA_ACCESS:I = 0x7

.field public static final whitelist POLICY_TYPE_RECENTS:I = 0x2

.field public static final whitelist POLICY_TYPE_SENSORS:I


# instance fields
.field private final blacklist mActivityPolicyExemptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAudioPlaybackSessionId:I

.field private final blacklist mAudioRecordingSessionId:I

.field private final blacklist mCrossTaskNavigationExemptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDefaultActivityPolicy:I

.field private final blacklist mDefaultNavigationPolicy:I

.field private final blacklist mDevicePolicies:Landroid/util/SparseIntArray;

.field private final blacklist mDimDuration:J

.field private final blacklist mHomeComponent:Landroid/content/ComponentName;

.field private final blacklist mInputMethodComponent:Landroid/content/ComponentName;

.field private final blacklist mLockState:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mScreenOffTimeout:J

.field private final blacklist mUsersWithMatchingAccounts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

.field private final blacklist mVirtualSensorConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 743
    new-instance v0, Landroid/companion/virtual/VirtualDeviceParams$1;

    invoke-direct {v0}, Landroid/companion/virtual/VirtualDeviceParams$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/VirtualDeviceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/Set;ILjava/util/Set;ILjava/util/Set;Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;Landroid/companion/virtual/sensor/IVirtualSensorCallback;IIJJ)V
    .registers 30
    .param p1, "lockState"    # I
    .param p3, "defaultNavigationPolicy"    # I
    .param p5, "defaultActivityPolicy"    # I
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "devicePolicies"    # Landroid/util/SparseIntArray;
    .param p9, "homeComponent"    # Landroid/content/ComponentName;
    .param p10, "inputMethodComponent"    # Landroid/content/ComponentName;
    .param p12, "virtualSensorCallback"    # Landroid/companion/virtual/sensor/IVirtualSensorCallback;
    .param p13, "audioPlaybackSessionId"    # I
    .param p14, "audioRecordingSessionId"    # I
    .param p15, "dimDuration"    # J
    .param p17, "screenOffTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;",
            "Landroid/companion/virtual/sensor/IVirtualSensorCallback;",
            "IIJJ)V"
        }
    .end annotation

    .line 351
    .local p2, "usersWithMatchingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/UserHandle;>;"
    .local p4, "crossTaskNavigationExemptions":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local p6, "activityPolicyExemptions":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local p11, "virtualSensorConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/sensor/VirtualSensorConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    .line 353
    new-instance v0, Landroid/util/ArraySet;

    .line 354
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    .line 355
    iput p3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    .line 356
    new-instance v0, Landroid/util/ArraySet;

    .line 357
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    .line 358
    move/from16 v0, p5

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    .line 359
    new-instance v1, Landroid/util/ArraySet;

    .line 360
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    .line 361
    move-object/from16 v1, p7

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    .line 362
    invoke-static/range {p8 .. p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    iput-object v2, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 363
    move-object/from16 v2, p9

    iput-object v2, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    .line 364
    move-object/from16 v3, p10

    iput-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    .line 365
    invoke-static/range {p11 .. p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    .line 366
    move-object/from16 v4, p12

    iput-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    .line 367
    move/from16 v5, p13

    iput v5, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    .line 368
    move/from16 v6, p14

    iput v6, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    .line 369
    move-wide/from16 v7, p15

    iput-wide v7, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    .line 370
    move-wide/from16 v9, p17

    iput-wide v9, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    .line 371
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/Set;ILjava/util/Set;ILjava/util/Set;Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;Landroid/companion/virtual/sensor/IVirtualSensorCallback;IIJJLandroid/companion/virtual/VirtualDeviceParams-IA;)V
    .registers 20

    invoke-direct/range {p0 .. p18}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(ILjava/util/Set;ILjava/util/Set;ILjava/util/Set;Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;Landroid/companion/virtual/sensor/IVirtualSensorCallback;IIJJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    .line 378
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    .line 380
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    .line 384
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    sget-object v1, Landroid/companion/virtual/sensor/VirtualSensorConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 385
    nop

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    .line 389
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    .line 390
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    .line 393
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/VirtualDeviceParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mUsersWithMatchingAccounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDefaultNavigationPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCrossTaskNavigationExemptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDefaultActivityPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mActivityPolicyExemptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDevicePolicies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mVirtualSensorConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mHomeComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mInputMethodComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mAudioPlaybackSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mAudioRecordingSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDimDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mScreenOffTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 650
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 651
    return v0

    .line 653
    :cond_4
    instance-of v1, p1, Landroid/companion/virtual/VirtualDeviceParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 654
    return v2

    .line 656
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/companion/virtual/VirtualDeviceParams;

    .line 657
    .local v1, "that":Landroid/companion/virtual/VirtualDeviceParams;
    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 658
    .local v3, "devicePoliciesCount":I
    iget-object v4, v1, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-eq v3, v4, :cond_1c

    .line 659
    return v2

    .line 661
    :cond_1c
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v3, :cond_40

    .line 662
    iget-object v5, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    iget-object v6, v1, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    if-eq v5, v6, :cond_2e

    .line 663
    return v2

    .line 665
    :cond_2e
    iget-object v5, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    iget-object v6, v1, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-eq v5, v6, :cond_3d

    .line 666
    return v2

    .line 661
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 669
    .end local v4    # "i":I
    :cond_40
    iget v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    iget v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    if-ne v4, v5, :cond_ab

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    iget-object v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    .line 670
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    iget-object v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    .line 671
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    iget v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    iget v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    if-ne v4, v5, :cond_ab

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    iget-object v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    .line 674
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    iget v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    iget v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    if-ne v4, v5, :cond_ab

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    iget-object v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    .line 676
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    .line 677
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    .line 678
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    iget v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    iget v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    if-ne v4, v5, :cond_ab

    iget v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    iget v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    if-ne v4, v5, :cond_ab

    iget-wide v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    iget-wide v6, v1, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_ab

    iget-wide v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    iget-wide v6, v1, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_ab

    goto :goto_ac

    :cond_ab
    move v0, v2

    .line 669
    :goto_ac
    return v0
.end method

.method public whitelist getAllowedActivities()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 520
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    if-nez v0, :cond_9

    .line 521
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_f

    .line 522
    :cond_9
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 520
    :goto_f
    return-object v0
.end method

.method public whitelist getAllowedCrossTaskNavigations()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 470
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    if-nez v0, :cond_9

    .line 471
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_f

    .line 472
    :cond_9
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 470
    :goto_f
    return-object v0
.end method

.method public whitelist getAudioPlaybackSessionId()I
    .registers 2

    .line 610
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    return v0
.end method

.method public whitelist getAudioRecordingSessionId()I
    .registers 2

    .line 619
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    return v0
.end method

.method public whitelist getBlockedActivities()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 536
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 537
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_10

    .line 538
    :cond_a
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 536
    :goto_10
    return-object v0
.end method

.method public whitelist getBlockedCrossTaskNavigations()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 488
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 489
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_10

    .line 490
    :cond_a
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 488
    :goto_10
    return-object v0
.end method

.method public whitelist getDefaultActivityPolicy()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 554
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    return v0
.end method

.method public whitelist getDefaultNavigationPolicy()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 506
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    return v0
.end method

.method public blacklist getDevicePolicies()Landroid/util/SparseIntArray;
    .registers 2

    .line 582
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public whitelist getDevicePolicy(I)I
    .registers 4
    .param p1, "policyType"    # I

    .line 574
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public whitelist getDimDuration()Ljava/time/Duration;
    .registers 3

    .line 410
    iget-wide v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHomeComponent()Landroid/content/ComponentName;
    .registers 2

    .line 432
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getInputMethodComponent()Landroid/content/ComponentName;
    .registers 2

    .line 443
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getLockState()I
    .registers 2

    .line 400
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 564
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getScreenOffTimeout()Ljava/time/Duration;
    .registers 3

    .line 420
    iget-wide v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUsersWithMatchingAccounts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVirtualSensorCallback()Landroid/companion/virtual/sensor/IVirtualSensorCallback;
    .registers 2

    .line 601
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    return-object v0
.end method

.method public whitelist getVirtualSensorConfigs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 17

    .line 687
    move-object/from16 v0, p0

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    .line 688
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    .line 689
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    iget-object v9, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    iget-object v10, v0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    iget-object v11, v0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    .line 690
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    .line 691
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-wide v14, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v15, v2

    iget-wide v1, v0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, v15

    move-object v15, v1

    filled-new-array/range {v2 .. v15}, [Ljava/lang/Object;

    move-result-object v1

    .line 687
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 692
    .local v1, "hashCode":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_46
    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_63

    .line 693
    mul-int/lit8 v3, v1, 0x1f

    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 694
    .end local v1    # "hashCode":I
    .local v3, "hashCode":I
    mul-int/lit8 v1, v3, 0x1f

    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 692
    .end local v3    # "hashCode":I
    .restart local v1    # "hashCode":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 696
    .end local v2    # "i":I
    :cond_63
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDeviceParams( mLockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUsersWithMatchingAccounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDefaultNavigationPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCrossTaskNavigationExemptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDefaultActivityPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActivityPolicyExemptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDevicePolicies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHomeComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInputMethodComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAudioPlaybackSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAudioRecordingSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDimDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mScreenOffTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 629
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 631
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 633
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 635
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    .line 637
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 638
    nop

    .line 639
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-interface {v0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    .line 638
    :goto_3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 640
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 643
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 644
    iget-wide v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 645
    iget-wide v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 646
    return-void
.end method
