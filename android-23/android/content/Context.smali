.class public abstract Landroid/content/Context;
.super Ljava/lang/Object;
.source "Context.java"


# static fields
.field public static final ACCESSIBILITY_SERVICE:Ljava/lang/String; = "accessibility"

.field public static final ACCOUNT_SERVICE:Ljava/lang/String; = "account"

.field public static final ACTIVITY_SERVICE:Ljava/lang/String; = "activity"

.field public static final ALARM_SERVICE:Ljava/lang/String; = "alarm"

.field public static final APPWIDGET_SERVICE:Ljava/lang/String; = "appwidget"

.field public static final APP_OPS_SERVICE:Ljava/lang/String; = "appops"

.field public static final AUDIO_SERVICE:Ljava/lang/String; = "audio"

.field public static final BACKUP_SERVICE:Ljava/lang/String; = "backup"

.field public static final BATTERY_SERVICE:Ljava/lang/String; = "batterymanager"

.field public static final BIND_ABOVE_CLIENT:I = 0x8

.field public static final BIND_ADJUST_WITH_ACTIVITY:I = 0x80

.field public static final BIND_ALLOW_OOM_MANAGEMENT:I = 0x10

.field public static final BIND_AUTO_CREATE:I = 0x1

.field public static final BIND_DEBUG_UNBIND:I = 0x2

.field public static final BIND_FOREGROUND_SERVICE:I = 0x4000000

.field public static final BIND_FOREGROUND_SERVICE_WHILE_AWAKE:I = 0x2000000

.field public static final BIND_IMPORTANT:I = 0x40

.field public static final BIND_NOT_FOREGROUND:I = 0x4

.field public static final BIND_NOT_VISIBLE:I = 0x40000000

.field public static final BIND_SHOWING_UI:I = 0x20000000

.field public static final BIND_TREAT_LIKE_ACTIVITY:I = 0x8000000

.field public static final BIND_VISIBLE:I = 0x10000000

.field public static final BIND_WAIVE_PRIORITY:I = 0x20

.field public static final BLUETOOTH_SERVICE:Ljava/lang/String; = "bluetooth"

.field public static final CAMERA_SERVICE:Ljava/lang/String; = "camera"

.field public static final CAPTIONING_SERVICE:Ljava/lang/String; = "captioning"

.field public static final CARRIER_CONFIG_SERVICE:Ljava/lang/String; = "carrier_config"

.field public static final CLIPBOARD_SERVICE:Ljava/lang/String; = "clipboard"

.field public static final CONNECTIVITY_SERVICE:Ljava/lang/String; = "connectivity"

.field public static final CONSUMER_IR_SERVICE:Ljava/lang/String; = "consumer_ir"

.field public static final CONTEXT_IGNORE_SECURITY:I = 0x2

.field public static final CONTEXT_INCLUDE_CODE:I = 0x1

.field public static final CONTEXT_REGISTER_PACKAGE:I = 0x40000000

.field public static final CONTEXT_RESTRICTED:I = 0x4

.field public static final COUNTRY_DETECTOR:Ljava/lang/String; = "country_detector"

.field public static final DEVICE_IDLE_CONTROLLER:Ljava/lang/String; = "deviceidle"

.field public static final DEVICE_POLICY_SERVICE:Ljava/lang/String; = "device_policy"

.field public static final DISPLAY_SERVICE:Ljava/lang/String; = "display"

.field public static final DOWNLOAD_SERVICE:Ljava/lang/String; = "download"

.field public static final DROPBOX_SERVICE:Ljava/lang/String; = "dropbox"

.field public static final ETHERNET_SERVICE:Ljava/lang/String; = "ethernet"

.field public static final FINGERPRINT_SERVICE:Ljava/lang/String; = "fingerprint"

.field public static final HDMI_CONTROL_SERVICE:Ljava/lang/String; = "hdmi_control"

.field public static final INPUT_METHOD_SERVICE:Ljava/lang/String; = "input_method"

.field public static final INPUT_SERVICE:Ljava/lang/String; = "input"

.field public static final JOB_SCHEDULER_SERVICE:Ljava/lang/String; = "jobscheduler"

.field public static final KEYGUARD_SERVICE:Ljava/lang/String; = "keyguard"

.field public static final LAUNCHER_APPS_SERVICE:Ljava/lang/String; = "launcherapps"

.field public static final LAYOUT_INFLATER_SERVICE:Ljava/lang/String; = "layout_inflater"

.field public static final LOCATION_SERVICE:Ljava/lang/String; = "location"

.field public static final MEDIA_PROJECTION_SERVICE:Ljava/lang/String; = "media_projection"

.field public static final MEDIA_ROUTER_SERVICE:Ljava/lang/String; = "media_router"

.field public static final MEDIA_SESSION_SERVICE:Ljava/lang/String; = "media_session"

.field public static final MIDI_SERVICE:Ljava/lang/String; = "midi"

.field public static final MODE_APPEND:I = 0x8000

.field public static final MODE_ENABLE_WRITE_AHEAD_LOGGING:I = 0x8

.field public static final MODE_MULTI_PROCESS:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_PRIVATE:I = 0x0

.field public static final MODE_WORLD_READABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_WORLD_WRITEABLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NETWORKMANAGEMENT_SERVICE:Ljava/lang/String; = "network_management"

.field public static final NETWORK_POLICY_SERVICE:Ljava/lang/String; = "netpolicy"

.field public static final NETWORK_SCORE_SERVICE:Ljava/lang/String; = "network_score"

.field public static final NETWORK_STATS_SERVICE:Ljava/lang/String; = "netstats"

.field public static final NFC_SERVICE:Ljava/lang/String; = "nfc"

.field public static final NOTIFICATION_SERVICE:Ljava/lang/String; = "notification"

.field public static final NSD_SERVICE:Ljava/lang/String; = "servicediscovery"

.field public static final PERSISTENT_DATA_BLOCK_SERVICE:Ljava/lang/String; = "persistent_data_block"

.field public static final POWER_SERVICE:Ljava/lang/String; = "power"

.field public static final PRINT_SERVICE:Ljava/lang/String; = "print"

.field public static final RADIO_SERVICE:Ljava/lang/String; = "radio"

.field public static final RESTRICTIONS_SERVICE:Ljava/lang/String; = "restrictions"

.field public static final SEARCH_SERVICE:Ljava/lang/String; = "search"

.field public static final SENSOR_SERVICE:Ljava/lang/String; = "sensor"

.field public static final SERIAL_SERVICE:Ljava/lang/String; = "serial"

.field public static final SIP_SERVICE:Ljava/lang/String; = "sip"

.field public static final STATUS_BAR_SERVICE:Ljava/lang/String; = "statusbar"

.field public static final STORAGE_SERVICE:Ljava/lang/String; = "storage"

.field public static final TELECOM_SERVICE:Ljava/lang/String; = "telecom"

.field public static final TELEPHONY_SERVICE:Ljava/lang/String; = "phone"

.field public static final TELEPHONY_SUBSCRIPTION_SERVICE:Ljava/lang/String; = "telephony_subscription_service"

.field public static final TEXT_SERVICES_MANAGER_SERVICE:Ljava/lang/String; = "textservices"

.field public static final TRUST_SERVICE:Ljava/lang/String; = "trust"

.field public static final TV_INPUT_SERVICE:Ljava/lang/String; = "tv_input"

.field public static final UI_MODE_SERVICE:Ljava/lang/String; = "uimode"

.field public static final UPDATE_LOCK_SERVICE:Ljava/lang/String; = "updatelock"

.field public static final USAGE_STATS_SERVICE:Ljava/lang/String; = "usagestats"

.field public static final USB_SERVICE:Ljava/lang/String; = "usb"

.field public static final USER_SERVICE:Ljava/lang/String; = "user"

.field public static final VIBRATOR_SERVICE:Ljava/lang/String; = "vibrator"

.field public static final VOICE_INTERACTION_MANAGER_SERVICE:Ljava/lang/String; = "voiceinteraction"

.field public static final WALLPAPER_SERVICE:Ljava/lang/String; = "wallpaper"

.field public static final WIFI_P2P_SERVICE:Ljava/lang/String; = "wifip2p"

.field public static final WIFI_PASSPOINT_SERVICE:Ljava/lang/String; = "wifipasspoint"

.field public static final WIFI_RTT_SERVICE:Ljava/lang/String; = "rttmanager"

.field public static final WIFI_SCANNING_SERVICE:Ljava/lang/String; = "wifiscanner"

.field public static final WIFI_SERVICE:Ljava/lang/String; = "wifi"

.field public static final WINDOW_SERVICE:Ljava/lang/String; = "window"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 2
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 2282
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Not implemented. Must override in a subclass."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public canStartActivityForResult()Z
    .locals 1

    #@0
    .prologue
    .line 1349
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract checkCallingOrSelfPermission(Ljava/lang/String;)I
.end method

.method public abstract checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
.end method

.method public abstract checkCallingPermission(Ljava/lang/String;)I
.end method

.method public abstract checkCallingUriPermission(Landroid/net/Uri;I)I
.end method

.method public abstract checkPermission(Ljava/lang/String;II)I
.end method

.method public abstract checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I
.end method

.method public abstract checkSelfPermission(Ljava/lang/String;)I
.end method

.method public abstract checkUriPermission(Landroid/net/Uri;III)I
.end method

.method public abstract checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I
.end method

.method public abstract checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public abstract clearWallpaper()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
.end method

.method public abstract createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
.end method

.method public abstract createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract databaseList()[Ljava/lang/String;
.end method

.method public abstract deleteDatabase(Ljava/lang/String;)Z
.end method

.method public abstract deleteFile(Ljava/lang/String;)Z
.end method

.method public abstract enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
.end method

.method public abstract enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
.end method

.method public abstract enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
.end method

.method public abstract enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
.end method

.method public abstract fileList()[Ljava/lang/String;
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getApplicationInfo()Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getAssets()Landroid/content/res/AssetManager;
.end method

.method public abstract getBasePackageName()Ljava/lang/String;
.end method

.method public abstract getCacheDir()Ljava/io/File;
.end method

.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract getCodeCacheDir()Ljava/io/File;
.end method

.method public final getColor(I)I
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public final getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getDatabasePath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getDir(Ljava/lang/String;I)Ljava/io/File;
.end method

.method public abstract getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
.end method

.method public final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public abstract getExternalCacheDir()Ljava/io/File;
.end method

.method public abstract getExternalCacheDirs()[Ljava/io/File;
.end method

.method public abstract getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
.end method

.method public abstract getExternalMediaDirs()[Ljava/io/File;
.end method

.method public abstract getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getFilesDir()Ljava/io/File;
.end method

.method public abstract getMainLooper()Landroid/os/Looper;
.end method

.method public abstract getNoBackupFilesDir()Ljava/io/File;
.end method

.method public abstract getObbDir()Ljava/io/File;
.end method

.method public abstract getObbDirs()[Ljava/io/File;
.end method

.method public abstract getOpPackageName()Ljava/lang/String;
.end method

.method public abstract getPackageCodePath()Ljava/lang/String;
.end method

.method public abstract getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPackageResourcePath()Ljava/lang/String;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
.end method

.method public abstract getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 2557
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 2558
    .local v0, "serviceName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method public abstract getSystemService(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public abstract getTheme()Landroid/content/res/Resources$Theme;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
    .end annotation
.end method

.method public getThemeResId()I
    .locals 1

    #@0
    .prologue
    .line 491
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract getUserId()I
.end method

.method public abstract getWallpaper()Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getWallpaperDesiredMinimumHeight()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getWallpaperDesiredMinimumWidth()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
.end method

.method public isRestricted()Z
    .locals 1

    #@0
    .prologue
    .line 3811
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 532
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 545
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "attrs"    # [I

    #@0
    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public abstract openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract peekWallpaper()Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    #@0
    .prologue
    .line 378
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    #@7
    .line 377
    return-void
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.end method

.method public abstract registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.end method

.method public abstract removeStickyBroadcast(Landroid/content/Intent;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract revokeUriPermission(Landroid/net/Uri;I)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V
.end method

.method public abstract sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
.end method

.method public abstract sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendStickyBroadcast(Landroid/content/Intent;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setTheme(I)V
.end method

.method public abstract setWallpaper(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setWallpaper(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startActivities([Landroid/content/Intent;)V
.end method

.method public abstract startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1418
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Not implemented. Must override in a subclass."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1321
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Not implemented. Must override in a subclass."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1276
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Not implemented. Must override in a subclass."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1339
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "This method is only implemented for Activity-based Contexts. Check canStartActivityForResult() before calling."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public abstract startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract startService(Landroid/content/Intent;)Landroid/content/ComponentName;
.end method

.method public abstract startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
.end method

.method public abstract stopService(Landroid/content/Intent;)Z
.end method

.method public abstract stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
.end method

.method public abstract unbindService(Landroid/content/ServiceConnection;)V
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    #@0
    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    #@7
    .line 385
    return-void
.end method

.method public abstract unregisterReceiver(Landroid/content/BroadcastReceiver;)V
.end method
