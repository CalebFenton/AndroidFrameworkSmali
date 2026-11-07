.class public Landroid/os/GraphicsEnvironment;
.super Ljava/lang/Object;
.source "GraphicsEnvironment.java"


# static fields
.field private static final blacklist ACTION_ANGLE_FOR_ANDROID:Ljava/lang/String; = "android.app.action.ANGLE_FOR_ANDROID"

.field private static final blacklist ACTION_ANGLE_FOR_ANDROID_TOAST_MESSAGE:Ljava/lang/String; = "android.app.action.ANGLE_FOR_ANDROID_TOAST_MESSAGE"

.field private static final blacklist ANGLE_DRIVER_NAME:Ljava/lang/String; = "angle"

.field private static final blacklist ANGLE_DRIVER_VERSION_CODE:J = 0x0L

.field private static final blacklist ANGLE_DRIVER_VERSION_NAME:Ljava/lang/String; = ""

.field private static final blacklist ANGLE_GL_DRIVER_ALL_ANGLE_OFF:I = 0x0

.field private static final blacklist ANGLE_GL_DRIVER_ALL_ANGLE_ON:I = 0x1

.field private static final blacklist ANGLE_GL_DRIVER_CHOICE_ANGLE:Ljava/lang/String; = "angle"

.field private static final blacklist ANGLE_GL_DRIVER_CHOICE_DEFAULT:Ljava/lang/String; = "default"

.field private static final blacklist ANGLE_GL_DRIVER_CHOICE_NATIVE:Ljava/lang/String; = "native"

.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist INTENT_KEY_A4A_TOAST_MESSAGE:Ljava/lang/String; = "A4A Toast Message"

.field private static final blacklist METADATA_DEVELOPER_DRIVER_ENABLE:Ljava/lang/String; = "com.android.graphics.developerdriver.enable"

.field private static final blacklist METADATA_DRIVER_BUILD_TIME:Ljava/lang/String; = "com.android.graphics.driver.build_time"

.field private static final blacklist METADATA_INJECT_LAYERS_ENABLE:Ljava/lang/String; = "com.android.graphics.injectLayers.enable"

.field private static final blacklist PROPERTY_GFX_DRIVER_BUILD_TIME:Ljava/lang/String; = "ro.gfx.driver_build_time"

.field private static final blacklist PROPERTY_GFX_DRIVER_PRERELEASE:Ljava/lang/String; = "ro.gfx.driver.1"

.field private static final blacklist PROPERTY_GFX_DRIVER_PRODUCTION:Ljava/lang/String; = "ro.gfx.driver.0"

.field private static final blacklist PROPERTY_RO_HARDWARE_EGL:Ljava/lang/String; = "ro.hardware.egl"

.field private static final blacklist SYSTEM_ANGLE_STRING:Ljava/lang/String; = "system"

.field private static final blacklist SYSTEM_DRIVER_NAME:Ljava/lang/String; = "system"

.field private static final blacklist SYSTEM_DRIVER_VERSION_CODE:J = 0x0L

.field private static final blacklist SYSTEM_DRIVER_VERSION_NAME:Ljava/lang/String; = ""

.field private static final greylist-max-o TAG:Ljava/lang/String; = "GraphicsEnvironment"

.field private static final blacklist UPDATABLE_DRIVER_ALLOWLIST_ALL:Ljava/lang/String; = "*"

.field private static final blacklist UPDATABLE_DRIVER_GLOBAL_OPT_IN_DEFAULT:I = 0x0

.field private static final blacklist UPDATABLE_DRIVER_GLOBAL_OPT_IN_OFF:I = 0x3

.field private static final blacklist UPDATABLE_DRIVER_GLOBAL_OPT_IN_PRERELEASE_DRIVER:I = 0x2

.field private static final blacklist UPDATABLE_DRIVER_GLOBAL_OPT_IN_PRODUCTION_DRIVER:I = 0x1

.field private static final blacklist UPDATABLE_DRIVER_SPHAL_LIBRARIES_FILENAME:Ljava/lang/String; = "sphal_libraries.txt"

.field private static final blacklist VULKAN_1_0:I = 0x400000

.field private static final blacklist VULKAN_1_1:I = 0x401000

.field private static final blacklist VULKAN_1_2:I = 0x402000

.field private static final blacklist VULKAN_1_3:I = 0x403000

.field private static final blacklist VULKAN_1_4:I = 0x404000

.field private static final greylist-max-o sInstance:Landroid/os/GraphicsEnvironment;


# instance fields
.field private blacklist mAngleOptInIndex:I

.field private greylist-max-o mClassLoader:Ljava/lang/ClassLoader;

.field private blacklist mLibraryPermittedPaths:Ljava/lang/String;

.field private blacklist mLibrarySearchPaths:Ljava/lang/String;

.field private blacklist mShouldUseAngle:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Landroid/os/GraphicsEnvironment;

    invoke-direct {v0}, Landroid/os/GraphicsEnvironment;-><init>()V

    sput-object v0, Landroid/os/GraphicsEnvironment;->sInstance:Landroid/os/GraphicsEnvironment;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/GraphicsEnvironment;->mShouldUseAngle:Z

    return-void
.end method

.method private blacklist canInjectLayers(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 213
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_16

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.graphics.injectLayers.enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 214
    invoke-static {}, Landroid/os/GraphicsEnvironment;->setInjectLayersPrSetDumpable()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 213
    :goto_17
    return v0
.end method

.method private static greylist-max-o chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 3
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 919
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "isa":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 921
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 922
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    return-object v1

    .line 924
    :cond_17
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 925
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 926
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    return-object v1

    .line 928
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist chooseDriver(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coreSettings"    # Landroid/os/Bundle;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 854
    move-object/from16 v1, p0

    const-string v2, "GraphicsEnvironment"

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    invoke-direct {v1, v3, v4}, Landroid/os/GraphicsEnvironment;->chooseDriverInternal(Landroid/os/Bundle;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    .line 855
    .local v5, "driverPackageName":Ljava/lang/String;
    const/4 v6, 0x0

    if-nez v5, :cond_10

    .line 856
    return v6

    .line 861
    :cond_10
    const v0, 0x100080

    move-object/from16 v13, p3

    :try_start_15
    invoke-virtual {v13, v5, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_19} :catch_c1

    .line 866
    .local v0, "driverPackageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 870
    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 871
    .local v14, "driverAppInfo":Landroid/content/pm/ApplicationInfo;
    iget v7, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1a

    if-ge v7, v8, :cond_23

    .line 875
    return v6

    .line 878
    :cond_23
    invoke-static {v14}, Landroid/os/GraphicsEnvironment;->chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v15

    .line 879
    .local v15, "abi":Ljava/lang/String;
    if-nez v15, :cond_2a

    .line 886
    return v6

    .line 889
    :cond_2a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 890
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v7, v14, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 891
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    iget-object v7, v14, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 893
    const-string v8, "!/lib/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 894
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 896
    .local v7, "paths":Ljava/lang/String;
    move-object/from16 v8, p1

    invoke-direct {v1, v8, v5}, Landroid/os/GraphicsEnvironment;->getSphalLibraries(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 897
    .local v9, "sphalLibraries":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updatable driver package search path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", required sphal libraries: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-static {v7, v9}, Landroid/os/GraphicsEnvironment;->setDriverPathAndSphalLibraries(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-object v10, v14, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_b7

    .line 905
    iget-object v10, v14, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "com.android.graphics.driver.build_time"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 906
    .local v10, "driverBuildTime":Ljava/lang/String;
    const/4 v11, 0x1

    if-eqz v10, :cond_8e

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v12, v11, :cond_8c

    goto :goto_8e

    :cond_8c
    move-object v2, v10

    goto :goto_96

    .line 907
    :cond_8e
    :goto_8e
    const-string v12, "com.android.graphics.driver.build_time is not set"

    invoke-static {v2, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string v10, "L0"

    move-object v2, v10

    .line 912
    .end local v10    # "driverBuildTime":Ljava/lang/String;
    .local v2, "driverBuildTime":Ljava/lang/String;
    :goto_96
    move-object v10, v6

    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .local v10, "sb":Ljava/lang/StringBuilder;
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v12, v7

    .end local v7    # "paths":Ljava/lang/String;
    .local v12, "paths":Ljava/lang/String;
    iget-wide v7, v14, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 913
    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 912
    move-object/from16 v18, v12

    .end local v12    # "paths":Ljava/lang/String;
    .local v18, "paths":Ljava/lang/String;
    const/4 v12, 0x0

    move/from16 v19, v11

    move-object/from16 v11, p4

    move-wide/from16 v20, v16

    move-object/from16 v17, v9

    move-object/from16 v16, v10

    move-wide/from16 v9, v20

    .end local v9    # "sphalLibraries":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .local v16, "sb":Ljava/lang/StringBuilder;
    .local v17, "sphalLibraries":Ljava/lang/String;
    invoke-static/range {v5 .. v12}, Landroid/os/GraphicsEnvironment;->setGpuStats(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V

    .line 915
    return v19

    .line 902
    .end local v2    # "driverBuildTime":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "sphalLibraries":Ljava/lang/String;
    .end local v18    # "paths":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "paths":Ljava/lang/String;
    .restart local v9    # "sphalLibraries":Ljava/lang/String;
    :cond_b7
    move-object/from16 v16, v6

    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v6, "apk\'s meta-data cannot be null"

    invoke-direct {v2, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 863
    .end local v0    # "driverPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "paths":Ljava/lang/String;
    .end local v9    # "sphalLibraries":Ljava/lang/String;
    .end local v14    # "driverAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "abi":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    :catch_c1
    move-exception v0

    .line 864
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatable driver package \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' not installed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return v6
.end method

.method private blacklist chooseDriverInternal(Landroid/os/Bundle;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 14
    .param p1, "coreSettings"    # Landroid/os/Bundle;
    .param p2, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 753
    const-string/jumbo v0, "ro.gfx.driver.0"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, "productionDriver":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    .line 756
    .local v3, "hasProductionDriver":Z
    :goto_14
    const-string/jumbo v4, "ro.gfx.driver.1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 757
    .local v4, "prereleaseDriver":Ljava/lang/String;
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_25

    move v5, v1

    goto :goto_26

    :cond_25
    move v5, v2

    .line 759
    .local v5, "hasPrereleaseDriver":Z
    :goto_26
    const-string v6, "GraphicsEnvironment"

    const/4 v7, 0x0

    if-nez v3, :cond_33

    if-nez v5, :cond_33

    .line 760
    const-string v1, "Neither updatable production driver nor prerelease driver is supported."

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-object v7

    .line 767
    :cond_33
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v8

    if-nez v8, :cond_f6

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_47

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v8

    if-nez v8, :cond_47

    goto/16 :goto_f6

    .line 775
    :cond_47
    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_55

    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 776
    const-string v9, "com.android.graphics.developerdriver.enable"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5b

    .line 777
    :cond_55
    invoke-static {}, Landroid/os/GraphicsEnvironment;->isDebuggable()Z

    move-result v8

    if-eqz v8, :cond_5c

    :cond_5b
    goto :goto_5d

    :cond_5c
    move v1, v2

    .line 786
    .local v1, "enablePrereleaseDriver":Z
    :goto_5d
    const-string/jumbo v8, "updatable_driver_all_apps"

    invoke-virtual {p1, v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_f8

    .line 801
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 802
    .local v2, "appPackageName":Ljava/lang/String;
    const-string/jumbo v8, "updatable_driver_production_opt_out_apps"

    invoke-static {v7, p1, v8}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 804
    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_96

    .line 805
    const-string v8, "App opts out for updatable production driver."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-object v7

    .line 788
    .end local v2    # "appPackageName":Ljava/lang/String;
    :pswitch_7c
    const-string v2, "The updatable driver is turned off on this device."

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-object v7

    .line 794
    :pswitch_82
    const-string v2, "All apps opt in to use updatable prerelease driver."

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    if-eqz v5, :cond_8c

    if-eqz v1, :cond_8c

    move-object v7, v4

    :cond_8c
    return-object v7

    .line 791
    :pswitch_8d
    const-string v2, "All apps opt in to use updatable production driver."

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    if-eqz v3, :cond_95

    move-object v7, v0

    :cond_95
    return-object v7

    .line 809
    .restart local v2    # "appPackageName":Ljava/lang/String;
    :cond_96
    const-string/jumbo v8, "updatable_driver_prerelease_opt_in_apps"

    invoke-static {v7, p1, v8}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 811
    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 812
    const-string v8, "App opts in for updatable prerelease driver."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    if-eqz v5, :cond_ad

    if-eqz v1, :cond_ad

    move-object v7, v4

    :cond_ad
    return-object v7

    .line 817
    :cond_ae
    if-nez v3, :cond_b6

    .line 818
    const-string v8, "Updatable production driver is not supported on the device."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-object v7

    .line 822
    :cond_b6
    nop

    .line 823
    const-string/jumbo v8, "updatable_driver_production_opt_in_apps"

    invoke-static {v7, p1, v8}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 825
    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 826
    .local v8, "isOptIn":Z
    nop

    .line 827
    const-string/jumbo v9, "updatable_driver_production_allowlist"

    invoke-static {v7, p1, v9}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 829
    .local v9, "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_e0

    const-string v10, "*"

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-eqz v10, :cond_e0

    .line 830
    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e0

    .line 831
    const-string v10, "App is not on the allowlist for updatable production driver."

    invoke-static {v6, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-object v7

    .line 837
    :cond_e0
    if-nez v8, :cond_f5

    .line 838
    const-string/jumbo v10, "updatable_driver_production_denylist"

    invoke-static {v7, p1, v10}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 840
    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f5

    .line 841
    const-string v10, "App is on the denylist for updatable production driver."

    invoke-static {v6, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-object v7

    .line 845
    :cond_f5
    return-object v0

    .line 772
    .end local v1    # "enablePrereleaseDriver":Z
    .end local v2    # "appPackageName":Ljava/lang/String;
    .end local v8    # "isOptIn":Z
    .end local v9    # "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f6
    :goto_f6
    return-object v7

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_82
        :pswitch_7c
    .end packed-switch
.end method

.method private blacklist debugLayerEnabled(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 8
    .param p1, "coreSettings"    # Landroid/os/Bundle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 301
    invoke-static {}, Landroid/os/GraphicsEnvironment;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-direct {p0, p3}, Landroid/os/GraphicsEnvironment;->canInjectLayers(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 302
    return v1

    .line 304
    :cond_e
    const-string v0, "enable_gpu_debug_layers"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 305
    .local v0, "enable":I
    if-nez v0, :cond_17

    .line 306
    return v1

    .line 308
    :cond_17
    const-string/jumbo v2, "gpu_debug_app"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "gpuDebugApp":Ljava/lang/String;
    if-eqz p2, :cond_37

    .line 310
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_37

    .line 311
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_37

    .line 314
    :cond_35
    const/4 v1, 0x1

    return v1

    .line 312
    :cond_37
    :goto_37
    return v1
.end method

.method private blacklist getAngleDebugPackage(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coreSettings"    # Landroid/os/Bundle;

    .line 533
    invoke-static {}, Landroid/os/GraphicsEnvironment;->isDebuggable()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_9

    .line 534
    return-object v1

    .line 538
    :cond_9
    const-string v0, "angle_debug_package"

    if-eqz p2, :cond_13

    .line 539
    nop

    .line 540
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "debugPackage":Ljava/lang/String;
    goto :goto_1b

    .line 542
    .end local v0    # "debugPackage":Ljava/lang/String;
    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 543
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v0    # "debugPackage":Ljava/lang/String;
    :goto_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 547
    return-object v1

    .line 549
    :cond_22
    return-object v0
.end method

.method private blacklist getAngleEglFeatures(Landroid/content/Context;Landroid/os/Bundle;)[Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coreSettings"    # Landroid/os/Bundle;

    .line 737
    iget v0, p0, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_6

    .line 738
    return-object v1

    .line 741
    :cond_6
    nop

    .line 742
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 741
    const-string v2, "angle_egl_features"

    invoke-static {v0, p2, v2}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 743
    .local v0, "featuresLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    if-gt v2, v3, :cond_1a

    .line 744
    return-object v1

    .line 746
    :cond_1a
    iget v1, p0, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getAnglePackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ANGLE_FOR_ANDROID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 509
    const/high16 v1, 0x100000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 510
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, ""

    const-string v4, "GraphicsEnvironment"

    if-eqz v2, :cond_1e

    .line 511
    const-string v2, "No ANGLE packages installed."

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-object v3

    .line 513
    :cond_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_40

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many ANGLE packages found: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-object v3

    .line 524
    :cond_40
    invoke-interface {v1}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v2
.end method

.method private static blacklist getAppInfoWithMetadata(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 383
    const/16 v0, 0x80

    :try_start_2
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_6} :catch_7

    .line 388
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_d

    .line 384
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_7
    move-exception v0

    .line 387
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object v0, v1

    .line 389
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_d
    return-object v0
.end method

.method private blacklist getDebugLayerAppPaths(Landroid/content/pm/IPackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 273
    const-string v0, ""

    .line 274
    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 273
    const-wide/32 v2, 0x20000

    invoke-interface {p1, p2, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_58

    .line 277
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 278
    if-nez v1, :cond_2f

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug layer app \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GraphicsEnvironment"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-object v0

    .line 283
    :cond_2f
    invoke-static {v1}, Landroid/os/GraphicsEnvironment;->chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "abi":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 286
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    const-string v4, "!/lib/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 289
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "paths":Ljava/lang/String;
    return-object v3

    .line 275
    .end local v0    # "abi":Ljava/lang/String;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "paths":Ljava/lang/String;
    :catch_58
    move-exception v1

    .line 276
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method private static blacklist getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "globalSetting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 353
    if-eqz p1, :cond_7

    .line 354
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "settingsValue":Ljava/lang/String;
    goto :goto_b

    .line 356
    .end local v0    # "settingsValue":Ljava/lang/String;
    :cond_7
    invoke-static {p0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .restart local v0    # "settingsValue":Ljava/lang/String;
    :goto_b
    if-eqz v0, :cond_1d

    .line 360
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v1, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_22

    .line 362
    .end local v1    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .restart local v1    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_22
    return-object v1
.end method

.method public static greylist-max-o getInstance()Landroid/os/GraphicsEnvironment;
    .registers 1

    .line 64
    sget-object v0, Landroid/os/GraphicsEnvironment;->sInstance:Landroid/os/GraphicsEnvironment;

    return-object v0
.end method

.method private static blacklist getPackageIndex(Ljava/lang/String;Ljava/util/List;)I
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 369
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 370
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 371
    return v0

    .line 369
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    .end local v0    # "idx":I
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getSphalLibraries(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "driverPackageName"    # Ljava/lang/String;

    .line 933
    nop

    .line 934
    const/4 v0, 0x4

    :try_start_2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 935
    .local v0, "driverContext":Landroid/content/Context;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 936
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "sphal_libraries.txt"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 937
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v2, "assetStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_20
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "assetString":Ljava/lang/String;
    if-eqz v3, :cond_2b

    .line 939
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 941
    .end local v4    # "assetString":Ljava/lang/String;
    :cond_2b
    const-string v3, ":"

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_31} :catch_34
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_31} :catch_32

    return-object v3

    .line 946
    .end local v0    # "driverContext":Landroid/content/Context;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "assetStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_32
    move-exception v0

    goto :goto_36

    .line 942
    :catch_34
    move-exception v0

    .line 950
    nop

    .line 951
    :goto_36
    const-string v0, ""

    return-object v0
.end method

.method private blacklist getVulkanVersion(Landroid/content/pm/PackageManager;)I
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 186
    const-string v0, "android.hardware.vulkan.version"

    const v1, 0x404000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 187
    return v1

    .line 190
    :cond_c
    const v1, 0x403000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 191
    return v1

    .line 194
    :cond_16
    const v1, 0x402000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 195
    return v1

    .line 198
    :cond_20
    const v1, 0x401000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 199
    return v1

    .line 202
    :cond_2a
    const/high16 v1, 0x400000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 203
    return v1

    .line 206
    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method public static native blacklist hintActivityLaunch()V
.end method

.method private static native blacklist isDebuggable()Z
.end method

.method private static native blacklist nativeSetAngleInfo(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V
.end method

.method private static native blacklist nativeToggleAngleAsSystemDriver(Z)V
.end method

.method private blacklist queryAngleChoice(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 408
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "default"

    const-string v4, "GraphicsEnvironment"

    if-eqz v2, :cond_14

    .line 409
    const-string v2, "No package name specified; use the system driver"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-object v3

    .line 416
    :cond_14
    const/4 v2, 0x0

    const-string v5, "angle_gl_driver_all_angle"

    if-eqz v0, :cond_1e

    .line 417
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "allUseAngle":I
    goto :goto_26

    .line 419
    .end local v5    # "allUseAngle":I
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 420
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v6, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 423
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v5    # "allUseAngle":I
    :goto_26
    const/4 v6, 0x1

    const-string v7, "angle"

    if-ne v5, v6, :cond_31

    .line 424
    const-string v2, "Turn on ANGLE for all applications."

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-object v7

    .line 429
    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 430
    .restart local v6    # "contentResolver":Landroid/content/ContentResolver;
    const-string v8, "angle_gl_driver_selection_pkgs"

    invoke-static {v6, v0, v8}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 432
    .local v8, "optInPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, "angle_gl_driver_selection_values"

    invoke-static {v6, v0, v9}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 434
    .local v9, "optInValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "Currently set values for:"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  angle_gl_driver_selection_pkgs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  angle_gl_driver_selection_values="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-eq v10, v11, :cond_a5

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Global.Settings values are invalid: number of packages: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", number of values: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 445
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-object v3

    .line 450
    :cond_a5
    invoke-static {v1, v8}, Landroid/os/GraphicsEnvironment;->getPackageIndex(Ljava/lang/String;Ljava/util/List;)I

    move-result v10

    .line 451
    .local v10, "pkgIndex":I
    if-ltz v10, :cond_ec

    .line 452
    move-object/from16 v11, p0

    iput v10, v11, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    .line 456
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 457
    .local v12, "optInValue":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ANGLE Developer option for \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' set to: \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v12, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e2

    .line 466
    return-object v7

    .line 467
    :cond_e2
    const-string/jumbo v13, "native"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ee

    .line 468
    return-object v13

    .line 451
    .end local v12    # "optInValue":Ljava/lang/String;
    :cond_ec
    move-object/from16 v11, p0

    .line 472
    :cond_ee
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not listed in per-application setting"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->enableAngleAllowList()Z

    move-result v12

    if-eqz v12, :cond_173

    .line 476
    nop

    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1070011

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 479
    .local v12, "angleAllowListPackages":[Ljava/lang/String;
    const-string v13, " "

    invoke-static {v13, v12}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 480
    .local v13, "allowListPackageList":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ANGLE allowlist from config: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    array-length v14, v12

    :goto_133
    if-ge v2, v14, :cond_15d

    aget-object v15, v12, v2

    .line 483
    .local v15, "allowedPackage":Ljava/lang/String;
    invoke-virtual {v15, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15a

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is listed in config_angleAllowList, enabling ANGLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-object v7

    .line 482
    .end local v15    # "allowedPackage":Ljava/lang/String;
    :cond_15a
    add-int/lit8 v2, v2, 0x1

    goto :goto_133

    .line 492
    :cond_15d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " is not listed in ANGLE allowlist or settings, returning default"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .end local v12    # "angleAllowListPackages":[Ljava/lang/String;
    .end local v13    # "allowListPackageList":Ljava/lang/String;
    :cond_173
    return-object v3
.end method

.method private static native greylist-max-o setDebugLayers(Ljava/lang/String;)V
.end method

.method private static native blacklist setDebugLayersGLES(Ljava/lang/String;)V
.end method

.method private static native blacklist setDriverPathAndSphalLibraries(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native blacklist setGpuStats(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V
.end method

.method private static native blacklist setInjectLayersPrSetDumpable()Z
.end method

.method private static native greylist-max-o setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;)V
.end method

.method private blacklist setupAngle(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 569
    const-string/jumbo v0, "ro.hardware.egl"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "eglDriverName":Ljava/lang/String;
    const-string v1, "angle"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2e

    .line 573
    invoke-direct {p0, p1, p2, p4}, Landroid/os/GraphicsEnvironment;->queryAngleChoice(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "angleChoice":Ljava/lang/String;
    const-string v4, "default"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 575
    return v3

    .line 577
    :cond_1e
    const-string/jumbo v4, "native"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 578
    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v4, v2, p4, v5}, Landroid/os/GraphicsEnvironment;->nativeSetAngleInfo(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V

    .line 579
    return v3

    .line 589
    .end local v1    # "angleChoice":Ljava/lang/String;
    :cond_2e
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/GraphicsEnvironment;->setupAngleFromApk(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 590
    invoke-direct {p0, p1, p2, p4}, Landroid/os/GraphicsEnvironment;->setupAngleFromSystem(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_3d

    :cond_3b
    move v2, v3

    goto :goto_3e

    :cond_3d
    :goto_3d
    nop

    .line 589
    :goto_3e
    return v2
.end method

.method private blacklist setupAngleFromApk(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 606
    const/4 v0, 0x0

    .line 609
    .local v0, "angleInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, p1, p2}, Landroid/os/GraphicsEnvironment;->getAngleDebugPackage(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "anglePkgName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "\' not installed"

    const-string v4, "GraphicsEnvironment"

    const/4 v5, 0x0

    if-nez v2, :cond_48

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANGLE debug package enabled: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :try_start_26
    invoke-virtual {p3, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_2a} :catch_2c

    move-object v0, v2

    .line 619
    goto :goto_48

    .line 615
    :catch_2c
    move-exception v2

    .line 617
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANGLE debug package \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return v5

    .line 623
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_48
    :goto_48
    if-nez v0, :cond_8f

    .line 624
    invoke-direct {p0, p3}, Landroid/os/GraphicsEnvironment;->getAnglePackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    .line 625
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 626
    return v5

    .line 629
    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANGLE package enabled: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/high16 v2, 0x100000

    :try_start_6d
    invoke-virtual {p3, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6d .. :try_end_71} :catch_73

    move-object v0, v2

    .line 637
    goto :goto_8f

    .line 634
    :catch_73
    move-exception v2

    .line 635
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANGLE package \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return v5

    .line 640
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8f
    :goto_8f
    invoke-static {v0}, Landroid/os/GraphicsEnvironment;->chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, "abi":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!/lib/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "paths":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Landroid/os/GraphicsEnvironment;->getAngleEglFeatures(Landroid/content/Context;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, "features":[Ljava/lang/String;
    invoke-static {v3, v5, p4, v4}, Landroid/os/GraphicsEnvironment;->nativeSetAngleInfo(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V

    .line 663
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist setupAngleFromSystem(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 678
    invoke-direct {p0, p1, p2}, Landroid/os/GraphicsEnvironment;->getAngleEglFeatures(Landroid/content/Context;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "features":[Ljava/lang/String;
    const-string/jumbo v1, "system"

    const/4 v2, 0x0

    invoke-static {v1, v2, p3, v0}, Landroid/os/GraphicsEnvironment;->nativeSetAngleInfo(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V

    .line 680
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist setupGpuLayers(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coreSettings"    # Landroid/os/Bundle;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 323
    invoke-direct {p0, p2, p4, p5}, Landroid/os/GraphicsEnvironment;->debugLayerEnabled(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 324
    .local v0, "enabled":Z
    const-string v1, ""

    .line 325
    .local v1, "layerPaths":Ljava/lang/String;
    if-eqz v0, :cond_5d

    .line 326
    iget-object v1, p0, Landroid/os/GraphicsEnvironment;->mLibraryPermittedPaths:Ljava/lang/String;

    .line 328
    const-string/jumbo v2, "gpu_debug_layers"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "layers":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vulkan debug layer list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GraphicsEnvironment"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_34

    .line 331
    invoke-static {v2}, Landroid/os/GraphicsEnvironment;->setDebugLayers(Ljava/lang/String;)V

    .line 334
    :cond_34
    nop

    .line 335
    const-string/jumbo v3, "gpu_debug_layers_gles"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "layersGLES":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLES debug layer list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5d

    .line 338
    invoke-static {v3}, Landroid/os/GraphicsEnvironment;->setDebugLayersGLES(Ljava/lang/String;)V

    .line 343
    .end local v2    # "layers":Ljava/lang/String;
    .end local v3    # "layersGLES":Ljava/lang/String;
    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/GraphicsEnvironment;->mLibrarySearchPaths:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    iget-object v2, p0, Landroid/os/GraphicsEnvironment;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v1}, Landroid/os/GraphicsEnvironment;->setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method private blacklist shouldShowAngleInUseDialogBox(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 688
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 689
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "show_angle_in_use_dialog_box"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_c} :catch_11

    .line 692
    .local v2, "showDialogBox":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    move v0, v3

    :cond_10
    return v0

    .line 693
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "showDialogBox":I
    :catch_11
    move-exception v1

    .line 698
    return v0
.end method


# virtual methods
.method public blacklist getDebugLayerPathsFromSettings(Landroid/os/Bundle;Landroid/content/pm/IPackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 12
    .param p1, "coreSettings"    # Landroid/os/Bundle;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 241
    invoke-direct {p0, p1, p3, p4}, Landroid/os/GraphicsEnvironment;->debugLayerEnabled(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 242
    const/4 v0, 0x0

    return-object v0

    .line 244
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPU debug layers enabled for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphicsEnvironment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v0, ""

    .line 248
    .local v0, "debugLayerPaths":Ljava/lang/String;
    nop

    .line 249
    const-string/jumbo v2, "gpu_debug_layer_app"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "gpuDebugLayerApps":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_78

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPU debug layer apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "layerApps":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4f
    array-length v4, v1

    if-ge v3, v4, :cond_78

    .line 256
    aget-object v4, v1, v3

    invoke-direct {p0, p2, v4}, Landroid/os/GraphicsEnvironment;->getDebugLayerAppPaths(Landroid/content/pm/IPackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "paths":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_75

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .end local v4    # "paths":Ljava/lang/String;
    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 264
    .end local v1    # "layerApps":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_78
    return-object v0
.end method

.method public greylist-max-o setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "searchPaths"    # Ljava/lang/String;
    .param p3, "permittedPaths"    # Ljava/lang/String;

    .line 225
    iput-object p1, p0, Landroid/os/GraphicsEnvironment;->mClassLoader:Ljava/lang/ClassLoader;

    .line 226
    iput-object p2, p0, Landroid/os/GraphicsEnvironment;->mLibrarySearchPaths:Ljava/lang/String;

    .line 227
    iput-object p3, p0, Landroid/os/GraphicsEnvironment;->mLibraryPermittedPaths:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public blacklist setup(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coreSettings"    # Landroid/os/Bundle;

    .line 137
    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 138
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "packageName":Ljava/lang/String;
    nop

    .line 140
    invoke-static {v1, v3, v4}, Landroid/os/GraphicsEnvironment;->getAppInfoWithMetadata(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 142
    .local v5, "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v0, "setupGpuLayers"

    const-wide/16 v12, 0x2

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 143
    move-object v0, p0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/GraphicsEnvironment;->setupGpuLayers(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 144
    move-object v2, v5

    .end local v5    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .local v2, "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 147
    const-string/jumbo v5, "setupAngle"

    invoke-static {v12, v13, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 148
    move-object/from16 v14, p2

    invoke-direct {p0, v1, v14, v3, v4}, Landroid/os/GraphicsEnvironment;->setupAngle(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 149
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/os/GraphicsEnvironment;->mShouldUseAngle:Z

    .line 150
    nop

    .line 151
    invoke-direct {p0, v3}, Landroid/os/GraphicsEnvironment;->getVulkanVersion(Landroid/content/pm/PackageManager;)I

    move-result v11

    .line 150
    move-object v10, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v10, "packageName":Ljava/lang/String;
    const-string v4, "angle"

    const-string v5, ""

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v4 .. v11}, Landroid/os/GraphicsEnvironment;->setGpuStats(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V

    move-object v4, v10

    .line 153
    .end local v10    # "packageName":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_44
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 155
    const-string v5, "chooseDriver"

    invoke-static {v12, v13, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 156
    move-object v0, p0

    move-object v5, v2

    move-object v2, v14

    .end local v2    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    invoke-direct/range {v0 .. v5}, Landroid/os/GraphicsEnvironment;->chooseDriver(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    move-object v2, v5

    .end local v5    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_72

    .line 157
    iget-boolean v5, p0, Landroid/os/GraphicsEnvironment;->mShouldUseAngle:Z

    if-nez v5, :cond_72

    .line 158
    nop

    .line 160
    const-string/jumbo v5, "ro.gfx.driver_build_time"

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 161
    invoke-direct {p0, v3}, Landroid/os/GraphicsEnvironment;->getVulkanVersion(Landroid/content/pm/PackageManager;)I

    move-result v11

    .line 158
    move-object v10, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .restart local v10    # "packageName":Ljava/lang/String;
    const-string/jumbo v4, "system"

    const-string v5, ""

    invoke-static/range {v4 .. v11}, Landroid/os/GraphicsEnvironment;->setGpuStats(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V

    move-object v4, v10

    .line 164
    .end local v10    # "packageName":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_72
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 166
    const-string/jumbo v5, "notifyGraphicsEnvironmentSetup"

    invoke-static {v12, v13, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 167
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez v5, :cond_8c

    .line 168
    const-class v5, Landroid/app/GameManager;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/GameManager;

    .line 169
    .local v5, "gameManager":Landroid/app/GameManager;
    if-eqz v5, :cond_8c

    .line 170
    invoke-virtual {v5}, Landroid/app/GameManager;->notifyGraphicsEnvironmentSetup()V

    .line 173
    .end local v5    # "gameManager":Landroid/app/GameManager;
    :cond_8c
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 174
    return-void
.end method

.method public blacklist showAngleInUseDialogBox(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 709
    iget-boolean v0, p0, Landroid/os/GraphicsEnvironment;->mShouldUseAngle:Z

    if-nez v0, :cond_5

    .line 710
    return-void

    .line 713
    :cond_5
    invoke-direct {p0, p1}, Landroid/os/GraphicsEnvironment;->shouldShowAngleInUseDialogBox(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 714
    return-void

    .line 717
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ANGLE_FOR_ANDROID_TOAST_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 718
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/GraphicsEnvironment;->getAnglePackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "anglePkg":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 720
    return-void

    .line 722
    :cond_23
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    new-instance v5, Landroid/os/GraphicsEnvironment$1;

    invoke-direct {v5, p0}, Landroid/os/GraphicsEnvironment$1;-><init>(Landroid/os/GraphicsEnvironment;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v2, p1

    .end local p1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 734
    return-void
.end method

.method public blacklist toggleAngleAsSystemDriver(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 180
    invoke-static {p1}, Landroid/os/GraphicsEnvironment;->nativeToggleAngleAsSystemDriver(Z)V

    .line 181
    return-void
.end method
