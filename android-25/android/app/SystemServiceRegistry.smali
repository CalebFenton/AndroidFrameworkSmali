.class final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$10;,
        Landroid/app/SystemServiceRegistry$11;,
        Landroid/app/SystemServiceRegistry$12;,
        Landroid/app/SystemServiceRegistry$13;,
        Landroid/app/SystemServiceRegistry$14;,
        Landroid/app/SystemServiceRegistry$15;,
        Landroid/app/SystemServiceRegistry$16;,
        Landroid/app/SystemServiceRegistry$17;,
        Landroid/app/SystemServiceRegistry$18;,
        Landroid/app/SystemServiceRegistry$19;,
        Landroid/app/SystemServiceRegistry$1;,
        Landroid/app/SystemServiceRegistry$20;,
        Landroid/app/SystemServiceRegistry$21;,
        Landroid/app/SystemServiceRegistry$22;,
        Landroid/app/SystemServiceRegistry$23;,
        Landroid/app/SystemServiceRegistry$24;,
        Landroid/app/SystemServiceRegistry$25;,
        Landroid/app/SystemServiceRegistry$26;,
        Landroid/app/SystemServiceRegistry$27;,
        Landroid/app/SystemServiceRegistry$28;,
        Landroid/app/SystemServiceRegistry$29;,
        Landroid/app/SystemServiceRegistry$2;,
        Landroid/app/SystemServiceRegistry$30;,
        Landroid/app/SystemServiceRegistry$31;,
        Landroid/app/SystemServiceRegistry$32;,
        Landroid/app/SystemServiceRegistry$33;,
        Landroid/app/SystemServiceRegistry$34;,
        Landroid/app/SystemServiceRegistry$35;,
        Landroid/app/SystemServiceRegistry$36;,
        Landroid/app/SystemServiceRegistry$37;,
        Landroid/app/SystemServiceRegistry$38;,
        Landroid/app/SystemServiceRegistry$39;,
        Landroid/app/SystemServiceRegistry$3;,
        Landroid/app/SystemServiceRegistry$40;,
        Landroid/app/SystemServiceRegistry$41;,
        Landroid/app/SystemServiceRegistry$42;,
        Landroid/app/SystemServiceRegistry$43;,
        Landroid/app/SystemServiceRegistry$44;,
        Landroid/app/SystemServiceRegistry$45;,
        Landroid/app/SystemServiceRegistry$46;,
        Landroid/app/SystemServiceRegistry$47;,
        Landroid/app/SystemServiceRegistry$48;,
        Landroid/app/SystemServiceRegistry$49;,
        Landroid/app/SystemServiceRegistry$4;,
        Landroid/app/SystemServiceRegistry$50;,
        Landroid/app/SystemServiceRegistry$51;,
        Landroid/app/SystemServiceRegistry$52;,
        Landroid/app/SystemServiceRegistry$53;,
        Landroid/app/SystemServiceRegistry$54;,
        Landroid/app/SystemServiceRegistry$55;,
        Landroid/app/SystemServiceRegistry$56;,
        Landroid/app/SystemServiceRegistry$57;,
        Landroid/app/SystemServiceRegistry$58;,
        Landroid/app/SystemServiceRegistry$59;,
        Landroid/app/SystemServiceRegistry$5;,
        Landroid/app/SystemServiceRegistry$60;,
        Landroid/app/SystemServiceRegistry$61;,
        Landroid/app/SystemServiceRegistry$62;,
        Landroid/app/SystemServiceRegistry$63;,
        Landroid/app/SystemServiceRegistry$64;,
        Landroid/app/SystemServiceRegistry$65;,
        Landroid/app/SystemServiceRegistry$66;,
        Landroid/app/SystemServiceRegistry$67;,
        Landroid/app/SystemServiceRegistry$68;,
        Landroid/app/SystemServiceRegistry$69;,
        Landroid/app/SystemServiceRegistry$6;,
        Landroid/app/SystemServiceRegistry$70;,
        Landroid/app/SystemServiceRegistry$71;,
        Landroid/app/SystemServiceRegistry$72;,
        Landroid/app/SystemServiceRegistry$73;,
        Landroid/app/SystemServiceRegistry$74;,
        Landroid/app/SystemServiceRegistry$7;,
        Landroid/app/SystemServiceRegistry$8;,
        Landroid/app/SystemServiceRegistry$9;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
    }
.end annotation


# static fields
.field private static final SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field private static sServiceCacheSize:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    #@0
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    #@2
    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    #@0
    sput p0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    #@2
    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 143
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 142
    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    #@7
    .line 145
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 144
    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    #@e
    .line 152
    const-string/jumbo v0, "accessibility"

    #@11
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    #@13
    .line 153
    new-instance v2, Landroid/app/SystemServiceRegistry$1;

    #@15
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    #@18
    .line 152
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1b
    .line 159
    const-string/jumbo v0, "captioning"

    #@1e
    const-class v1, Landroid/view/accessibility/CaptioningManager;

    #@20
    .line 160
    new-instance v2, Landroid/app/SystemServiceRegistry$2;

    #@22
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    #@25
    .line 159
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@28
    .line 166
    const-string/jumbo v0, "account"

    #@2b
    const-class v1, Landroid/accounts/AccountManager;

    #@2d
    .line 167
    new-instance v2, Landroid/app/SystemServiceRegistry$3;

    #@2f
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    #@32
    .line 166
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@35
    .line 175
    const-string/jumbo v0, "activity"

    #@38
    const-class v1, Landroid/app/ActivityManager;

    #@3a
    .line 176
    new-instance v2, Landroid/app/SystemServiceRegistry$4;

    #@3c
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    #@3f
    .line 175
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@42
    .line 182
    const-string/jumbo v0, "alarm"

    #@45
    const-class v1, Landroid/app/AlarmManager;

    #@47
    .line 183
    new-instance v2, Landroid/app/SystemServiceRegistry$5;

    #@49
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    #@4c
    .line 182
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@4f
    .line 191
    const-string/jumbo v0, "audio"

    #@52
    const-class v1, Landroid/media/AudioManager;

    #@54
    .line 192
    new-instance v2, Landroid/app/SystemServiceRegistry$6;

    #@56
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    #@59
    .line 191
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@5c
    .line 198
    const-string/jumbo v0, "media_router"

    #@5f
    const-class v1, Landroid/media/MediaRouter;

    #@61
    .line 199
    new-instance v2, Landroid/app/SystemServiceRegistry$7;

    #@63
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    #@66
    .line 198
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@69
    .line 205
    const-string/jumbo v0, "bluetooth"

    #@6c
    const-class v1, Landroid/bluetooth/BluetoothManager;

    #@6e
    .line 206
    new-instance v2, Landroid/app/SystemServiceRegistry$8;

    #@70
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    #@73
    .line 205
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@76
    .line 212
    const-string/jumbo v0, "hdmi_control"

    #@79
    const-class v1, Landroid/hardware/hdmi/HdmiControlManager;

    #@7b
    .line 213
    new-instance v2, Landroid/app/SystemServiceRegistry$9;

    #@7d
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    #@80
    .line 212
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@83
    .line 220
    const-string/jumbo v0, "clipboard"

    #@86
    const-class v1, Landroid/content/ClipboardManager;

    #@88
    .line 221
    new-instance v2, Landroid/app/SystemServiceRegistry$10;

    #@8a
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    #@8d
    .line 220
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@90
    .line 231
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    #@92
    const-class v1, Landroid/text/ClipboardManager;

    #@94
    const-string/jumbo v2, "clipboard"

    #@97
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    .line 233
    const-string/jumbo v0, "connectivity"

    #@9d
    const-class v1, Landroid/net/ConnectivityManager;

    #@9f
    .line 234
    new-instance v2, Landroid/app/SystemServiceRegistry$11;

    #@a1
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    #@a4
    .line 233
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@a7
    .line 242
    const-string/jumbo v0, "country_detector"

    #@aa
    const-class v1, Landroid/location/CountryDetector;

    #@ac
    .line 243
    new-instance v2, Landroid/app/SystemServiceRegistry$12;

    #@ae
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    #@b1
    .line 242
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@b4
    .line 250
    const-string/jumbo v0, "device_policy"

    #@b7
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    #@b9
    .line 251
    new-instance v2, Landroid/app/SystemServiceRegistry$13;

    #@bb
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    #@be
    .line 250
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@c1
    .line 257
    const-string/jumbo v0, "download"

    #@c4
    const-class v1, Landroid/app/DownloadManager;

    #@c6
    .line 258
    new-instance v2, Landroid/app/SystemServiceRegistry$14;

    #@c8
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    #@cb
    .line 257
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@ce
    .line 264
    const-string/jumbo v0, "batterymanager"

    #@d1
    const-class v1, Landroid/os/BatteryManager;

    #@d3
    .line 265
    new-instance v2, Landroid/app/SystemServiceRegistry$15;

    #@d5
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    #@d8
    .line 264
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@db
    .line 271
    const-string/jumbo v0, "nfc"

    #@de
    const-class v1, Landroid/nfc/NfcManager;

    #@e0
    .line 272
    new-instance v2, Landroid/app/SystemServiceRegistry$16;

    #@e2
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    #@e5
    .line 271
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@e8
    .line 278
    const-string/jumbo v0, "dropbox"

    #@eb
    const-class v1, Landroid/os/DropBoxManager;

    #@ed
    .line 279
    new-instance v2, Landroid/app/SystemServiceRegistry$17;

    #@ef
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    #@f2
    .line 278
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@f5
    .line 294
    const-string/jumbo v0, "input"

    #@f8
    const-class v1, Landroid/hardware/input/InputManager;

    #@fa
    .line 295
    new-instance v2, Landroid/app/SystemServiceRegistry$18;

    #@fc
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    #@ff
    .line 294
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@102
    .line 301
    const-string/jumbo v0, "display"

    #@105
    const-class v1, Landroid/hardware/display/DisplayManager;

    #@107
    .line 302
    new-instance v2, Landroid/app/SystemServiceRegistry$19;

    #@109
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    #@10c
    .line 301
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@10f
    .line 308
    const-string/jumbo v0, "input_method"

    #@112
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    #@114
    .line 309
    new-instance v2, Landroid/app/SystemServiceRegistry$20;

    #@116
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    #@119
    .line 308
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@11c
    .line 315
    const-string/jumbo v0, "textservices"

    #@11f
    const-class v1, Landroid/view/textservice/TextServicesManager;

    #@121
    .line 316
    new-instance v2, Landroid/app/SystemServiceRegistry$21;

    #@123
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    #@126
    .line 315
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@129
    .line 322
    const-string/jumbo v0, "keyguard"

    #@12c
    const-class v1, Landroid/app/KeyguardManager;

    #@12e
    .line 323
    new-instance v2, Landroid/app/SystemServiceRegistry$22;

    #@130
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    #@133
    .line 322
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@136
    .line 329
    const-string/jumbo v0, "layout_inflater"

    #@139
    const-class v1, Landroid/view/LayoutInflater;

    #@13b
    .line 330
    new-instance v2, Landroid/app/SystemServiceRegistry$23;

    #@13d
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    #@140
    .line 329
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@143
    .line 336
    const-string/jumbo v0, "location"

    #@146
    const-class v1, Landroid/location/LocationManager;

    #@148
    .line 337
    new-instance v2, Landroid/app/SystemServiceRegistry$24;

    #@14a
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    #@14d
    .line 336
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@150
    .line 344
    const-string/jumbo v0, "netpolicy"

    #@153
    const-class v1, Landroid/net/NetworkPolicyManager;

    #@155
    .line 345
    new-instance v2, Landroid/app/SystemServiceRegistry$25;

    #@157
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    #@15a
    .line 344
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@15d
    .line 352
    const-string/jumbo v0, "notification"

    #@160
    const-class v1, Landroid/app/NotificationManager;

    #@162
    .line 353
    new-instance v2, Landroid/app/SystemServiceRegistry$26;

    #@164
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    #@167
    .line 352
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@16a
    .line 368
    const-string/jumbo v0, "servicediscovery"

    #@16d
    const-class v1, Landroid/net/nsd/NsdManager;

    #@16f
    .line 369
    new-instance v2, Landroid/app/SystemServiceRegistry$27;

    #@171
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    #@174
    .line 368
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@177
    .line 377
    const-string/jumbo v0, "power"

    #@17a
    const-class v1, Landroid/os/PowerManager;

    #@17c
    .line 378
    new-instance v2, Landroid/app/SystemServiceRegistry$28;

    #@17e
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    #@181
    .line 377
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@184
    .line 390
    const-string/jumbo v0, "recovery"

    #@187
    const-class v1, Landroid/os/RecoverySystem;

    #@189
    .line 391
    new-instance v2, Landroid/app/SystemServiceRegistry$29;

    #@18b
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    #@18e
    .line 390
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@191
    .line 402
    const-string/jumbo v0, "search"

    #@194
    const-class v1, Landroid/app/SearchManager;

    #@196
    .line 403
    new-instance v2, Landroid/app/SystemServiceRegistry$30;

    #@198
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    #@19b
    .line 402
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@19e
    .line 410
    const-string/jumbo v0, "sensor"

    #@1a1
    const-class v1, Landroid/hardware/SensorManager;

    #@1a3
    .line 411
    new-instance v2, Landroid/app/SystemServiceRegistry$31;

    #@1a5
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    #@1a8
    .line 410
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1ab
    .line 418
    const-string/jumbo v0, "statusbar"

    #@1ae
    const-class v1, Landroid/app/StatusBarManager;

    #@1b0
    .line 419
    new-instance v2, Landroid/app/SystemServiceRegistry$32;

    #@1b2
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    #@1b5
    .line 418
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1b8
    .line 425
    const-string/jumbo v0, "storage"

    #@1bb
    const-class v1, Landroid/os/storage/StorageManager;

    #@1bd
    .line 426
    new-instance v2, Landroid/app/SystemServiceRegistry$33;

    #@1bf
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    #@1c2
    .line 425
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1c5
    .line 432
    const-string/jumbo v0, "phone"

    #@1c8
    const-class v1, Landroid/telephony/TelephonyManager;

    #@1ca
    .line 433
    new-instance v2, Landroid/app/SystemServiceRegistry$34;

    #@1cc
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    #@1cf
    .line 432
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1d2
    .line 439
    const-string/jumbo v0, "telephony_subscription_service"

    #@1d5
    const-class v1, Landroid/telephony/SubscriptionManager;

    #@1d7
    .line 440
    new-instance v2, Landroid/app/SystemServiceRegistry$35;

    #@1d9
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    #@1dc
    .line 439
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1df
    .line 446
    const-string/jumbo v0, "carrier_config"

    #@1e2
    const-class v1, Landroid/telephony/CarrierConfigManager;

    #@1e4
    .line 447
    new-instance v2, Landroid/app/SystemServiceRegistry$36;

    #@1e6
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    #@1e9
    .line 446
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1ec
    .line 453
    const-string/jumbo v0, "telecom"

    #@1ef
    const-class v1, Landroid/telecom/TelecomManager;

    #@1f1
    .line 454
    new-instance v2, Landroid/app/SystemServiceRegistry$37;

    #@1f3
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    #@1f6
    .line 453
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1f9
    .line 460
    const-string/jumbo v0, "uimode"

    #@1fc
    const-class v1, Landroid/app/UiModeManager;

    #@1fe
    .line 461
    new-instance v2, Landroid/app/SystemServiceRegistry$38;

    #@200
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    #@203
    .line 460
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@206
    .line 467
    const-string/jumbo v0, "usb"

    #@209
    const-class v1, Landroid/hardware/usb/UsbManager;

    #@20b
    .line 468
    new-instance v2, Landroid/app/SystemServiceRegistry$39;

    #@20d
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    #@210
    .line 467
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@213
    .line 475
    const-string/jumbo v0, "serial"

    #@216
    const-class v1, Landroid/hardware/SerialManager;

    #@218
    .line 476
    new-instance v2, Landroid/app/SystemServiceRegistry$40;

    #@21a
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    #@21d
    .line 475
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@220
    .line 483
    const-string/jumbo v0, "vibrator"

    #@223
    const-class v1, Landroid/os/Vibrator;

    #@225
    .line 484
    new-instance v2, Landroid/app/SystemServiceRegistry$41;

    #@227
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    #@22a
    .line 483
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@22d
    .line 490
    const-string/jumbo v0, "wallpaper"

    #@230
    const-class v1, Landroid/app/WallpaperManager;

    #@232
    .line 491
    new-instance v2, Landroid/app/SystemServiceRegistry$42;

    #@234
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    #@237
    .line 490
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@23a
    .line 498
    const-string/jumbo v0, "wifi"

    #@23d
    const-class v1, Landroid/net/wifi/WifiManager;

    #@23f
    .line 499
    new-instance v2, Landroid/app/SystemServiceRegistry$43;

    #@241
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    #@244
    .line 498
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@247
    .line 508
    const-string/jumbo v0, "wifip2p"

    #@24a
    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    #@24c
    .line 509
    new-instance v2, Landroid/app/SystemServiceRegistry$44;

    #@24e
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    #@251
    .line 508
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@254
    .line 517
    const-string/jumbo v0, "wifinan"

    #@257
    const-class v1, Landroid/net/wifi/nan/WifiNanManager;

    #@259
    .line 518
    new-instance v2, Landroid/app/SystemServiceRegistry$45;

    #@25b
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    #@25e
    .line 517
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@261
    .line 529
    const-string/jumbo v0, "wifiscanner"

    #@264
    const-class v1, Landroid/net/wifi/WifiScanner;

    #@266
    .line 530
    new-instance v2, Landroid/app/SystemServiceRegistry$46;

    #@268
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    #@26b
    .line 529
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@26e
    .line 539
    const-string/jumbo v0, "rttmanager"

    #@271
    const-class v1, Landroid/net/wifi/RttManager;

    #@273
    .line 540
    new-instance v2, Landroid/app/SystemServiceRegistry$47;

    #@275
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    #@278
    .line 539
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@27b
    .line 549
    const-string/jumbo v0, "ethernet"

    #@27e
    const-class v1, Landroid/net/EthernetManager;

    #@280
    .line 550
    new-instance v2, Landroid/app/SystemServiceRegistry$48;

    #@282
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    #@285
    .line 549
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@288
    .line 558
    const-string/jumbo v0, "window"

    #@28b
    const-class v1, Landroid/view/WindowManager;

    #@28d
    .line 559
    new-instance v2, Landroid/app/SystemServiceRegistry$49;

    #@28f
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    #@292
    .line 558
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@295
    .line 565
    const-string/jumbo v0, "user"

    #@298
    const-class v1, Landroid/os/UserManager;

    #@29a
    .line 566
    new-instance v2, Landroid/app/SystemServiceRegistry$50;

    #@29c
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    #@29f
    .line 565
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2a2
    .line 574
    const-string/jumbo v0, "appops"

    #@2a5
    const-class v1, Landroid/app/AppOpsManager;

    #@2a7
    .line 575
    new-instance v2, Landroid/app/SystemServiceRegistry$51;

    #@2a9
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    #@2ac
    .line 574
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2af
    .line 583
    const-string/jumbo v0, "camera"

    #@2b2
    const-class v1, Landroid/hardware/camera2/CameraManager;

    #@2b4
    .line 584
    new-instance v2, Landroid/app/SystemServiceRegistry$52;

    #@2b6
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    #@2b9
    .line 583
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2bc
    .line 590
    const-string/jumbo v0, "launcherapps"

    #@2bf
    const-class v1, Landroid/content/pm/LauncherApps;

    #@2c1
    .line 591
    new-instance v2, Landroid/app/SystemServiceRegistry$53;

    #@2c3
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    #@2c6
    .line 590
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2c9
    .line 597
    const-string/jumbo v0, "restrictions"

    #@2cc
    const-class v1, Landroid/content/RestrictionsManager;

    #@2ce
    .line 598
    new-instance v2, Landroid/app/SystemServiceRegistry$54;

    #@2d0
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    #@2d3
    .line 597
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2d6
    .line 606
    const-string/jumbo v0, "print"

    #@2d9
    const-class v1, Landroid/print/PrintManager;

    #@2db
    .line 607
    new-instance v2, Landroid/app/SystemServiceRegistry$55;

    #@2dd
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    #@2e0
    .line 606
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2e3
    .line 616
    const-string/jumbo v0, "consumer_ir"

    #@2e6
    const-class v1, Landroid/hardware/ConsumerIrManager;

    #@2e8
    .line 617
    new-instance v2, Landroid/app/SystemServiceRegistry$56;

    #@2ea
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    #@2ed
    .line 616
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2f0
    .line 623
    const-string/jumbo v0, "media_session"

    #@2f3
    const-class v1, Landroid/media/session/MediaSessionManager;

    #@2f5
    .line 624
    new-instance v2, Landroid/app/SystemServiceRegistry$57;

    #@2f7
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    #@2fa
    .line 623
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2fd
    .line 630
    const-string/jumbo v0, "trust"

    #@300
    const-class v1, Landroid/app/trust/TrustManager;

    #@302
    .line 631
    new-instance v2, Landroid/app/SystemServiceRegistry$58;

    #@304
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    #@307
    .line 630
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@30a
    .line 638
    const-string/jumbo v0, "fingerprint"

    #@30d
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    #@30f
    .line 639
    new-instance v2, Landroid/app/SystemServiceRegistry$59;

    #@311
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    #@314
    .line 638
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@317
    .line 647
    const-string/jumbo v0, "tv_input"

    #@31a
    const-class v1, Landroid/media/tv/TvInputManager;

    #@31c
    .line 648
    new-instance v2, Landroid/app/SystemServiceRegistry$60;

    #@31e
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    #@321
    .line 647
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@324
    .line 656
    const-string/jumbo v0, "network_score"

    #@327
    const-class v1, Landroid/net/NetworkScoreManager;

    #@329
    .line 657
    new-instance v2, Landroid/app/SystemServiceRegistry$61;

    #@32b
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    #@32e
    .line 656
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@331
    .line 663
    const-string/jumbo v0, "usagestats"

    #@334
    const-class v1, Landroid/app/usage/UsageStatsManager;

    #@336
    .line 664
    new-instance v2, Landroid/app/SystemServiceRegistry$62;

    #@338
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    #@33b
    .line 663
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@33e
    .line 672
    const-string/jumbo v0, "netstats"

    #@341
    const-class v1, Landroid/app/usage/NetworkStatsManager;

    #@343
    .line 673
    new-instance v2, Landroid/app/SystemServiceRegistry$63;

    #@345
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    #@348
    .line 672
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@34b
    .line 679
    const-string/jumbo v0, "jobscheduler"

    #@34e
    const-class v1, Landroid/app/job/JobScheduler;

    #@350
    .line 680
    new-instance v2, Landroid/app/SystemServiceRegistry$64;

    #@352
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    #@355
    .line 679
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@358
    .line 687
    const-string/jumbo v0, "persistent_data_block"

    #@35b
    const-class v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    #@35d
    .line 688
    new-instance v2, Landroid/app/SystemServiceRegistry$65;

    #@35f
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    #@362
    .line 687
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@365
    .line 702
    const-string/jumbo v0, "media_projection"

    #@368
    const-class v1, Landroid/media/projection/MediaProjectionManager;

    #@36a
    .line 703
    new-instance v2, Landroid/app/SystemServiceRegistry$66;

    #@36c
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    #@36f
    .line 702
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@372
    .line 709
    const-string/jumbo v0, "appwidget"

    #@375
    const-class v1, Landroid/appwidget/AppWidgetManager;

    #@377
    .line 710
    new-instance v2, Landroid/app/SystemServiceRegistry$67;

    #@379
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    #@37c
    .line 709
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@37f
    .line 717
    const-string/jumbo v0, "midi"

    #@382
    const-class v1, Landroid/media/midi/MidiManager;

    #@384
    .line 718
    new-instance v2, Landroid/app/SystemServiceRegistry$68;

    #@386
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    #@389
    .line 717
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@38c
    .line 728
    const-string/jumbo v0, "radio"

    #@38f
    const-class v1, Landroid/hardware/radio/RadioManager;

    #@391
    .line 729
    new-instance v2, Landroid/app/SystemServiceRegistry$69;

    #@393
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    #@396
    .line 728
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@399
    .line 735
    const-string/jumbo v0, "hardware_properties"

    #@39c
    const-class v1, Landroid/os/HardwarePropertiesManager;

    #@39e
    .line 736
    new-instance v2, Landroid/app/SystemServiceRegistry$70;

    #@3a0
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    #@3a3
    .line 735
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@3a6
    .line 749
    const-string/jumbo v0, "soundtrigger"

    #@3a9
    const-class v1, Landroid/media/soundtrigger/SoundTriggerManager;

    #@3ab
    .line 750
    new-instance v2, Landroid/app/SystemServiceRegistry$71;

    #@3ad
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    #@3b0
    .line 749
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@3b3
    .line 757
    const-string/jumbo v0, "shortcut"

    #@3b6
    const-class v1, Landroid/content/pm/ShortcutManager;

    #@3b8
    .line 758
    new-instance v2, Landroid/app/SystemServiceRegistry$72;

    #@3ba
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    #@3bd
    .line 757
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@3c0
    .line 764
    const-string/jumbo v0, "systemhealth"

    #@3c3
    const-class v1, Landroid/os/health/SystemHealthManager;

    #@3c5
    .line 765
    new-instance v2, Landroid/app/SystemServiceRegistry$73;

    #@3c7
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    #@3ca
    .line 764
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@3cd
    .line 771
    const-string/jumbo v0, "contexthub"

    #@3d0
    const-class v1, Landroid/hardware/location/ContextHubManager;

    #@3d2
    .line 772
    new-instance v2, Landroid/app/SystemServiceRegistry$74;

    #@3d4
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    #@3d7
    .line 771
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@3da
    .line 137
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createServiceCache()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 784
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    return-object v0
.end method

.method public static getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "ctx"    # Landroid/app/ContextImpl;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 791
    sget-object v2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    #@9
    .line 792
    .local v0, "fetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;"
    if-eqz v0, :cond_0

    #@b
    invoke-interface {v0, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method public static getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 799
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method private static registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 808
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 809
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    #@7
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 807
    return-void
.end method
