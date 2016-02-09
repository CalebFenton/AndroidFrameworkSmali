.class public abstract Landroid/content/pm/PackageManager;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManager$NameNotFoundException;,
        Landroid/content/pm/PackageManager$OnPermissionsChangedListener;,
        Landroid/content/pm/PackageManager$MoveCallback;,
        Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;,
        Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAN_EXTERNAL_STORAGE:Ljava/lang/String; = "android.content.pm.CLEAN_EXTERNAL_STORAGE"

.field public static final ACTION_REQUEST_PERMISSIONS:Ljava/lang/String; = "android.content.pm.action.REQUEST_PERMISSIONS"

.field public static final COMPONENT_ENABLED_STATE_DEFAULT:I = 0x0

.field public static final COMPONENT_ENABLED_STATE_DISABLED:I = 0x2

.field public static final COMPONENT_ENABLED_STATE_DISABLED_UNTIL_USED:I = 0x4

.field public static final COMPONENT_ENABLED_STATE_DISABLED_USER:I = 0x3

.field public static final COMPONENT_ENABLED_STATE_ENABLED:I = 0x1

.field public static final DELETE_ALL_USERS:I = 0x2

.field public static final DELETE_FAILED_ABORTED:I = -0x5

.field public static final DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field public static final DELETE_FAILED_INTERNAL_ERROR:I = -0x1

.field public static final DELETE_FAILED_OWNER_BLOCKED:I = -0x4

.field public static final DELETE_FAILED_USER_RESTRICTED:I = -0x3

.field public static final DELETE_KEEP_DATA:I = 0x1

.field public static final DELETE_SUCCEEDED:I = 0x1

.field public static final DELETE_SYSTEM_APP:I = 0x4

.field public static final DONT_KILL_APP:I = 0x1

.field public static final EXTRA_FAILURE_EXISTING_PACKAGE:Ljava/lang/String; = "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

.field public static final EXTRA_FAILURE_EXISTING_PERMISSION:Ljava/lang/String; = "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

.field public static final EXTRA_INTENT_FILTER_VERIFICATION_HOSTS:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_HOSTS"

.field public static final EXTRA_INTENT_FILTER_VERIFICATION_ID:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_ID"

.field public static final EXTRA_INTENT_FILTER_VERIFICATION_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_PACKAGE_NAME"

.field public static final EXTRA_INTENT_FILTER_VERIFICATION_URI_SCHEME:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_URI_SCHEME"

.field public static final EXTRA_MOVE_ID:Ljava/lang/String; = "android.content.pm.extra.MOVE_ID"

.field public static final EXTRA_REQUEST_PERMISSIONS_NAMES:Ljava/lang/String; = "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

.field public static final EXTRA_REQUEST_PERMISSIONS_RESULTS:Ljava/lang/String; = "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

.field public static final EXTRA_VERIFICATION_ID:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_ID"

.field public static final EXTRA_VERIFICATION_INSTALLER_PACKAGE:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

.field public static final EXTRA_VERIFICATION_INSTALLER_UID:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

.field public static final EXTRA_VERIFICATION_INSTALL_FLAGS:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

.field public static final EXTRA_VERIFICATION_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

.field public static final EXTRA_VERIFICATION_RESULT:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_RESULT"

.field public static final EXTRA_VERIFICATION_URI:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_URI"

.field public static final EXTRA_VERIFICATION_VERSION_CODE:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_VERSION_CODE"

.field public static final FEATURE_APP_WIDGETS:Ljava/lang/String; = "android.software.app_widgets"

.field public static final FEATURE_AUDIO_LOW_LATENCY:Ljava/lang/String; = "android.hardware.audio.low_latency"

.field public static final FEATURE_AUDIO_OUTPUT:Ljava/lang/String; = "android.hardware.audio.output"

.field public static final FEATURE_AUDIO_PRO:Ljava/lang/String; = "android.hardware.audio.pro"

.field public static final FEATURE_AUTOMOTIVE:Ljava/lang/String; = "android.hardware.type.automotive"

.field public static final FEATURE_BACKUP:Ljava/lang/String; = "android.software.backup"

.field public static final FEATURE_BLUETOOTH:Ljava/lang/String; = "android.hardware.bluetooth"

.field public static final FEATURE_BLUETOOTH_LE:Ljava/lang/String; = "android.hardware.bluetooth_le"

.field public static final FEATURE_CAMERA:Ljava/lang/String; = "android.hardware.camera"

.field public static final FEATURE_CAMERA_ANY:Ljava/lang/String; = "android.hardware.camera.any"

.field public static final FEATURE_CAMERA_AUTOFOCUS:Ljava/lang/String; = "android.hardware.camera.autofocus"

.field public static final FEATURE_CAMERA_CAPABILITY_MANUAL_POST_PROCESSING:Ljava/lang/String; = "android.hardware.camera.capability.manual_post_processing"

.field public static final FEATURE_CAMERA_CAPABILITY_MANUAL_SENSOR:Ljava/lang/String; = "android.hardware.camera.capability.manual_sensor"

.field public static final FEATURE_CAMERA_CAPABILITY_RAW:Ljava/lang/String; = "android.hardware.camera.capability.raw"

.field public static final FEATURE_CAMERA_EXTERNAL:Ljava/lang/String; = "android.hardware.camera.external"

.field public static final FEATURE_CAMERA_FLASH:Ljava/lang/String; = "android.hardware.camera.flash"

.field public static final FEATURE_CAMERA_FRONT:Ljava/lang/String; = "android.hardware.camera.front"

.field public static final FEATURE_CAMERA_LEVEL_FULL:Ljava/lang/String; = "android.hardware.camera.level.full"

.field public static final FEATURE_CONNECTION_SERVICE:Ljava/lang/String; = "android.software.connectionservice"

.field public static final FEATURE_CONSUMER_IR:Ljava/lang/String; = "android.hardware.consumerir"

.field public static final FEATURE_DEVICE_ADMIN:Ljava/lang/String; = "android.software.device_admin"

.field public static final FEATURE_ETHERNET:Ljava/lang/String; = "android.hardware.ethernet"

.field public static final FEATURE_FAKETOUCH:Ljava/lang/String; = "android.hardware.faketouch"

.field public static final FEATURE_FAKETOUCH_MULTITOUCH_DISTINCT:Ljava/lang/String; = "android.hardware.faketouch.multitouch.distinct"

.field public static final FEATURE_FAKETOUCH_MULTITOUCH_JAZZHAND:Ljava/lang/String; = "android.hardware.faketouch.multitouch.jazzhand"

.field public static final FEATURE_FINGERPRINT:Ljava/lang/String; = "android.hardware.fingerprint"

.field public static final FEATURE_GAMEPAD:Ljava/lang/String; = "android.hardware.gamepad"

.field public static final FEATURE_HDMI_CEC:Ljava/lang/String; = "android.hardware.hdmi.cec"

.field public static final FEATURE_HIFI_SENSORS:Ljava/lang/String; = "android.hardware.sensor.hifi_sensors"

.field public static final FEATURE_HOME_SCREEN:Ljava/lang/String; = "android.software.home_screen"

.field public static final FEATURE_INPUT_METHODS:Ljava/lang/String; = "android.software.input_methods"

.field public static final FEATURE_LEANBACK:Ljava/lang/String; = "android.software.leanback"

.field public static final FEATURE_LEANBACK_ONLY:Ljava/lang/String; = "android.software.leanback_only"

.field public static final FEATURE_LIVE_TV:Ljava/lang/String; = "android.software.live_tv"

.field public static final FEATURE_LIVE_WALLPAPER:Ljava/lang/String; = "android.software.live_wallpaper"

.field public static final FEATURE_LOCATION:Ljava/lang/String; = "android.hardware.location"

.field public static final FEATURE_LOCATION_GPS:Ljava/lang/String; = "android.hardware.location.gps"

.field public static final FEATURE_LOCATION_NETWORK:Ljava/lang/String; = "android.hardware.location.network"

.field public static final FEATURE_MANAGED_PROFILES:Ljava/lang/String; = "android.software.managed_users"

.field public static final FEATURE_MANAGED_USERS:Ljava/lang/String; = "android.software.managed_users"

.field public static final FEATURE_MICROPHONE:Ljava/lang/String; = "android.hardware.microphone"

.field public static final FEATURE_MIDI:Ljava/lang/String; = "android.software.midi"

.field public static final FEATURE_NFC:Ljava/lang/String; = "android.hardware.nfc"

.field public static final FEATURE_NFC_HCE:Ljava/lang/String; = "android.hardware.nfc.hce"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_NFC_HOST_CARD_EMULATION:Ljava/lang/String; = "android.hardware.nfc.hce"

.field public static final FEATURE_OPENGLES_EXTENSION_PACK:Ljava/lang/String; = "android.hardware.opengles.aep"

.field public static final FEATURE_PRINTING:Ljava/lang/String; = "android.software.print"

.field public static final FEATURE_SCREEN_LANDSCAPE:Ljava/lang/String; = "android.hardware.screen.landscape"

.field public static final FEATURE_SCREEN_PORTRAIT:Ljava/lang/String; = "android.hardware.screen.portrait"

.field public static final FEATURE_SECURELY_REMOVES_USERS:Ljava/lang/String; = "android.software.securely_removes_users"

.field public static final FEATURE_SENSOR_ACCELEROMETER:Ljava/lang/String; = "android.hardware.sensor.accelerometer"

.field public static final FEATURE_SENSOR_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.hardware.sensor.ambient_temperature"

.field public static final FEATURE_SENSOR_BAROMETER:Ljava/lang/String; = "android.hardware.sensor.barometer"

.field public static final FEATURE_SENSOR_COMPASS:Ljava/lang/String; = "android.hardware.sensor.compass"

.field public static final FEATURE_SENSOR_GYROSCOPE:Ljava/lang/String; = "android.hardware.sensor.gyroscope"

.field public static final FEATURE_SENSOR_HEART_RATE:Ljava/lang/String; = "android.hardware.sensor.heartrate"

.field public static final FEATURE_SENSOR_HEART_RATE_ECG:Ljava/lang/String; = "android.hardware.sensor.heartrate.ecg"

.field public static final FEATURE_SENSOR_LIGHT:Ljava/lang/String; = "android.hardware.sensor.light"

.field public static final FEATURE_SENSOR_PROXIMITY:Ljava/lang/String; = "android.hardware.sensor.proximity"

.field public static final FEATURE_SENSOR_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.hardware.sensor.relative_humidity"

.field public static final FEATURE_SENSOR_STEP_COUNTER:Ljava/lang/String; = "android.hardware.sensor.stepcounter"

.field public static final FEATURE_SENSOR_STEP_DETECTOR:Ljava/lang/String; = "android.hardware.sensor.stepdetector"

.field public static final FEATURE_SIP:Ljava/lang/String; = "android.software.sip"

.field public static final FEATURE_SIP_VOIP:Ljava/lang/String; = "android.software.sip.voip"

.field public static final FEATURE_TELEPHONY:Ljava/lang/String; = "android.hardware.telephony"

.field public static final FEATURE_TELEPHONY_CDMA:Ljava/lang/String; = "android.hardware.telephony.cdma"

.field public static final FEATURE_TELEPHONY_GSM:Ljava/lang/String; = "android.hardware.telephony.gsm"

.field public static final FEATURE_TELEVISION:Ljava/lang/String; = "android.hardware.type.television"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_TOUCHSCREEN:Ljava/lang/String; = "android.hardware.touchscreen"

.field public static final FEATURE_TOUCHSCREEN_MULTITOUCH:Ljava/lang/String; = "android.hardware.touchscreen.multitouch"

.field public static final FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT:Ljava/lang/String; = "android.hardware.touchscreen.multitouch.distinct"

.field public static final FEATURE_TOUCHSCREEN_MULTITOUCH_JAZZHAND:Ljava/lang/String; = "android.hardware.touchscreen.multitouch.jazzhand"

.field public static final FEATURE_USB_ACCESSORY:Ljava/lang/String; = "android.hardware.usb.accessory"

.field public static final FEATURE_USB_HOST:Ljava/lang/String; = "android.hardware.usb.host"

.field public static final FEATURE_VERIFIED_BOOT:Ljava/lang/String; = "android.software.verified_boot"

.field public static final FEATURE_VOICE_RECOGNIZERS:Ljava/lang/String; = "android.software.voice_recognizers"

.field public static final FEATURE_WATCH:Ljava/lang/String; = "android.hardware.type.watch"

.field public static final FEATURE_WEBVIEW:Ljava/lang/String; = "android.software.webview"

.field public static final FEATURE_WIFI:Ljava/lang/String; = "android.hardware.wifi"

.field public static final FEATURE_WIFI_DIRECT:Ljava/lang/String; = "android.hardware.wifi.direct"

.field public static final FLAG_PERMISSION_GRANTED_BY_DEFAULT:I = 0x20

.field public static final FLAG_PERMISSION_POLICY_FIXED:I = 0x4

.field public static final FLAG_PERMISSION_REVOKE_ON_UPGRADE:I = 0x8

.field public static final FLAG_PERMISSION_SYSTEM_FIXED:I = 0x10

.field public static final FLAG_PERMISSION_USER_FIXED:I = 0x2

.field public static final FLAG_PERMISSION_USER_SET:I = 0x1

.field public static final GET_ACTIVITIES:I = 0x1

.field public static final GET_CONFIGURATIONS:I = 0x4000

.field public static final GET_DISABLED_COMPONENTS:I = 0x200

.field public static final GET_DISABLED_UNTIL_USED_COMPONENTS:I = 0x8000

.field public static final GET_GIDS:I = 0x100

.field public static final GET_INSTRUMENTATION:I = 0x10

.field public static final GET_INTENT_FILTERS:I = 0x20

.field public static final GET_META_DATA:I = 0x80

.field public static final GET_PERMISSIONS:I = 0x1000

.field public static final GET_PROVIDERS:I = 0x8

.field public static final GET_RECEIVERS:I = 0x2

.field public static final GET_RESOLVED_FILTER:I = 0x40

.field public static final GET_SERVICES:I = 0x4

.field public static final GET_SHARED_LIBRARY_FILES:I = 0x400

.field public static final GET_SIGNATURES:I = 0x40

.field public static final GET_UNINSTALLED_PACKAGES:I = 0x2000

.field public static final GET_URI_PERMISSION_PATTERNS:I = 0x800

.field public static final INSTALL_ALLOW_DOWNGRADE:I = 0x80

.field public static final INSTALL_ALLOW_TEST:I = 0x4

.field public static final INSTALL_ALL_USERS:I = 0x40

.field public static final INSTALL_EXTERNAL:I = 0x8

.field public static final INSTALL_FAILED_ABORTED:I = -0x73

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field public static final INSTALL_FAILED_CONTAINER_ERROR:I = -0x12

.field public static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field public static final INSTALL_FAILED_DEXOPT:I = -0xb

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_DUPLICATE_PERMISSION:I = -0x70

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14

.field public static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field public static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field public static final INSTALL_FAILED_NEWER_SDK:I = -0xe

.field public static final INSTALL_FAILED_NO_MATCHING_ABIS:I = -0x71

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_PACKAGE_CHANGED:I = -0x17

.field public static final INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE:I = -0x1a

.field public static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field public static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field public static final INSTALL_FAILED_TEST_ONLY:I = -0xf

.field public static final INSTALL_FAILED_UID_CHANGED:I = -0x18

.field public static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field public static final INSTALL_FAILED_USER_RESTRICTED:I = -0x6f

.field public static final INSTALL_FAILED_VERIFICATION_FAILURE:I = -0x16

.field public static final INSTALL_FAILED_VERIFICATION_TIMEOUT:I = -0x15

.field public static final INSTALL_FAILED_VERSION_DOWNGRADE:I = -0x19

.field public static final INSTALL_FORCE_VOLUME_UUID:I = 0x200

.field public static final INSTALL_FORWARD_LOCK:I = 0x1

.field public static final INSTALL_FROM_ADB:I = 0x20

.field public static final INSTALL_GRANT_RUNTIME_PERMISSIONS:I = 0x100

.field public static final INSTALL_INTERNAL:I = 0x10

.field public static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65

.field public static final INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a

.field public static final INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b

.field public static final INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69

.field public static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field public static final INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d

.field public static final INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field public static final INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67

.field public static final INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66

.field public static final INSTALL_REPLACE_EXISTING:I = 0x2

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_ALWAYS:I = 0x2

.field public static final INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_ASK:I = 0x1

.field public static final INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_NEVER:I = 0x3

.field public static final INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_UNDEFINED:I = 0x0

.field public static final INTENT_FILTER_VERIFICATION_FAILURE:I = -0x1

.field public static final INTENT_FILTER_VERIFICATION_SUCCESS:I = 0x1

.field public static final MASK_PERMISSION_FLAGS:I = 0xff

.field public static final MATCH_ALL:I = 0x20000

.field public static final MATCH_DEFAULT_ONLY:I = 0x10000

.field public static final MAXIMUM_VERIFICATION_TIMEOUT:J = 0x36ee80L

.field public static final MOVE_EXTERNAL_MEDIA:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOVE_FAILED_DOESNT_EXIST:I = -0x2

.field public static final MOVE_FAILED_FORWARD_LOCKED:I = -0x4

.field public static final MOVE_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final MOVE_FAILED_INTERNAL_ERROR:I = -0x6

.field public static final MOVE_FAILED_INVALID_LOCATION:I = -0x5

.field public static final MOVE_FAILED_OPERATION_PENDING:I = -0x7

.field public static final MOVE_FAILED_SYSTEM_PACKAGE:I = -0x3

.field public static final MOVE_INTERNAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOVE_SUCCEEDED:I = -0x64

.field public static final NO_NATIVE_LIBRARIES:I = -0x72

.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_GRANTED:I = 0x0

.field public static final SIGNATURE_FIRST_NOT_SIGNED:I = -0x1

.field public static final SIGNATURE_MATCH:I = 0x0

.field public static final SIGNATURE_NEITHER_SIGNED:I = 0x1

.field public static final SIGNATURE_NO_MATCH:I = -0x3

.field public static final SIGNATURE_SECOND_NOT_SIGNED:I = -0x2

.field public static final SIGNATURE_UNKNOWN_PACKAGE:I = -0x4

.field public static final SKIP_CURRENT_PROFILE:I = 0x2

.field public static final VERIFICATION_ALLOW:I = 0x1

.field public static final VERIFICATION_ALLOW_WITHOUT_SUFFICIENT:I = 0x2

.field public static final VERIFICATION_REJECT:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static deleteStatusToPublicStatus(I)I
    .locals 2
    .param p0, "status"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x2

    #@2
    .line 4640
    packed-switch p0, :pswitch_data_0

    #@5
    .line 4647
    :pswitch_0
    return v1

    #@6
    .line 4641
    :pswitch_1
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 4642
    :pswitch_2
    return v1

    #@9
    .line 4643
    :pswitch_3
    return v0

    #@a
    .line 4644
    :pswitch_4
    return v0

    #@b
    .line 4645
    :pswitch_5
    return v0

    #@c
    .line 4646
    :pswitch_6
    const/4 v0, 0x3

    #@d
    return v0

    #@e
    .line 4640
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static deleteStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    #@0
    .prologue
    .line 4627
    packed-switch p0, :pswitch_data_0

    #@3
    .line 4634
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 4628
    :pswitch_1
    const-string/jumbo v0, "DELETE_SUCCEEDED"

    #@b
    return-object v0

    #@c
    .line 4629
    :pswitch_2
    const-string/jumbo v0, "DELETE_FAILED_INTERNAL_ERROR"

    #@f
    return-object v0

    #@10
    .line 4630
    :pswitch_3
    const-string/jumbo v0, "DELETE_FAILED_DEVICE_POLICY_MANAGER"

    #@13
    return-object v0

    #@14
    .line 4631
    :pswitch_4
    const-string/jumbo v0, "DELETE_FAILED_USER_RESTRICTED"

    #@17
    return-object v0

    #@18
    .line 4632
    :pswitch_5
    const-string/jumbo v0, "DELETE_FAILED_OWNER_BLOCKED"

    #@1b
    return-object v0

    #@1c
    .line 4633
    :pswitch_6
    const-string/jumbo v0, "DELETE_FAILED_ABORTED"

    #@1f
    return-object v0

    #@20
    .line 4627
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static deleteStatusToString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "status"    # I
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4617
    invoke-static {p0}, Landroid/content/pm/PackageManager;->deleteStatusToString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 4618
    .local v0, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@6
    .line 4619
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, ": "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1

    #@1f
    .line 4621
    :cond_0
    return-object v0
.end method

.method public static installStatusToPublicStatus(I)I
    .locals 5
    .param p0, "status"    # I

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x6

    #@2
    const/4 v2, 0x7

    #@3
    const/4 v1, 0x5

    #@4
    const/4 v0, 0x4

    #@5
    .line 4568
    sparse-switch p0, :sswitch_data_0

    #@8
    .line 4611
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 4569
    :sswitch_0
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 4570
    :sswitch_1
    return v1

    #@d
    .line 4571
    :sswitch_2
    return v0

    #@e
    .line 4572
    :sswitch_3
    return v0

    #@f
    .line 4573
    :sswitch_4
    return v3

    #@10
    .line 4574
    :sswitch_5
    return v1

    #@11
    .line 4575
    :sswitch_6
    return v1

    #@12
    .line 4576
    :sswitch_7
    return v1

    #@13
    .line 4577
    :sswitch_8
    return v1

    #@14
    .line 4578
    :sswitch_9
    return v2

    #@15
    .line 4579
    :sswitch_a
    return v1

    #@16
    .line 4580
    :sswitch_b
    return v0

    #@17
    .line 4581
    :sswitch_c
    return v2

    #@18
    .line 4582
    :sswitch_d
    return v1

    #@19
    .line 4583
    :sswitch_e
    return v2

    #@1a
    .line 4584
    :sswitch_f
    return v0

    #@1b
    .line 4585
    :sswitch_10
    return v2

    #@1c
    .line 4586
    :sswitch_11
    return v2

    #@1d
    .line 4587
    :sswitch_12
    return v3

    #@1e
    .line 4588
    :sswitch_13
    return v3

    #@1f
    .line 4589
    :sswitch_14
    return v3

    #@20
    .line 4590
    :sswitch_15
    return v4

    #@21
    .line 4591
    :sswitch_16
    return v4

    #@22
    .line 4592
    :sswitch_17
    return v0

    #@23
    .line 4593
    :sswitch_18
    return v0

    #@24
    .line 4594
    :sswitch_19
    return v0

    #@25
    .line 4595
    :sswitch_1a
    return v0

    #@26
    .line 4596
    :sswitch_1b
    return v0

    #@27
    .line 4597
    :sswitch_1c
    return v0

    #@28
    .line 4598
    :sswitch_1d
    return v0

    #@29
    .line 4599
    :sswitch_1e
    return v0

    #@2a
    .line 4600
    :sswitch_1f
    return v0

    #@2b
    .line 4601
    :sswitch_20
    return v0

    #@2c
    .line 4602
    :sswitch_21
    return v0

    #@2d
    .line 4603
    :sswitch_22
    return v0

    #@2e
    .line 4604
    :sswitch_23
    return v0

    #@2f
    .line 4605
    :sswitch_24
    return v0

    #@30
    .line 4606
    :sswitch_25
    const/4 v0, 0x1

    #@31
    return v0

    #@32
    .line 4607
    :sswitch_26
    return v2

    #@33
    .line 4608
    :sswitch_27
    return v1

    #@34
    .line 4609
    :sswitch_28
    return v2

    #@35
    .line 4610
    :sswitch_29
    return v4

    #@36
    .line 4568
    :sswitch_data_0
    .sparse-switch
        -0x73 -> :sswitch_29
        -0x71 -> :sswitch_28
        -0x70 -> :sswitch_27
        -0x6f -> :sswitch_26
        -0x6e -> :sswitch_25
        -0x6d -> :sswitch_24
        -0x6c -> :sswitch_23
        -0x6b -> :sswitch_22
        -0x6a -> :sswitch_21
        -0x69 -> :sswitch_20
        -0x68 -> :sswitch_1f
        -0x67 -> :sswitch_1e
        -0x66 -> :sswitch_1d
        -0x65 -> :sswitch_1c
        -0x64 -> :sswitch_1b
        -0x1a -> :sswitch_1a
        -0x19 -> :sswitch_19
        -0x18 -> :sswitch_18
        -0x17 -> :sswitch_17
        -0x16 -> :sswitch_16
        -0x15 -> :sswitch_15
        -0x14 -> :sswitch_14
        -0x13 -> :sswitch_13
        -0x12 -> :sswitch_12
        -0x11 -> :sswitch_11
        -0x10 -> :sswitch_10
        -0xf -> :sswitch_f
        -0xe -> :sswitch_e
        -0xd -> :sswitch_d
        -0xc -> :sswitch_c
        -0xb -> :sswitch_b
        -0xa -> :sswitch_a
        -0x9 -> :sswitch_9
        -0x8 -> :sswitch_8
        -0x7 -> :sswitch_7
        -0x6 -> :sswitch_6
        -0x5 -> :sswitch_5
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static installStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    #@0
    .prologue
    .line 4520
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 4562
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 4521
    :sswitch_0
    const-string/jumbo v0, "INSTALL_SUCCEEDED"

    #@b
    return-object v0

    #@c
    .line 4522
    :sswitch_1
    const-string/jumbo v0, "INSTALL_FAILED_ALREADY_EXISTS"

    #@f
    return-object v0

    #@10
    .line 4523
    :sswitch_2
    const-string/jumbo v0, "INSTALL_FAILED_INVALID_APK"

    #@13
    return-object v0

    #@14
    .line 4524
    :sswitch_3
    const-string/jumbo v0, "INSTALL_FAILED_INVALID_URI"

    #@17
    return-object v0

    #@18
    .line 4525
    :sswitch_4
    const-string/jumbo v0, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    #@1b
    return-object v0

    #@1c
    .line 4526
    :sswitch_5
    const-string/jumbo v0, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    #@1f
    return-object v0

    #@20
    .line 4527
    :sswitch_6
    const-string/jumbo v0, "INSTALL_FAILED_NO_SHARED_USER"

    #@23
    return-object v0

    #@24
    .line 4528
    :sswitch_7
    const-string/jumbo v0, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    #@27
    return-object v0

    #@28
    .line 4529
    :sswitch_8
    const-string/jumbo v0, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    #@2b
    return-object v0

    #@2c
    .line 4530
    :sswitch_9
    const-string/jumbo v0, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    #@2f
    return-object v0

    #@30
    .line 4531
    :sswitch_a
    const-string/jumbo v0, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    #@33
    return-object v0

    #@34
    .line 4532
    :sswitch_b
    const-string/jumbo v0, "INSTALL_FAILED_DEXOPT"

    #@37
    return-object v0

    #@38
    .line 4533
    :sswitch_c
    const-string/jumbo v0, "INSTALL_FAILED_OLDER_SDK"

    #@3b
    return-object v0

    #@3c
    .line 4534
    :sswitch_d
    const-string/jumbo v0, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    #@3f
    return-object v0

    #@40
    .line 4535
    :sswitch_e
    const-string/jumbo v0, "INSTALL_FAILED_NEWER_SDK"

    #@43
    return-object v0

    #@44
    .line 4536
    :sswitch_f
    const-string/jumbo v0, "INSTALL_FAILED_TEST_ONLY"

    #@47
    return-object v0

    #@48
    .line 4537
    :sswitch_10
    const-string/jumbo v0, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    #@4b
    return-object v0

    #@4c
    .line 4538
    :sswitch_11
    const-string/jumbo v0, "INSTALL_FAILED_MISSING_FEATURE"

    #@4f
    return-object v0

    #@50
    .line 4539
    :sswitch_12
    const-string/jumbo v0, "INSTALL_FAILED_CONTAINER_ERROR"

    #@53
    return-object v0

    #@54
    .line 4540
    :sswitch_13
    const-string/jumbo v0, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    #@57
    return-object v0

    #@58
    .line 4541
    :sswitch_14
    const-string/jumbo v0, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    #@5b
    return-object v0

    #@5c
    .line 4542
    :sswitch_15
    const-string/jumbo v0, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    #@5f
    return-object v0

    #@60
    .line 4543
    :sswitch_16
    const-string/jumbo v0, "INSTALL_FAILED_VERIFICATION_FAILURE"

    #@63
    return-object v0

    #@64
    .line 4544
    :sswitch_17
    const-string/jumbo v0, "INSTALL_FAILED_PACKAGE_CHANGED"

    #@67
    return-object v0

    #@68
    .line 4545
    :sswitch_18
    const-string/jumbo v0, "INSTALL_FAILED_UID_CHANGED"

    #@6b
    return-object v0

    #@6c
    .line 4546
    :sswitch_19
    const-string/jumbo v0, "INSTALL_FAILED_VERSION_DOWNGRADE"

    #@6f
    return-object v0

    #@70
    .line 4547
    :sswitch_1a
    const-string/jumbo v0, "INSTALL_PARSE_FAILED_NOT_APK"

    #@73
    return-object v0

    #@74
    .line 4548
    :sswitch_1b
    const-string/jumbo v0, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    #@77
    return-object v0

    #@78
    .line 4549
    :sswitch_1c
    const-string/jumbo v0, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    #@7b
    return-object v0

    #@7c
    .line 4550
    :sswitch_1d
    const-string/jumbo v0, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    #@7f
    return-object v0

    #@80
    .line 4551
    :sswitch_1e
    const-string/jumbo v0, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    #@83
    return-object v0

    #@84
    .line 4552
    :sswitch_1f
    const-string/jumbo v0, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    #@87
    return-object v0

    #@88
    .line 4553
    :sswitch_20
    const-string/jumbo v0, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    #@8b
    return-object v0

    #@8c
    .line 4554
    :sswitch_21
    const-string/jumbo v0, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    #@8f
    return-object v0

    #@90
    .line 4555
    :sswitch_22
    const-string/jumbo v0, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    #@93
    return-object v0

    #@94
    .line 4556
    :sswitch_23
    const-string/jumbo v0, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    #@97
    return-object v0

    #@98
    .line 4557
    :sswitch_24
    const-string/jumbo v0, "INSTALL_FAILED_INTERNAL_ERROR"

    #@9b
    return-object v0

    #@9c
    .line 4558
    :sswitch_25
    const-string/jumbo v0, "INSTALL_FAILED_USER_RESTRICTED"

    #@9f
    return-object v0

    #@a0
    .line 4559
    :sswitch_26
    const-string/jumbo v0, "INSTALL_FAILED_DUPLICATE_PERMISSION"

    #@a3
    return-object v0

    #@a4
    .line 4560
    :sswitch_27
    const-string/jumbo v0, "INSTALL_FAILED_NO_MATCHING_ABIS"

    #@a7
    return-object v0

    #@a8
    .line 4561
    :sswitch_28
    const-string/jumbo v0, "INSTALL_FAILED_ABORTED"

    #@ab
    return-object v0

    #@ac
    .line 4520
    :sswitch_data_0
    .sparse-switch
        -0x73 -> :sswitch_28
        -0x71 -> :sswitch_27
        -0x70 -> :sswitch_26
        -0x6f -> :sswitch_25
        -0x6e -> :sswitch_24
        -0x6d -> :sswitch_23
        -0x6c -> :sswitch_22
        -0x6b -> :sswitch_21
        -0x6a -> :sswitch_20
        -0x69 -> :sswitch_1f
        -0x68 -> :sswitch_1e
        -0x67 -> :sswitch_1d
        -0x66 -> :sswitch_1c
        -0x65 -> :sswitch_1b
        -0x64 -> :sswitch_1a
        -0x19 -> :sswitch_19
        -0x18 -> :sswitch_18
        -0x17 -> :sswitch_17
        -0x16 -> :sswitch_16
        -0x15 -> :sswitch_15
        -0x14 -> :sswitch_14
        -0x13 -> :sswitch_13
        -0x12 -> :sswitch_12
        -0x11 -> :sswitch_11
        -0x10 -> :sswitch_10
        -0xf -> :sswitch_f
        -0xe -> :sswitch_e
        -0xd -> :sswitch_d
        -0xc -> :sswitch_c
        -0xb -> :sswitch_b
        -0xa -> :sswitch_a
        -0x9 -> :sswitch_9
        -0x8 -> :sswitch_8
        -0x7 -> :sswitch_7
        -0x6 -> :sswitch_6
        -0x5 -> :sswitch_5
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static installStatusToString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "status"    # I
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4510
    invoke-static {p0}, Landroid/content/pm/PackageManager;->installStatusToString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 4511
    .local v0, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@6
    .line 4512
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, ": "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1

    #@1f
    .line 4514
    :cond_0
    return-object v0
.end method

.method public static isMoveStatusFinished(I)Z
    .locals 3
    .param p0, "status"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 4421
    if-ltz p0, :cond_0

    #@4
    const/16 v2, 0x64

    #@6
    if-le p0, v2, :cond_1

    #@8
    :cond_0
    :goto_0
    return v0

    #@9
    :cond_1
    move v0, v1

    #@a
    goto :goto_0
.end method

.method public static permissionFlagToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "flag"    # I

    #@0
    .prologue
    .line 4653
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 4660
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 4654
    :sswitch_0
    const-string/jumbo v0, "GRANTED_BY_DEFAULT"

    #@b
    return-object v0

    #@c
    .line 4655
    :sswitch_1
    const-string/jumbo v0, "POLICY_FIXED"

    #@f
    return-object v0

    #@10
    .line 4656
    :sswitch_2
    const-string/jumbo v0, "SYSTEM_FIXED"

    #@13
    return-object v0

    #@14
    .line 4657
    :sswitch_3
    const-string/jumbo v0, "USER_SET"

    #@17
    return-object v0

    #@18
    .line 4658
    :sswitch_4
    const-string/jumbo v0, "REVOKE_ON_UPGRADE"

    #@1b
    return-object v0

    #@1c
    .line 4659
    :sswitch_5
    const-string/jumbo v0, "USER_FIXED"

    #@1f
    return-object v0

    #@20
    .line 4653
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_5
        0x4 -> :sswitch_1
        0x8 -> :sswitch_4
        0x10 -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public abstract addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V
.end method

.method public abstract addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
.end method

.method public abstract addPackageToPreferred(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addPermission(Landroid/content/pm/PermissionInfo;)Z
.end method

.method public abstract addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
.end method

.method public abstract addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 4171
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Not implemented. Must override in a subclass."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2615
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 2616
    new-instance v1, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v2, "permission cannot be null or empty"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 2618
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@11
    const-string/jumbo v1, "android.content.pm.action.REQUEST_PERMISSIONS"

    #@14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@17
    .line 2619
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    #@1a
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    #@1d
    .line 2620
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@24
    .line 2621
    return-object v0
.end method

.method public abstract canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract checkPermission(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract checkSignatures(II)I
.end method

.method public abstract checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract clearCrossProfileIntentFilters(I)V
.end method

.method public abstract clearPackagePreferredActivities(Ljava/lang/String;)V
.end method

.method public abstract currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
.end method

.method public abstract extendVerificationTimeout(IIJ)V
.end method

.method public freeStorage(JLandroid/content/IntentSender;)V
    .locals 1
    .param p1, "freeStorageSize"    # J
    .param p3, "pi"    # Landroid/content/IntentSender;

    #@0
    .prologue
    .line 4056
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V

    #@4
    .line 4055
    return-void
.end method

.method public abstract freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
.end method

.method public freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .locals 1
    .param p1, "freeStorageSize"    # J
    .param p3, "observer"    # Landroid/content/pm/IPackageDataObserver;

    #@0
    .prologue
    .line 4025
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    #@4
    .line 4024
    return-void
.end method

.method public abstract freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPermissionGroups(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getApplicationEnabledSetting(Ljava/lang/String;)I
.end method

.method public abstract getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
.end method

.method public abstract getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getComponentEnabledSetting(Landroid/content/ComponentName;)I
.end method

.method public abstract getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getDefaultBrowserPackageName(I)Ljava/lang/String;
.end method

.method public abstract getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public abstract getInstalledApplications(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledPackages(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIntentVerificationStatus(Ljava/lang/String;I)I
.end method

.method public abstract getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public abstract getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getMoveStatus(I)I
.end method

.method public abstract getNameForUid(I)Ljava/lang/String;
.end method

.method public getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 13
    .param p1, "archiveFilePath"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 3533
    new-instance v11, Landroid/content/pm/PackageParser;

    #@3
    invoke-direct {v11}, Landroid/content/pm/PackageParser;-><init>()V

    #@6
    .line 3534
    .local v11, "parser":Landroid/content/pm/PackageParser;
    new-instance v0, Ljava/io/File;

    #@8
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b
    .line 3536
    .local v0, "apkFile":Ljava/io/File;
    const/4 v2, 0x0

    #@c
    :try_start_0
    invoke-virtual {v11, v0, v2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    #@f
    move-result-object v1

    #@10
    .line 3537
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    and-int/lit8 v2, p2, 0x40

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 3538
    const/4 v2, 0x0

    #@15
    invoke-virtual {v11, v1, v2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V

    #@18
    .line 3539
    invoke-virtual {v11, v1}, Landroid/content/pm/PackageParser;->collectManifestDigest(Landroid/content/pm/PackageParser$Package;)V

    #@1b
    .line 3541
    :cond_0
    new-instance v9, Landroid/content/pm/PackageUserState;

    #@1d
    invoke-direct {v9}, Landroid/content/pm/PackageUserState;-><init>()V

    #@20
    .line 3542
    .local v9, "state":Landroid/content/pm/PackageUserState;
    const-wide/16 v4, 0x0

    #@22
    const-wide/16 v6, 0x0

    #@24
    const/4 v2, 0x0

    #@25
    const/4 v8, 0x0

    #@26
    move v3, p2

    #@27
    invoke-static/range {v1 .. v9}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result-object v2

    #@2b
    return-object v2

    #@2c
    .line 3543
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v9    # "state":Landroid/content/pm/PackageUserState;
    :catch_0
    move-exception v10

    #@2d
    .line 3544
    .local v10, "e":Landroid/content/pm/PackageParser$PackageParserException;
    return-object v12
.end method

.method public abstract getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;
.end method

.method public abstract getPackageGids(Ljava/lang/String;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackageInstaller()Landroid/content/pm/PackageInstaller;
.end method

.method public abstract getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
.end method

.method public getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageStatsObserver;

    #@0
    .prologue
    .line 4090
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    #@7
    .line 4089
    return-void
.end method

.method public abstract getPackageUid(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackagesForUid(I)[Ljava/lang/String;
.end method

.method public abstract getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPermissionControllerPackageName()Ljava/lang/String;
.end method

.method public abstract getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
.end method

.method public abstract getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method public abstract getPreferredPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryStorageCandidateVolumes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;
.end method

.method public abstract getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public abstract getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
.end method

.method public abstract getSystemSharedLibraryNames()[Ljava/lang/String;
.end method

.method public abstract getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract getUidForSharedUser(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
.end method

.method public abstract getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
.end method

.method public abstract getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
.end method

.method public abstract grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract hasSystemFeature(Ljava/lang/String;)Z
.end method

.method public abstract installExistingPackage(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V
.end method

.method public abstract installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
.end method

.method public abstract installPackageWithVerification(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
.end method

.method public abstract installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
.end method

.method public abstract installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
.end method

.method public abstract installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isPackageAvailable(Ljava/lang/String;)Z
.end method

.method public abstract isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isSafeMode()Z
.end method

.method public abstract isSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public abstract isSignedByExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public abstract isUpgrade()Z
.end method

.method public abstract loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I
.end method

.method public movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageMoveObserver;
    .param p3, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4416
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I
.end method

.method public abstract queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V
.end method

.method public abstract removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
.end method

.method public abstract removePackageFromPreferred(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removePermission(Ljava/lang/String;)V
.end method

.method public abstract replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4205
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Not implemented. Must override in a subclass."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public abstract resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract setApplicationEnabledSetting(Ljava/lang/String;II)V
.end method

.method public abstract setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
.end method

.method public abstract setComponentEnabledSetting(Landroid/content/ComponentName;II)V
.end method

.method public abstract setDefaultBrowserPackageName(Ljava/lang/String;I)Z
.end method

.method public abstract setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
.end method

.method public abstract unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V
.end method

.method public abstract updateIntentVerificationStatus(Ljava/lang/String;II)Z
.end method

.method public abstract updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
.end method

.method public abstract verifyIntentFilter(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract verifyPendingInstall(II)V
.end method
