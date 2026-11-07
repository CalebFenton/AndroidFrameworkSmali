.class public abstract Landroid/app/ForegroundServiceTypePolicy;
.super Ljava/lang/Object;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ForegroundServiceTypePolicy$RegularPermission;,
        Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;,
        Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;,
        Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;,
        Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;,
        Landroid/app/ForegroundServiceTypePolicy$RolePermission;,
        Landroid/app/ForegroundServiceTypePolicy$UsbDevicePermission;,
        Landroid/app/ForegroundServiceTypePolicy$UsbAccessoryPermission;,
        Landroid/app/ForegroundServiceTypePolicy$AppOpPermission;,
        Landroid/app/ForegroundServiceTypePolicy$ForegroundServicePolicyCheckCode;
    }
.end annotation


# static fields
.field static final blacklist DEBUG_FOREGROUND_SERVICE_TYPE_POLICY:Z = false

.field private static final blacklist DEFAULT_FGS_TYPE_FG_PERM_ENFORCEMENT_FLAG_VALUE:Z = true

.field public static final blacklist FGS_TYPE_DATA_SYNC_DEPRECATION_CHANGE_ID:J = 0xf3396eaL

.field public static final blacklist FGS_TYPE_DATA_SYNC_DISABLED_CHANGE_ID:J = 0xf3d0e83L

.field private static final blacklist FGS_TYPE_FG_PERM_ENFORCEMENT_FLAG:Ljava/lang/String; = "fgs_type_fg_perm_enforcement_flag"

.field public static final blacklist FGS_TYPE_NONE_DEPRECATION_CHANGE_ID:J = 0xf33a3a1L

.field public static final blacklist FGS_TYPE_NONE_DISABLED_CHANGE_ID:J = 0xf3392a6L

.field public static final blacklist FGS_TYPE_PERMISSION_CHANGE_ID:J = 0xf2dd77aL

.field private static final blacklist FGS_TYPE_PERM_ENFORCEMENT_FLAG_CAMERA:Ljava/lang/String; = "fgs_type_perm_enforcement_flag_camera"

.field private static final blacklist FGS_TYPE_PERM_ENFORCEMENT_FLAG_CONNECTED_DEVICE:Ljava/lang/String; = "fgs_type_perm_enforcement_flag_connected_device"

.field private static final blacklist FGS_TYPE_PERM_ENFORCEMENT_FLAG_DATA_SYNC:Ljava/lang/String; = "fgs_type_perm_enforcement_flag_data_sync"

.field private static final blacklist FGS_TYPE_PERM_ENFORCEMENT_FLAG_HEALTH:Ljava/lang/String; = "fgs_type_perm_enforcement_flag_health"

.field private static final blacklist FGS_TYPE_PERM_ENFORCEMENT_FLAG_LOCATION:Ljava/lang/String; = "fgs_type_perm_enforcement_flag_location"

.field private static final blacklist FGS_TYPE_PERM_ENFORCEMENT_FLAG_MEDIA_PLAYBACK:Ljava/lang/String; = "fgs_type_perm_enforcement_flag_media_playback"

.field private static final blacklist FGS_TYPE_PERM_ENFORCEMENT_FLAG_MEDIA_PROJECTION:Ljava/lang/String; = "fgs_type_perm_enforcement_flag_media_projection"

.field private static final blacklist FGS_TYPE_PERM_ENFORCEMENT_FLAG_MICROPHONE:Ljava/lang/String; = "fgs_type_perm_enforcement_flag_microphone"

.field private static final blacklist FGS_TYPE_PERM_ENFORCEMENT_FLAG_PHONE_CALL:Ljava/lang/String; = "fgs_type_perm_enforcement_flag_phone_call"

.field private static final blacklist FGS_TYPE_PERM_ENFORCEMENT_FLAG_PREFIX:Ljava/lang/String; = "fgs_type_perm_enforcement_flag_"

.field private static final blacklist FGS_TYPE_PERM_ENFORCEMENT_FLAG_REMOTE_MESSAGING:Ljava/lang/String; = "fgs_type_perm_enforcement_flag_remote_messaging"

.field private static final blacklist FGS_TYPE_PERM_ENFORCEMENT_FLAG_SPECIAL_USE:Ljava/lang/String; = "fgs_type_perm_enforcement_flag_special_use"

.field private static final blacklist FGS_TYPE_PERM_ENFORCEMENT_FLAG_SYSTEM_EXEMPTED:Ljava/lang/String; = "fgs_type_perm_enforcement_flag_system_exempted"

.field public static final blacklist FGS_TYPE_POLICY_CAMERA:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_CHECK_DEPRECATED:I = 0x2

.field public static final blacklist FGS_TYPE_POLICY_CHECK_DISABLED:I = 0x3

.field public static final blacklist FGS_TYPE_POLICY_CHECK_OK:I = 0x1

.field public static final blacklist FGS_TYPE_POLICY_CHECK_PERMISSION_DENIED_ENFORCED:I = 0x5

.field public static final blacklist FGS_TYPE_POLICY_CHECK_PERMISSION_DENIED_PERMISSIVE:I = 0x4

.field public static final blacklist FGS_TYPE_POLICY_CHECK_UNKNOWN:I = 0x0

.field public static final blacklist FGS_TYPE_POLICY_CONNECTED_DEVICE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_DATA_SYNC:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_FILE_MANAGEMENT:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_HEALTH:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_LOCATION:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_MANIFEST:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_MEDIA_PLAYBACK:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_MEDIA_PROCESSING:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_MEDIA_PROJECTION:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_MICROPHONE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_NONE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_PHONE_CALL:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_REMOTE_MESSAGING:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_SHORT_SERVICE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_SPECIAL_USE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field public static final blacklist FGS_TYPE_POLICY_SYSTEM_EXEMPTED:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

.field static final blacklist TAG:Ljava/lang/String; = "ForegroundServiceTypePolicy"

.field private static blacklist sDefaultForegroundServiceTypePolicy:Landroid/app/ForegroundServiceTypePolicy;

.field private static final blacklist sLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisFgsTypeFgPermissionEnforcementEnabled()Z
    .registers 1

    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->isFgsTypeFgPermissionEnforcementEnabled()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 30

    .line 272
    new-instance v0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, -0x1

    const-wide/32 v2, 0xf33a3a1

    const-wide/32 v4, 0xf3392a6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v0, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MANIFEST:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 289
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    const/4 v11, 0x0

    const/4 v2, 0x0

    const-wide/32 v3, 0xf33a3a1

    const-wide/32 v5, 0xf3392a6

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v11}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v1, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_NONE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 306
    new-instance v2, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v8, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_DATA_SYNC"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    aput-object v3, v1, v13

    invoke-direct {v8, v1, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x1

    const-wide/32 v4, 0xf3396ea

    const-wide/32 v6, 0xf3d0e83

    const-string v10, "fgs_type_perm_enforcement_flag_data_sync"

    invoke-direct/range {v2 .. v12}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v2, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_DATA_SYNC:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 325
    new-instance v14, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_MEDIA_PLAYBACK"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    invoke-direct {v1, v2, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/4 v15, 0x2

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    const-string v22, "fgs_type_perm_enforcement_flag_media_playback"

    move-object/from16 v20, v1

    invoke-direct/range {v14 .. v24}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v14, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PLAYBACK:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 344
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v7, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_PHONE_CALL"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    invoke-direct {v7, v2, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    new-instance v8, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    const/4 v12, 0x2

    new-array v2, v12, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.MANAGE_OWN_CALLS"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RolePermission;

    const-string v4, "android.app.role.DIALER"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RolePermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    invoke-direct {v8, v2, v13}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-string v9, "fgs_type_perm_enforcement_flag_phone_call"

    invoke-direct/range {v1 .. v11}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v1, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_PHONE_CALL:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 366
    new-instance v14, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_LOCATION"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    invoke-direct {v1, v2, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    new-instance v2, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v3, v12, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v4, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {v4, v5}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v13

    new-instance v4, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {v4, v5}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    invoke-direct {v2, v3, v13}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/16 v24, 0x1

    const/16 v15, 0x8

    const-string v22, "fgs_type_perm_enforcement_flag_location"

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    invoke-direct/range {v14 .. v24}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v14, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_LOCATION:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 388
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v7, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_CONNECTED_DEVICE"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    invoke-direct {v7, v2, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    new-instance v8, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    const/16 v2, 0xc

    new-array v2, v2, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.BLUETOOTH_CONNECT"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.BLUETOOTH_SCAN"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v12

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.CHANGE_NETWORK_STATE"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x3

    aput-object v3, v2, v14

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.CHANGE_WIFI_STATE"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x4

    aput-object v3, v2, v15

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x5

    aput-object v3, v2, v16

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.NFC"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x6

    aput-object v3, v2, v4

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v5, "android.permission.TRANSMIT_IR"

    invoke-direct {v3, v5}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x7

    aput-object v3, v2, v5

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v5, "android.permission.UWB_RANGING"

    invoke-direct {v3, v5}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v3, v2, v5

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v5, "android.permission.RANGING"

    invoke-direct {v3, v5}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v3, v2, v5

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$UsbDevicePermission;

    invoke-direct {v3}, Landroid/app/ForegroundServiceTypePolicy$UsbDevicePermission;-><init>()V

    const/16 v5, 0xa

    aput-object v3, v2, v5

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$UsbAccessoryPermission;

    invoke-direct {v3}, Landroid/app/ForegroundServiceTypePolicy$UsbAccessoryPermission;-><init>()V

    const/16 v5, 0xb

    aput-object v3, v2, v5

    invoke-direct {v8, v2, v13}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/16 v2, 0x10

    move v5, v4

    const-wide/16 v3, 0x0

    move v9, v5

    const-wide/16 v5, 0x0

    move/from16 v17, v9

    const-string v9, "fgs_type_perm_enforcement_flag_connected_device"

    move/from16 v18, v15

    move/from16 v15, v17

    invoke-direct/range {v1 .. v11}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v1, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_CONNECTED_DEVICE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 420
    new-instance v19, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_MEDIA_PROJECTION"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    invoke-direct {v1, v2, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    new-instance v2, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v3, v12, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v4, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v5, "android.permission.CAPTURE_VIDEO_OUTPUT"

    invoke-direct {v4, v5}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v13

    new-instance v4, Landroid/app/ForegroundServiceTypePolicy$AppOpPermission;

    const/16 v5, 0x2e

    invoke-direct {v4, v5}, Landroid/app/ForegroundServiceTypePolicy$AppOpPermission;-><init>(I)V

    aput-object v4, v3, v0

    invoke-direct {v2, v3, v13}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v20, 0x20

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-string v27, "fgs_type_perm_enforcement_flag_media_projection"

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    invoke-direct/range {v19 .. v29}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v19, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PROJECTION:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 442
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v7, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_CAMERA"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    invoke-direct {v7, v2, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    new-instance v8, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v12, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.CAMERA"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.SYSTEM_CAMERA"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    invoke-direct {v8, v2, v13}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/4 v11, 0x1

    const/16 v2, 0x40

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-string v9, "fgs_type_perm_enforcement_flag_camera"

    invoke-direct/range {v1 .. v11}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v1, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_CAMERA:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 464
    new-instance v19, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_MICROPHONE"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    invoke-direct {v1, v2, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    new-instance v2, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v3, v15, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v4, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v5, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-direct {v4, v5}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v13

    new-instance v4, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v5, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-direct {v4, v5}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    new-instance v4, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v5, "android.permission.CAPTURE_MEDIA_OUTPUT"

    invoke-direct {v4, v5}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v12

    new-instance v4, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v5, "android.permission.CAPTURE_TUNER_AUDIO_INPUT"

    invoke-direct {v4, v5}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v14

    new-instance v4, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v5, "android.permission.CAPTURE_VOICE_COMMUNICATION_OUTPUT"

    invoke-direct {v4, v5}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v18

    new-instance v4, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-direct {v4, v5}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v16

    invoke-direct {v2, v3, v13}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/16 v29, 0x1

    const/16 v20, 0x80

    const-string v27, "fgs_type_perm_enforcement_flag_microphone"

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    invoke-direct/range {v19 .. v29}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v19, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MICROPHONE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 490
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v7, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_HEALTH"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    invoke-direct {v7, v2, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    new-instance v8, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    .line 500
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->getAllowedHealthPermissions()[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    move-result-object v2

    invoke-direct {v8, v2, v13}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/4 v11, 0x0

    const/16 v2, 0x100

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-string v9, "fgs_type_perm_enforcement_flag_health"

    invoke-direct/range {v1 .. v11}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v1, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_HEALTH:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 527
    new-instance v15, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_REMOTE_MESSAGING"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    invoke-direct {v1, v2, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v16, 0x200

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0

    const-string v23, "fgs_type_perm_enforcement_flag_remote_messaging"

    move-object/from16 v21, v1

    invoke-direct/range {v15 .. v25}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v15, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_REMOTE_MESSAGING:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 546
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v7, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_SYSTEM_EXEMPTED"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    invoke-direct {v7, v2, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    new-instance v8, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v14, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.USE_EXACT_ALARM"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$AppOpPermission;

    const/16 v4, 0x2f

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$AppOpPermission;-><init>(I)V

    aput-object v3, v2, v12

    invoke-direct {v8, v2, v13}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/16 v2, 0x400

    const-wide/16 v3, 0x0

    const-string v9, "fgs_type_perm_enforcement_flag_system_exempted"

    invoke-direct/range {v1 .. v11}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v1, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SYSTEM_EXEMPTED:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 569
    new-instance v2, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    const/4 v12, 0x0

    const/16 v3, 0x800

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v2, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SHORT_SERVICE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 586
    new-instance v14, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_FILE_MANAGEMENT"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    invoke-direct {v1, v2, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v15, 0x1000

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v1

    invoke-direct/range {v14 .. v24}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v14, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_FILE_MANAGEMENT:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 605
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v7, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v2, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_MEDIA_PROCESSING"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v13

    invoke-direct {v7, v2, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/4 v10, 0x1

    const/16 v2, 0x2000

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v1 .. v11}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v1, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PROCESSING:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 625
    new-instance v2, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    new-instance v8, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    new-array v1, v0, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    new-instance v3, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v4, "android.permission.FOREGROUND_SERVICE_SPECIAL_USE"

    invoke-direct {v3, v4}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v13

    invoke-direct {v8, v1, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;-><init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V

    const/4 v11, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string v10, "fgs_type_perm_enforcement_flag_special_use"

    invoke-direct/range {v2 .. v12}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;-><init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V

    sput-object v2, Landroid/app/ForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SPECIAL_USE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 752
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ForegroundServiceTypePolicy;->sDefaultForegroundServiceTypePolicy:Landroid/app/ForegroundServiceTypePolicy;

    .line 754
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ForegroundServiceTypePolicy;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    return-void
.end method

.method private static blacklist getAllowedHealthPermissions()[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
    .registers 3

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v0, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;>;"
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v2, "android.permission.ACTIVITY_RECOGNITION"

    invoke-direct {v1, v2}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v2, "android.permission.HIGH_SAMPLING_RATE_SENSORS"

    invoke-direct {v1, v2}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 512
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v2, "android.permission.health.READ_HEART_RATE"

    invoke-direct {v1, v2}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v2, "android.permission.health.READ_SKIN_TEMPERATURE"

    invoke-direct {v1, v2}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v2, "android.permission.health.READ_OXYGEN_SATURATION"

    invoke-direct {v1, v2}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 516
    :cond_3e
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;

    const-string v2, "android.permission.BODY_SENSORS"

    invoke-direct {v1, v2}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    :goto_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    return-object v1
.end method

.method public static blacklist getDefaultPolicy()Landroid/app/ForegroundServiceTypePolicy;
    .registers 2

    .line 760
    sget-object v0, Landroid/app/ForegroundServiceTypePolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_3
    sget-object v1, Landroid/app/ForegroundServiceTypePolicy;->sDefaultForegroundServiceTypePolicy:Landroid/app/ForegroundServiceTypePolicy;

    if-nez v1, :cond_e

    .line 762
    new-instance v1, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;

    invoke-direct {v1}, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;-><init>()V

    sput-object v1, Landroid/app/ForegroundServiceTypePolicy;->sDefaultForegroundServiceTypePolicy:Landroid/app/ForegroundServiceTypePolicy;

    .line 764
    :cond_e
    sget-object v1, Landroid/app/ForegroundServiceTypePolicy;->sDefaultForegroundServiceTypePolicy:Landroid/app/ForegroundServiceTypePolicy;

    monitor-exit v0

    return-object v1

    .line 765
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static blacklist isFgsTypeFgPermissionEnforcementEnabled()Z
    .registers 3

    .line 769
    const-string v0, "fgs_type_fg_perm_enforcement_flag"

    const/4 v1, 0x1

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract blacklist checkForegroundServiceTypePolicy(Landroid/content/Context;Ljava/lang/String;IIZLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;)I
.end method

.method public abstract blacklist getForegroundServiceTypePolicyInfo(II)Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;
.end method

.method public abstract blacklist updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V
.end method
