.class public final Lcom/android/internal/pm/SystemFeaturesMetadata;
.super Ljava/lang/Object;
.source "SystemFeaturesMetadata.java"


# static fields
.field public static final blacklist SDK_FEATURE_COUNT:I = 0xba

.field private static final blacklist sFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 188

    .line 18
    new-instance v0, Landroid/util/ArraySet;

    const/16 v1, 0xba

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/android/internal/pm/SystemFeaturesMetadata;->sFeatures:Landroid/util/ArraySet;

    .line 21
    const-string v186, "android.hardware.xr.input.eye_tracking"

    const-string v187, "android.hardware.xr.input.hand_tracking"

    const-string v2, "android.software.activities_on_secondary_displays"

    const-string v3, "android.software.adoptable_storage"

    const-string v4, "android.software.app_compat_overrides"

    const-string v5, "android.software.app_enumeration"

    const-string v6, "android.software.app_widgets"

    const-string v7, "android.hardware.sensor.assist"

    const-string v8, "android.hardware.audio.low_latency"

    const-string v9, "android.hardware.audio.output"

    const-string v10, "android.hardware.audio.pro"

    const-string v11, "android.hardware.audio.spatial.headtracking.low_latency"

    const-string v12, "android.software.autofill"

    const-string v13, "android.hardware.type.automotive"

    const-string v14, "android.software.backup"

    const-string v15, "android.hardware.bluetooth"

    const-string v16, "android.hardware.bluetooth_le"

    const-string v17, "android.hardware.bluetooth_le.channel_sounding"

    const-string v18, "android.hardware.broadcastradio"

    const-string v19, "android.hardware.camera"

    const-string v20, "android.hardware.camera.any"

    const-string v21, "android.hardware.camera.ar"

    const-string v22, "android.hardware.camera.autofocus"

    const-string v23, "android.hardware.camera.capability.manual_post_processing"

    const-string v24, "android.hardware.camera.capability.manual_sensor"

    const-string v25, "android.hardware.camera.capability.raw"

    const-string v26, "android.hardware.camera.concurrent"

    const-string v27, "android.hardware.camera.external"

    const-string v28, "android.hardware.camera.flash"

    const-string v29, "android.hardware.camera.front"

    const-string v30, "android.hardware.camera.level.full"

    const-string v31, "android.software.cant_save_state"

    const-string v32, "android.software.car.display_compatibility"

    const-string v33, "android.software.car.splitscreen_multitasking"

    const-string v34, "android.software.car.templates_host"

    const-string v35, "android.software.communal_mode"

    const-string v36, "android.software.companion_device_setup"

    const-string v37, "android.software.connectionservice"

    const-string v38, "android.hardware.consumerir"

    const-string v39, "android.software.contextualsearch"

    const-string v40, "android.hardware.context_hub"

    const-string v41, "android.software.controls"

    const-string v42, "android.software.credentials"

    const-string v43, "android.software.cts"

    const-string v44, "android.software.device_admin"

    const-string v45, "android.software.device_id_attestation"

    const-string v46, "android.software.device_lock"

    const-string v47, "android.hardware.device_unique_attestation"

    const-string v48, "android.software.dream_overlay"

    const-string v49, "android.hardware.type.embedded"

    const-string v50, "android.software.erofs"

    const-string v51, "android.software.erofs_legacy"

    const-string v52, "android.hardware.ethernet"

    const-string v53, "android.software.expanded_picture_in_picture"

    const-string v54, "android.hardware.biometrics.face"

    const-string v55, "android.hardware.faketouch"

    const-string v56, "android.hardware.faketouch.multitouch.distinct"

    const-string v57, "android.hardware.faketouch.multitouch.jazzhand"

    const-string v58, "android.hardware.felica"

    const-string v59, "android.software.file_based_encryption"

    const-string v60, "android.hardware.fingerprint"

    const-string v61, "android.software.freeform_window_management"

    const-string v62, "android.hardware.gamepad"

    const-string v63, "android.software.game_service"

    const-string v64, "android.hardware.hardware_keystore"

    const-string v65, "android.hardware.hdmi.cec"

    const-string v66, "android.hardware.sensor.hifi_sensors"

    const-string v67, "android.software.home_screen"

    const-string v68, "android.hardware.identity_credential"

    const-string v69, "android.hardware.identity_credential_direct_access"

    const-string v70, "android.software.incremental_delivery"

    const-string v71, "android.software.input_methods"

    const-string v72, "android.software.ipsec_tunnels"

    const-string v73, "android.software.ipsec_tunnel_migration"

    const-string v74, "android.hardware.biometrics.iris"

    const-string v75, "android.hardware.keystore.app_attest_key"

    const-string v76, "android.hardware.keystore.limited_use_key"

    const-string v77, "android.hardware.keystore.single_use_key"

    const-string v78, "android.software.leanback"

    const-string v79, "android.software.leanback_only"

    const-string v80, "android.software.live_tv"

    const-string v81, "android.software.live_wallpaper"

    const-string v82, "android.hardware.location"

    const-string v83, "android.hardware.location.gps"

    const-string v84, "android.hardware.location.network"

    const-string v85, "android.hardware.lowpan"

    const-string v86, "android.software.managed_users"

    const-string v87, "android.hardware.microphone"

    const-string v88, "android.software.midi"

    const-string v89, "android.hardware.nfc"

    const-string v90, "android.hardware.nfc.any"

    const-string v91, "android.sofware.nfc.beam"

    const-string v92, "android.hardware.nfc.charging"

    const-string v93, "android.hardware.nfc.hce"

    const-string v94, "android.hardware.nfc.hcef"

    const-string v95, "android.hardware.nfc.ese"

    const-string v96, "android.hardware.nfc.uicc"

    const-string v97, "android.software.opengles.deqp.level"

    const-string v98, "android.hardware.opengles.aep"

    const-string v99, "android.hardware.type.pc"

    const-string v100, "android.software.picture_in_picture"

    const-string v101, "android.software.print"

    const-string v102, "android.hardware.ram.low"

    const-string v103, "android.hardware.ram.normal"

    const-string v104, "android.hardware.reboot_escrow"

    const-string v105, "android.hardware.rotaryencoder.lowres"

    const-string v106, "android.hardware.screen.landscape"

    const-string v107, "android.hardware.screen.portrait"

    const-string v108, "android.software.sdksandbox.sdk_install_work_profile"

    const-string v109, "android.software.securely_removes_users"

    const-string v110, "android.software.secure_lock_screen"

    const-string v111, "android.hardware.security.model.compatible"

    const-string v112, "android.hardware.sensor.accelerometer"

    const-string v113, "android.hardware.sensor.accelerometer_limited_axes"

    const-string v114, "android.hardware.sensor.accelerometer_limited_axes_uncalibrated"

    const-string v115, "android.hardware.sensor.ambient_temperature"

    const-string v116, "android.hardware.sensor.barometer"

    const-string v117, "android.hardware.sensor.compass"

    const-string v118, "android.hardware.sensor.dynamic.head_tracker"

    const-string v119, "android.hardware.sensor.gyroscope"

    const-string v120, "android.hardware.sensor.gyroscope_limited_axes"

    const-string v121, "android.hardware.sensor.gyroscope_limited_axes_uncalibrated"

    const-string v122, "android.hardware.sensor.heading"

    const-string v123, "android.hardware.sensor.heartrate"

    const-string v124, "android.hardware.sensor.heartrate.ecg"

    const-string v125, "android.hardware.sensor.hinge_angle"

    const-string v126, "android.hardware.sensor.light"

    const-string v127, "android.hardware.sensor.proximity"

    const-string v128, "android.hardware.sensor.relative_humidity"

    const-string v129, "android.hardware.sensor.stepcounter"

    const-string v130, "android.hardware.sensor.stepdetector"

    const-string v131, "android.hardware.se.omapi.ese"

    const-string v132, "android.hardware.se.omapi.sd"

    const-string v133, "android.hardware.se.omapi.uicc"

    const-string v134, "android.software.sip"

    const-string v135, "android.software.sip.voip"

    const-string v136, "android.software.slices_disabled"

    const-string v137, "android.hardware.strongbox_keystore"

    const-string v138, "android.software.telecom"

    const-string v139, "android.hardware.telephony"

    const-string v140, "android.hardware.telephony.calling"

    const-string v141, "android.hardware.telephony.carrierlock"

    const-string v142, "android.hardware.telephony.cdma"

    const-string v143, "android.hardware.telephony.data"

    const-string v144, "android.hardware.telephony.euicc"

    const-string v145, "android.hardware.telephony.euicc.mep"

    const-string v146, "android.hardware.telephony.gsm"

    const-string v147, "android.hardware.telephony.ims"

    const-string v148, "android.hardware.telephony.ims.singlereg"

    const-string v149, "android.hardware.telephony.mbms"

    const-string v150, "android.hardware.telephony.messaging"

    const-string v151, "android.hardware.telephony.radio.access"

    const-string v152, "android.hardware.telephony.satellite"

    const-string v153, "android.hardware.telephony.subscription"

    const-string v154, "android.hardware.type.television"

    const-string v155, "android.hardware.thread_network"

    const-string v156, "android.hardware.touchscreen"

    const-string v157, "android.hardware.touchscreen.multitouch"

    const-string v158, "android.hardware.touchscreen.multitouch.distinct"

    const-string v159, "android.hardware.touchscreen.multitouch.jazzhand"

    const-string v160, "android.hardware.tv.tuner"

    const-string v161, "android.hardware.usb.accessory"

    const-string v162, "android.hardware.usb.host"

    const-string v163, "android.hardware.uwb"

    const-string v164, "android.software.verified_boot"

    const-string v165, "android.software.virtualization_framework"

    const-string v166, "android.software.voice_recognizers"

    const-string v167, "android.hardware.vr.headtracking"

    const-string v168, "android.software.vr.mode"

    const-string v169, "android.hardware.vr.high_performance"

    const-string v170, "android.software.vulkan.deqp.level"

    const-string v171, "android.hardware.vulkan.compute"

    const-string v172, "android.hardware.vulkan.level"

    const-string v173, "android.hardware.vulkan.version"

    const-string v174, "android.software.wallet_location_based_suggestions"

    const-string v175, "android.hardware.type.watch"

    const-string v176, "android.software.webview"

    const-string v177, "android.hardware.wifi"

    const-string v178, "android.hardware.wifi.aware"

    const-string v179, "android.hardware.wifi.direct"

    const-string v180, "android.hardware.wifi.passpoint"

    const-string v181, "android.hardware.wifi.rtt"

    const-string v182, "android.software.window_magnification"

    const-string v183, "android.software.xr.api.openxr"

    const-string v184, "android.software.xr.api.spatial"

    const-string v185, "android.hardware.xr.input.controller"

    filled-new-array/range {v2 .. v187}, [Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "features":[Ljava/lang/String;
    sget-object v1, Lcom/android/internal/pm/SystemFeaturesMetadata;->sFeatures:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 210
    .end local v0    # "features":[Ljava/lang/String;
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist maybeGetSdkFeatureIndex(Ljava/lang/String;)I
    .registers 2
    .param p0, "featureName"    # Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/android/internal/pm/SystemFeaturesMetadata;->sFeatures:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
