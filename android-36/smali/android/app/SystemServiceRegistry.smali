.class public final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$ServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
    }
.end annotation


# static fields
.field static final blacklist NULL_GAME_MANAGER_IN_WEAR:J = 0x14522cc9L

.field private static final blacklist SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_SERVICE_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field public static blacklist sEnableServiceNotFoundWtf:Z

.field private static volatile blacklist sInitializing:Z

.field private static blacklist sServiceCacheSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsServiceCacheSize()I
    .registers 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsServiceCacheSize(I)V
    .registers 1

    sput p0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 306
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 320
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    .line 322
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    .line 324
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    .line 335
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    const-string v3, "accessibility"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 342
    const-class v1, Landroid/view/accessibility/CaptioningManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    const-string v3, "captioning"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 349
    const-class v1, Landroid/accounts/AccountManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    const-string v3, "account"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 358
    const-class v1, Landroid/app/ActivityManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    const-string v3, "activity"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 365
    const-class v1, Landroid/app/ActivityTaskManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    const-string v3, "activity_task"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 372
    const-class v1, Landroid/app/UriGrantsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    const-string/jumbo v3, "uri_grants"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 380
    const-class v1, Landroid/app/AlarmManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    const-string v3, "alarm"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 389
    const-class v1, Landroid/media/AudioManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    const-string v3, "audio"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 396
    const-class v1, Landroid/media/AudioDeviceVolumeManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    const-string v3, "audio_device_volume"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 403
    const-class v1, Landroid/media/MediaRouter;

    new-instance v2, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    const-string/jumbo v3, "media_router"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 410
    const-class v1, Landroid/hardware/hdmi/HdmiControlManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    const-string/jumbo v3, "hdmi_control"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 418
    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    const-string/jumbo v3, "textclassification"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 425
    const-class v1, Landroid/graphics/fonts/FontManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$13;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    const-string v3, "font"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 433
    const-class v1, Landroid/content/ClipboardManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    const-string v3, "clipboard"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 444
    sget-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    const-class v2, Landroid/text/ClipboardManager;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-class v1, Landroid/net/PacProxyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    const-string/jumbo v3, "pac_proxy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 455
    const-class v1, Landroid/os/IBinder;

    new-instance v2, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    const-string/jumbo v3, "netd"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 462
    const-class v1, Landroid/net/TetheringManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    const-string/jumbo v3, "tethering"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 470
    const-class v1, Landroid/net/VpnManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    const-string/jumbo v3, "vpn_management"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 484
    const-class v1, Landroid/location/CountryDetector;

    new-instance v2, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    const-string v3, "country_detector"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 492
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    const-string v3, "device_policy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 500
    const-class v1, Landroid/app/DownloadManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    const-string v3, "download"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 507
    const-class v1, Landroid/os/BatteryManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    const-string v3, "batterymanager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 518
    const-class v1, Landroid/os/DropBoxManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    const-string v3, "dropbox"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 527
    const-class v1, Landroid/transparency/BinaryTransparencyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    const-string/jumbo v3, "transparency"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 539
    const-class v1, Landroid/hardware/input/InputManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    const-string/jumbo v3, "input"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 546
    const-class v1, Landroid/hardware/display/DisplayManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    const-string v3, "display"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 553
    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    const-string v3, "color_display"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 565
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$28;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    const-string/jumbo v3, "input_method"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 572
    const-class v1, Landroid/view/textservice/TextServicesManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    const-string/jumbo v3, "textservices"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 585
    const-class v1, Landroid/app/KeyguardManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    const-string/jumbo v3, "keyguard"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 592
    const-class v1, Landroid/view/LayoutInflater;

    new-instance v2, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    const-string/jumbo v3, "layout_inflater"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 599
    const-class v1, Landroid/location/LocationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    const-string/jumbo v3, "location"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 607
    const-class v1, Landroid/net/NetworkPolicyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    const-string/jumbo v3, "netpolicy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 615
    const-class v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    const-string/jumbo v3, "notification"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 631
    const-class v1, Landroid/app/people/PeopleManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    const-string/jumbo v3, "people"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 638
    const-class v1, Landroid/os/PowerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    const-string/jumbo v3, "power"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 650
    const-class v1, Landroid/os/PerformanceHintManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    const-string/jumbo v3, "performance_hint"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 658
    const-class v1, Landroid/os/RecoverySystem;

    new-instance v2, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    const-string/jumbo v3, "recovery"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 667
    const-class v1, Landroid/app/SearchManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 675
    const-class v1, Landroid/os/SecurityStateManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    const-string/jumbo v3, "security_state"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 686
    const-class v1, Landroid/hardware/SensorManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    const-string/jumbo v3, "sensor"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 694
    const-class v1, Landroid/hardware/SensorPrivacyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    const-string/jumbo v3, "sensor_privacy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 705
    const-class v1, Landroid/app/StatusBarManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$43;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    const-string/jumbo v3, "statusbar"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 712
    const-class v1, Landroid/os/storage/StorageManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    const-string/jumbo v3, "storage"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 719
    const-class v1, Landroid/app/usage/StorageStatsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    const-string/jumbo v3, "storagestats"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 728
    const-class v1, Landroid/os/SystemUpdateManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$46;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    const-string/jumbo v3, "system_update"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 739
    const-class v1, Landroid/os/SystemConfigManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    const-string/jumbo v3, "system_config"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 746
    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    const-string/jumbo v3, "telephony_registry"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 753
    const-class v1, Landroid/telecom/TelecomManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    const-string/jumbo v3, "telecom"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 760
    const-class v1, Landroid/telephony/MmsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    const-string/jumbo v3, "mms"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 767
    const-class v1, Landroid/app/UiModeManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    const-string/jumbo v3, "uimode"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 774
    const-class v1, Landroid/hardware/usb/UsbManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    const-string/jumbo v3, "usb"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 782
    const-class v1, Landroid/debug/AdbManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    const-string v3, "adb"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 791
    const-class v1, Landroid/hardware/SerialManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    const-string/jumbo v3, "serial"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 799
    const-class v1, Landroid/os/VibratorManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    const-string/jumbo v3, "vibrator_manager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 806
    const-class v1, Landroid/os/Vibrator;

    new-instance v2, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    const-string/jumbo v3, "vibrator"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 813
    const-class v1, Landroid/app/WallpaperManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    const-string/jumbo v3, "wallpaper"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 840
    const-class v1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    new-instance v2, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    const-string/jumbo v3, "wifinl80211"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 848
    const-class v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    const-string/jumbo v3, "window"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 855
    const-class v1, Landroid/os/UserManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    const-string/jumbo v3, "user"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 864
    const-class v1, Landroid/app/AppOpsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    const-string v3, "appops"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 873
    const-class v1, Landroid/hardware/camera2/CameraManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    const-string v3, "camera"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 880
    const-class v1, Landroid/content/pm/LauncherApps;

    new-instance v2, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    const-string/jumbo v3, "launcherapps"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 887
    const-class v1, Landroid/content/RestrictionsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    const-string/jumbo v3, "restrictions"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 896
    const-class v1, Landroid/print/PrintManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    const-string/jumbo v3, "print"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 911
    const-class v1, Landroid/companion/CompanionDeviceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    const-string v3, "companiondevice"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 926
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/appfunctions/flags/Flags;->enableAppFunctionManager()Z

    move-result v1

    if-eqz v1, :cond_376

    .line 927
    const-class v1, Landroid/app/appfunctions/AppFunctionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    const-string v3, "app_function"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 943
    :cond_376
    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    const-string/jumbo v3, "virtualdevice"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 957
    const-class v1, Landroid/hardware/ConsumerIrManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$69;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    const-string v3, "consumer_ir"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 964
    const-class v1, Landroid/app/trust/TrustManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    const-string/jumbo v3, "trust"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 972
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    const-string v3, "fingerprint"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 986
    const-class v1, Landroid/hardware/face/FaceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    const-string v3, "face"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1002
    const-class v1, Landroid/hardware/iris/IrisManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    const-string/jumbo v3, "iris"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1014
    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    const-string v3, "biometric"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1027
    const-class v1, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    const-string v3, "authentication_policy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1046
    const-class v1, Landroid/media/tv/interactive/TvInteractiveAppManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    const-string/jumbo v3, "tv_interactive_app"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1058
    const-class v1, Landroid/media/tv/ad/TvAdManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$77;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    const-string/jumbo v3, "tv_ad"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1070
    const-class v1, Landroid/media/tv/TvInputManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$78;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$78;-><init>()V

    const-string/jumbo v3, "tv_input"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1079
    const-class v1, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$79;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$79;-><init>()V

    const-string/jumbo v3, "tv_tuner_resource_mgr"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1090
    const-class v1, Landroid/net/NetworkScoreManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$80;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$80;-><init>()V

    const-string/jumbo v3, "network_score"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1097
    const-class v1, Landroid/app/usage/UsageStatsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$81;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$81;-><init>()V

    const-string/jumbo v3, "usagestats"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1106
    const-class v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$82;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$82;-><init>()V

    const-string/jumbo v3, "persistent_data_block"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1122
    const-class v1, Landroid/service/oemlock/OemLockManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$83;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$83;-><init>()V

    const-string/jumbo v3, "oem_lock"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1136
    const-class v1, Landroid/media/projection/MediaProjectionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$84;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$84;-><init>()V

    const-string/jumbo v3, "media_projection"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1143
    const-class v1, Landroid/appwidget/AppWidgetManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$85;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$85;-><init>()V

    const-string v3, "appwidget"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1152
    const-class v1, Landroid/media/midi/MidiManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$86;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$86;-><init>()V

    const-string/jumbo v3, "midi"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1160
    const-class v1, Landroid/hardware/radio/RadioManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$87;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$87;-><init>()V

    const-string v3, "broadcastradio"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1167
    const-class v1, Landroid/os/HardwarePropertiesManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$88;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$88;-><init>()V

    const-string/jumbo v3, "hardware_properties"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1177
    const-class v1, Landroid/media/soundtrigger/SoundTriggerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$89;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$89;-><init>()V

    const-string/jumbo v3, "soundtrigger"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1185
    const-class v1, Landroid/content/pm/ShortcutManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$90;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$90;-><init>()V

    const-string/jumbo v3, "shortcut"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1193
    const-class v1, Landroid/content/om/OverlayManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$91;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$91;-><init>()V

    const-string/jumbo v3, "overlay"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1204
    const-class v1, Landroid/net/NetworkWatchlistManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$92;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$92;-><init>()V

    const-string/jumbo v3, "network_watchlist"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1215
    const-class v1, Landroid/os/health/SystemHealthManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$93;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$93;-><init>()V

    const-string/jumbo v3, "systemhealth"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1227
    const-class v1, Landroid/hardware/location/ContextHubManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$94;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$94;-><init>()V

    const-string v3, "contexthub"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1239
    const-class v1, Landroid/os/IncidentManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$95;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$95;-><init>()V

    const-string/jumbo v3, "incident"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1246
    const-class v1, Landroid/os/BugreportManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$96;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$96;-><init>()V

    const-string v3, "bugreport"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1256
    const-class v1, Landroid/view/autofill/AutofillManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$97;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$97;-><init>()V

    const-string v3, "autofill"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1266
    const-class v1, Landroid/credentials/CredentialManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$98;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$98;-><init>()V

    const-string v3, "credential"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1279
    const-class v1, Landroid/media/musicrecognition/MusicRecognitionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$99;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$99;-><init>()V

    const-string/jumbo v3, "music_recognition"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1290
    const-class v1, Landroid/view/contentcapture/ContentCaptureManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$100;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$100;-><init>()V

    const-string v3, "content_capture"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1313
    const-class v1, Landroid/view/translation/TranslationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$101;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$101;-><init>()V

    const-string/jumbo v3, "translation"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1327
    const-class v1, Landroid/view/translation/UiTranslationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$102;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$102;-><init>()V

    const-string/jumbo v3, "ui_translation"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1340
    const-class v1, Landroid/app/search/SearchUiManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$103;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$103;-><init>()V

    const-string/jumbo v3, "search_ui"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1350
    const-class v1, Landroid/app/smartspace/SmartspaceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$104;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$104;-><init>()V

    const-string/jumbo v3, "smartspace"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1360
    const-class v1, Landroid/app/contextualsearch/ContextualSearchManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$105;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$105;-><init>()V

    const-string v3, "contextual_search"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1370
    const-class v1, Landroid/app/prediction/AppPredictionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$106;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$106;-><init>()V

    const-string v3, "app_prediction"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1380
    const-class v1, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$107;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$107;-><init>()V

    const-string v3, "content_suggestions"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1394
    const-class v1, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$108;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$108;-><init>()V

    const-string/jumbo v3, "wallpaper_effects_generation"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1408
    const-class v1, Landroid/app/VrManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$109;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$109;-><init>()V

    const-string/jumbo v3, "vrmanager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1416
    const-class v1, Landroid/content/pm/CrossProfileApps;

    new-instance v2, Landroid/app/SystemServiceRegistry$110;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$110;-><init>()V

    const-string v3, "crossprofileapps"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1428
    const-class v1, Landroid/app/slice/SliceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$111;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$111;-><init>()V

    const-string/jumbo v3, "slice"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1438
    const-class v1, Landroid/app/timedetector/TimeDetector;

    new-instance v2, Landroid/app/SystemServiceRegistry$112;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$112;-><init>()V

    const-string/jumbo v3, "time_detector"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1446
    const-class v1, Landroid/app/timezonedetector/TimeZoneDetector;

    new-instance v2, Landroid/app/SystemServiceRegistry$113;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$113;-><init>()V

    const-string/jumbo v3, "time_zone_detector"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1454
    const-class v1, Landroid/app/time/TimeManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$114;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$114;-><init>()V

    const-string/jumbo v3, "time_manager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1462
    const-class v1, Landroid/permission/PermissionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$115;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$115;-><init>()V

    const-string/jumbo v3, "permission"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1470
    const-class v1, Landroid/permission/LegacyPermissionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$116;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$116;-><init>()V

    const-string/jumbo v3, "legacy_permission"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1478
    const-class v1, Landroid/permission/PermissionControllerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$117;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$117;-><init>()V

    const-string/jumbo v3, "permission_controller"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1486
    const-class v1, Landroid/permission/PermissionCheckerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$118;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$118;-><init>()V

    const-string/jumbo v3, "permission_checker"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1494
    const-class v1, Landroid/os/PermissionEnforcer;

    new-instance v2, Landroid/app/SystemServiceRegistry$119;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$119;-><init>()V

    const-string/jumbo v3, "permission_enforcer"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1502
    const-class v1, Landroid/os/image/DynamicSystemManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$120;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$120;-><init>()V

    const-string v3, "dynamic_system"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1513
    const-class v1, Landroid/os/BatteryStatsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$121;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$121;-><init>()V

    const-string v3, "batterystats"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1523
    const-class v1, Landroid/content/pm/DataLoaderManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$122;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$122;-><init>()V

    const-string v3, "dataloader_manager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1532
    const-class v1, Landroid/hardware/lights/LightsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$123;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$123;-><init>()V

    const-string/jumbo v3, "lights"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1539
    const-class v1, Landroid/app/LocaleManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$124;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$124;-><init>()V

    const-string/jumbo v3, "locale"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1547
    const-class v1, Landroid/os/incremental/IncrementalManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$125;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$125;-><init>()V

    const-string/jumbo v3, "incremental"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1559
    const-class v1, Landroid/security/FileIntegrityManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$126;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$126;-><init>()V

    const-string v3, "file_integrity"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1570
    const-class v1, Landroid/security/attestationverification/AttestationVerificationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$127;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$127;-><init>()V

    const-string v3, "attestation_verification"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1581
    const-class v1, Landroid/apphibernation/AppHibernationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$128;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$128;-><init>()V

    const-string v3, "app_hibernation"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1588
    const-class v1, Landroid/app/DreamManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$129;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$129;-><init>()V

    const-string v3, "dream"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1595
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$130;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$130;-><init>()V

    const-string v3, "device_state"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1602
    const-class v1, Landroid/media/metrics/MediaMetricsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$131;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$131;-><init>()V

    const-string/jumbo v3, "media_metrics"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1614
    const-class v1, Landroid/app/GameManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$132;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$132;-><init>()V

    const-string v3, "game"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1640
    const-class v1, Landroid/content/pm/verify/domain/DomainVerificationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$133;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$133;-><init>()V

    const-string v3, "domain_verification"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1653
    const-class v1, Landroid/view/displayhash/DisplayHashManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$134;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$134;-><init>()V

    const-string v3, "display_hash"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1661
    const-class v1, Landroid/app/ambientcontext/AmbientContextManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$135;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$135;-><init>()V

    const-string v3, "ambient_context"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1673
    const-class v1, Landroid/app/wearable/WearableSensingManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$136;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$136;-><init>()V

    const-string/jumbo v3, "wearable_sensing"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1694
    const-class v1, Landroid/app/GrammaticalInflectionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$137;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$137;-><init>()V

    const-string/jumbo v3, "grammatical_inflection"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1705
    const-class v1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$138;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$138;-><init>()V

    const-string/jumbo v3, "shared_connectivity"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1713
    const-class v1, Landroid/security/keystore/KeyStoreManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$139;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$139;-><init>()V

    const-string/jumbo v3, "keystore"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1724
    const-class v1, Landroid/provider/E2eeContactKeysManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$140;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$140;-><init>()V

    const-string v3, "contact_keys"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1736
    const-class v1, Landroid/app/supervision/SupervisionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$141;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$141;-><init>()V

    const-string/jumbo v3, "supervision"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1751
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->aapmApi()Z

    move-result v1

    if-eqz v1, :cond_72d

    .line 1752
    const-class v1, Landroid/security/advancedprotection/AdvancedProtectionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$142;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$142;-><init>()V

    const-string v3, "advanced_protection"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1772
    :cond_72d
    invoke-static {}, Landroid/app/Flags;->bicClient()Z

    move-result v1

    if-eqz v1, :cond_73f

    .line 1773
    const-class v1, Landroid/app/BackgroundInstallControlManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$143;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$143;-><init>()V

    const-string v3, "background_install_control"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1782
    :cond_73f
    const-class v1, Landroid/media/quality/MediaQualityManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$144;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$144;-><init>()V

    const-string/jumbo v3, "media_quality"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1795
    const-class v1, Landroid/security/intrusiondetection/IntrusionDetectionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$145;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$145;-><init>()V

    const-string/jumbo v3, "intrusion_detection"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1812
    const/4 v1, 0x1

    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 1816
    :try_start_75c
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializer;->registerServiceWrappers()V

    .line 1817
    invoke-static {}, Landroid/app/job/JobSchedulerFrameworkInitializer;->registerServiceWrappers()V

    .line 1818
    invoke-static {}, Landroid/app/blob/BlobStoreManagerFrameworkInitializer;->initialize()V

    .line 1819
    invoke-static {}, Landroid/bluetooth/BluetoothFrameworkInitializer;->registerServiceWrappers()V

    .line 1820
    invoke-static {}, Landroid/nfc/NfcFrameworkInitializer;->registerServiceWrappers()V

    .line 1821
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->registerServiceWrappers()V

    .line 1822
    invoke-static {}, Landroid/app/appsearch/AppSearchManagerFrameworkInitializer;->initialize()V

    .line 1823
    invoke-static {}, Landroid/health/connect/HealthServicesInitializer;->registerServiceWrappers()V

    .line 1824
    invoke-static {}, Landroid/net/wifi/WifiFrameworkInitializer;->registerServiceWrappers()V

    .line 1825
    invoke-static {}, Landroid/os/StatsFrameworkInitializer;->registerServiceWrappers()V

    .line 1826
    invoke-static {}, Landroid/content/rollback/RollbackManagerFrameworkInitializer;->initialize()V

    .line 1827
    invoke-static {}, Landroid/media/MediaFrameworkPlatformInitializer;->registerServiceWrappers()V

    .line 1828
    invoke-static {}, Landroid/media/MediaFrameworkInitializer;->registerServiceWrappers()V

    .line 1829
    invoke-static {}, Landroid/app/role/RoleFrameworkInitializer;->registerServiceWrappers()V

    .line 1830
    invoke-static {}, Landroid/scheduling/SchedulingFrameworkInitializer;->registerServiceWrappers()V

    .line 1831
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer;->registerServiceWrappers()V

    .line 1832
    invoke-static {}, Landroid/adservices/AdServicesFrameworkInitializer;->registerServiceWrappers()V

    .line 1833
    invoke-static {}, Landroid/uwb/UwbFrameworkInitializer;->registerServiceWrappers()V

    .line 1834
    invoke-static {}, Landroid/safetycenter/SafetyCenterFrameworkInitializer;->registerServiceWrappers()V

    .line 1835
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializerTiramisu;->registerServiceWrappers()V

    .line 1836
    invoke-static {}, Landroid/nearby/NearbyFrameworkInitializer;->registerServiceWrappers()V

    .line 1837
    invoke-static {}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer;->registerServiceWrappers()V

    .line 1838
    invoke-static {}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceFrameworkInitializer;->registerServiceWrappers()V

    .line 1839
    invoke-static {}, Landroid/devicelock/DeviceLockFrameworkInitializer;->registerServiceWrappers()V

    .line 1840
    invoke-static {}, Landroid/system/virtualmachine/VirtualizationFrameworkInitializer;->registerServiceWrappers()V

    .line 1841
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializerBaklava;->registerServiceWrappers()V

    .line 1843
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->newStoragePublicApi()Z

    move-result v1

    if-eqz v1, :cond_7b3

    .line 1844
    invoke-static {}, Landroid/os/flagging/ConfigInfrastructureFrameworkInitializer;->registerServiceWrappers()V

    .line 1847
    :cond_7b3
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->telecomMainlineBlockedNumbersManager()Z

    move-result v1

    if-eqz v1, :cond_7bc

    .line 1848
    invoke-static {}, Landroid/provider/ProviderFrameworkInitializer;->registerServiceWrappers()V

    .line 1852
    :cond_7bc
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    move-result v1

    if-eqz v1, :cond_7c5

    .line 1853
    invoke-static {}, Landroid/app/ecm/EnhancedConfirmationFrameworkInitializer;->registerServiceWrappers()V

    .line 1855
    :cond_7c5
    invoke-static {}, Landroid/server/Flags;->telemetryApisService()Z

    move-result v1

    if-eqz v1, :cond_7ce

    .line 1856
    invoke-static {}, Landroid/os/ProfilingFrameworkInitializer;->registerServiceWrappers()V

    .line 1858
    :cond_7ce
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v1

    if-eqz v1, :cond_7d7

    .line 1859
    invoke-static {}, Landroid/webkit/WebViewBootstrapFrameworkInitializer;->registerServiceWrappers()V

    .line 1866
    :cond_7d7
    invoke-static {}, Landroid/ranging/RangingFrameworkInitializer;->registerServiceWrappers()V
    :try_end_7da
    .catchall {:try_start_75c .. :try_end_7da} :catchall_7de

    .line 1870
    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 1871
    nop

    .line 1872
    return-void

    .line 1870
    :catchall_7de
    move-exception v1

    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 1871
    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createServiceCache()[Ljava/lang/Object;
    .registers 1

    .line 1884
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private static blacklist ensureInitializing(Ljava/lang/String;)V
    .registers 4
    .param p0, "methodName"    # Ljava/lang/String;

    .line 1876
    sget-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    const-string v1, "Internal error: %s can only be called during class initialization."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1878
    return-void
.end method

.method public static blacklist getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p0, "ctx"    # Landroid/app/ContextImpl;
    .param p1, "name"    # Ljava/lang/String;

    .line 1913
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->getSystemServiceFetcher(Ljava/lang/String;)Landroid/app/SystemServiceRegistry$ServiceFetcher;

    move-result-object v0

    .line 1914
    .local v0, "fetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1915
    return-object v1

    .line 1918
    :cond_8
    invoke-interface {v0, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v2

    .line 1919
    .local v2, "ret":Ljava/lang/Object;
    sget-boolean v3, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v3, :cond_da

    if-nez v2, :cond_da

    .line 1921
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_dc

    :cond_19
    goto/16 :goto_93

    :sswitch_1b
    const-string/jumbo v3, "vcn_management"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x7

    goto/16 :goto_94

    :sswitch_27
    const-string/jumbo v3, "incremental"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x2

    goto :goto_94

    :sswitch_32
    const-string/jumbo v3, "textservices"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v3, 0xa

    goto :goto_94

    :sswitch_3e
    const-string v3, "content_capture"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    goto :goto_94

    :sswitch_48
    const-string/jumbo v3, "virtualdevice"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x6

    goto :goto_94

    :sswitch_53
    const-string v3, "contexthub"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x4

    goto :goto_94

    :sswitch_5d
    const-string/jumbo v3, "virtualization"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x5

    goto :goto_94

    :sswitch_68
    const-string v3, "app_prediction"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_94

    :sswitch_72
    const-string/jumbo v3, "search"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v3, 0x8

    goto :goto_94

    :sswitch_7e
    const-string v3, "ethernet"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x3

    goto :goto_94

    :sswitch_88
    const-string v3, "appwidget"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v3, 0x9

    goto :goto_94

    :goto_93
    const/4 v3, -0x1

    :goto_94
    const-string v4, "android.hardware.type.watch"

    packed-switch v3, :pswitch_data_10a

    goto :goto_c1

    .line 1948
    :pswitch_9a
    invoke-static {}, Landroid/server/Flags;->removeTextService()Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 1949
    invoke-static {p0, v4}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 1950
    return-object v1

    .line 1943
    :pswitch_a7
    const-string v3, "android.software.app_widgets"

    invoke-static {p0, v3}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c1

    .line 1944
    return-object v1

    .line 1938
    :pswitch_b0
    invoke-static {p0, v4}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 1939
    return-object v1

    .line 1931
    :pswitch_b7
    const-string v3, "android.hardware.telephony.subscription"

    invoke-static {p0, v3}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c1

    .line 1933
    return-object v1

    .line 1929
    :pswitch_c0
    return-object v1

    .line 1954
    :cond_c1
    :goto_c1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manager wrapper not available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SystemServiceRegistry"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    return-object v1

    .line 1957
    :cond_da
    return-object v2

    nop

    :sswitch_data_dc
    .sparse-switch
        -0x69cd085b -> :sswitch_88
        -0x5499b029 -> :sswitch_7e
        -0x36059a58 -> :sswitch_72
        -0x2dd60a93 -> :sswitch_68
        0x35db2f9 -> :sswitch_5d
        0x1051cce6 -> :sswitch_53
        0x38858921 -> :sswitch_48
        0x3a1b1980 -> :sswitch_3e
        0x3e5dd88b -> :sswitch_32
        0x40b177da -> :sswitch_27
        0x7cd04fe1 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_b7
        :pswitch_b0
        :pswitch_a7
        :pswitch_9a
    .end packed-switch
.end method

.method public static blacklist getSystemServiceClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2016
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist getSystemServiceFetcher(Ljava/lang/String;)Landroid/app/SystemServiceRegistry$ServiceFetcher;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;"
        }
    .end annotation

    .line 1888
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1889
    return-object v0

    .line 1891
    :cond_4
    sget-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    .line 1892
    .local v1, "fetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;"
    if-nez v1, :cond_2b

    .line 1893
    sget-boolean v2, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v2, :cond_2a

    .line 1894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown manager requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemServiceRegistry"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :cond_2a
    return-object v0

    .line 1898
    :cond_2b
    return-object v1
.end method

.method public static blacklist getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1985
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 1986
    const/4 v0, 0x0

    return-object v0

    .line 1988
    :cond_4
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1989
    .local v0, "serviceName":Ljava/lang/String;
    sget-boolean v1, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v1, :cond_2e

    if-nez v0, :cond_2e

    .line 1991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown manager requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemServiceRegistry"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_2e
    return-object v0
.end method

.method public static blacklist getSystemServiceWithNoContext(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1967
    invoke-static {p0}, Landroid/app/SystemServiceRegistry;->getSystemServiceFetcher(Ljava/lang/String;)Landroid/app/SystemServiceRegistry$ServiceFetcher;

    move-result-object v0

    .line 1968
    .local v0, "fetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1969
    return-object v1

    .line 1972
    :cond_8
    invoke-interface {v0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->supportsFetchWithoutContext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1977
    invoke-interface {v0, v1}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1973
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manager cannot be fetched without a context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z
    .registers 4
    .param p0, "ctx"    # Landroid/app/ContextImpl;
    .param p1, "featureName"    # Ljava/lang/String;

    .line 1903
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1904
    .local v0, "manager":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_8

    const/4 v1, 0x1

    return v1

    .line 1905
    :cond_8
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    .registers 4
    .param p0, "e"    # Landroid/os/ServiceManager$ServiceNotFoundException;

    .line 2429
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    const-string v2, "SystemServiceRegistry"

    if-ge v0, v1, :cond_12

    .line 2430
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 2432
    :cond_12
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    :goto_19
    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2220
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;, "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2221
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    new-instance v0, Landroid/app/SystemServiceRegistry$149;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$149;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2234
    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2248
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;, "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2249
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2250
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2251
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    new-instance v0, Landroid/app/SystemServiceRegistry$150;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$150;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2259
    return-void
.end method

.method public static blacklist registerForeverStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2158
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;, "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2159
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2160
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    new-instance v0, Landroid/app/SystemServiceRegistry$147;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$147;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2175
    return-void
.end method

.method private static blacklist registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .registers 5
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 2002
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    return-void
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2119
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;, "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2120
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2121
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    new-instance v0, Landroid/app/SystemServiceRegistry$146;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$146;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2131
    return-void
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2187
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;, "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2188
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2189
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    new-instance v0, Landroid/app/SystemServiceRegistry$148;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$148;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2198
    return-void
.end method
