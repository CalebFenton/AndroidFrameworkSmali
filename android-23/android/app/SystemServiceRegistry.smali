.class final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$ServiceFetcher;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;,
        Landroid/app/SystemServiceRegistry$1;,
        Landroid/app/SystemServiceRegistry$2;,
        Landroid/app/SystemServiceRegistry$3;,
        Landroid/app/SystemServiceRegistry$4;,
        Landroid/app/SystemServiceRegistry$5;,
        Landroid/app/SystemServiceRegistry$6;,
        Landroid/app/SystemServiceRegistry$7;,
        Landroid/app/SystemServiceRegistry$8;,
        Landroid/app/SystemServiceRegistry$9;,
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
        Landroid/app/SystemServiceRegistry$60;,
        Landroid/app/SystemServiceRegistry$61;,
        Landroid/app/SystemServiceRegistry$62;,
        Landroid/app/SystemServiceRegistry$63;,
        Landroid/app/SystemServiceRegistry$64;,
        Landroid/app/SystemServiceRegistry$65;,
        Landroid/app/SystemServiceRegistry$66;,
        Landroid/app/SystemServiceRegistry$67;,
        Landroid/app/SystemServiceRegistry$68;
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
    .line 132
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 131
    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    #@7
    .line 134
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 133
    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    #@e
    .line 141
    const-string/jumbo v0, "accessibility"

    #@11
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    #@13
    .line 142
    new-instance v2, Landroid/app/SystemServiceRegistry$1;

    #@15
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    #@18
    .line 141
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1b
    .line 148
    const-string/jumbo v0, "captioning"

    #@1e
    const-class v1, Landroid/view/accessibility/CaptioningManager;

    #@20
    .line 149
    new-instance v2, Landroid/app/SystemServiceRegistry$2;

    #@22
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    #@25
    .line 148
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@28
    .line 155
    const-string/jumbo v0, "account"

    #@2b
    const-class v1, Landroid/accounts/AccountManager;

    #@2d
    .line 156
    new-instance v2, Landroid/app/SystemServiceRegistry$3;

    #@2f
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    #@32
    .line 155
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@35
    .line 164
    const-string/jumbo v0, "activity"

    #@38
    const-class v1, Landroid/app/ActivityManager;

    #@3a
    .line 165
    new-instance v2, Landroid/app/SystemServiceRegistry$4;

    #@3c
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    #@3f
    .line 164
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@42
    .line 171
    const-string/jumbo v0, "alarm"

    #@45
    const-class v1, Landroid/app/AlarmManager;

    #@47
    .line 172
    new-instance v2, Landroid/app/SystemServiceRegistry$5;

    #@49
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    #@4c
    .line 171
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@4f
    .line 180
    const-string/jumbo v0, "audio"

    #@52
    const-class v1, Landroid/media/AudioManager;

    #@54
    .line 181
    new-instance v2, Landroid/app/SystemServiceRegistry$6;

    #@56
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    #@59
    .line 180
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@5c
    .line 187
    const-string/jumbo v0, "media_router"

    #@5f
    const-class v1, Landroid/media/MediaRouter;

    #@61
    .line 188
    new-instance v2, Landroid/app/SystemServiceRegistry$7;

    #@63
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    #@66
    .line 187
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@69
    .line 194
    const-string/jumbo v0, "bluetooth"

    #@6c
    const-class v1, Landroid/bluetooth/BluetoothManager;

    #@6e
    .line 195
    new-instance v2, Landroid/app/SystemServiceRegistry$8;

    #@70
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    #@73
    .line 194
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@76
    .line 201
    const-string/jumbo v0, "hdmi_control"

    #@79
    const-class v1, Landroid/hardware/hdmi/HdmiControlManager;

    #@7b
    .line 202
    new-instance v2, Landroid/app/SystemServiceRegistry$9;

    #@7d
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    #@80
    .line 201
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@83
    .line 209
    const-string/jumbo v0, "clipboard"

    #@86
    const-class v1, Landroid/content/ClipboardManager;

    #@88
    .line 210
    new-instance v2, Landroid/app/SystemServiceRegistry$10;

    #@8a
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    #@8d
    .line 209
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@90
    .line 220
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    #@92
    const-class v1, Landroid/text/ClipboardManager;

    #@94
    const-string/jumbo v2, "clipboard"

    #@97
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    .line 222
    const-string/jumbo v0, "connectivity"

    #@9d
    const-class v1, Landroid/net/ConnectivityManager;

    #@9f
    .line 223
    new-instance v2, Landroid/app/SystemServiceRegistry$11;

    #@a1
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    #@a4
    .line 222
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@a7
    .line 231
    const-string/jumbo v0, "country_detector"

    #@aa
    const-class v1, Landroid/location/CountryDetector;

    #@ac
    .line 232
    new-instance v2, Landroid/app/SystemServiceRegistry$12;

    #@ae
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    #@b1
    .line 231
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@b4
    .line 239
    const-string/jumbo v0, "device_policy"

    #@b7
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    #@b9
    .line 240
    new-instance v2, Landroid/app/SystemServiceRegistry$13;

    #@bb
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    #@be
    .line 239
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@c1
    .line 246
    const-string/jumbo v0, "download"

    #@c4
    const-class v1, Landroid/app/DownloadManager;

    #@c6
    .line 247
    new-instance v2, Landroid/app/SystemServiceRegistry$14;

    #@c8
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    #@cb
    .line 246
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@ce
    .line 253
    const-string/jumbo v0, "batterymanager"

    #@d1
    const-class v1, Landroid/os/BatteryManager;

    #@d3
    .line 254
    new-instance v2, Landroid/app/SystemServiceRegistry$15;

    #@d5
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    #@d8
    .line 253
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@db
    .line 260
    const-string/jumbo v0, "nfc"

    #@de
    const-class v1, Landroid/nfc/NfcManager;

    #@e0
    .line 261
    new-instance v2, Landroid/app/SystemServiceRegistry$16;

    #@e2
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    #@e5
    .line 260
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@e8
    .line 267
    const-string/jumbo v0, "dropbox"

    #@eb
    const-class v1, Landroid/os/DropBoxManager;

    #@ed
    .line 268
    new-instance v2, Landroid/app/SystemServiceRegistry$17;

    #@ef
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    #@f2
    .line 267
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@f5
    .line 283
    const-string/jumbo v0, "input"

    #@f8
    const-class v1, Landroid/hardware/input/InputManager;

    #@fa
    .line 284
    new-instance v2, Landroid/app/SystemServiceRegistry$18;

    #@fc
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    #@ff
    .line 283
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@102
    .line 290
    const-string/jumbo v0, "display"

    #@105
    const-class v1, Landroid/hardware/display/DisplayManager;

    #@107
    .line 291
    new-instance v2, Landroid/app/SystemServiceRegistry$19;

    #@109
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    #@10c
    .line 290
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@10f
    .line 297
    const-string/jumbo v0, "input_method"

    #@112
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    #@114
    .line 298
    new-instance v2, Landroid/app/SystemServiceRegistry$20;

    #@116
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    #@119
    .line 297
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@11c
    .line 304
    const-string/jumbo v0, "textservices"

    #@11f
    const-class v1, Landroid/view/textservice/TextServicesManager;

    #@121
    .line 305
    new-instance v2, Landroid/app/SystemServiceRegistry$21;

    #@123
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    #@126
    .line 304
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@129
    .line 311
    const-string/jumbo v0, "keyguard"

    #@12c
    const-class v1, Landroid/app/KeyguardManager;

    #@12e
    .line 312
    new-instance v2, Landroid/app/SystemServiceRegistry$22;

    #@130
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    #@133
    .line 311
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@136
    .line 318
    const-string/jumbo v0, "layout_inflater"

    #@139
    const-class v1, Landroid/view/LayoutInflater;

    #@13b
    .line 319
    new-instance v2, Landroid/app/SystemServiceRegistry$23;

    #@13d
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    #@140
    .line 318
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@143
    .line 325
    const-string/jumbo v0, "location"

    #@146
    const-class v1, Landroid/location/LocationManager;

    #@148
    .line 326
    new-instance v2, Landroid/app/SystemServiceRegistry$24;

    #@14a
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    #@14d
    .line 325
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@150
    .line 333
    const-string/jumbo v0, "netpolicy"

    #@153
    const-class v1, Landroid/net/NetworkPolicyManager;

    #@155
    .line 334
    new-instance v2, Landroid/app/SystemServiceRegistry$25;

    #@157
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    #@15a
    .line 333
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@15d
    .line 341
    const-string/jumbo v0, "notification"

    #@160
    const-class v1, Landroid/app/NotificationManager;

    #@162
    .line 342
    new-instance v2, Landroid/app/SystemServiceRegistry$26;

    #@164
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    #@167
    .line 341
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@16a
    .line 357
    const-string/jumbo v0, "servicediscovery"

    #@16d
    const-class v1, Landroid/net/nsd/NsdManager;

    #@16f
    .line 358
    new-instance v2, Landroid/app/SystemServiceRegistry$27;

    #@171
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    #@174
    .line 357
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@177
    .line 366
    const-string/jumbo v0, "power"

    #@17a
    const-class v1, Landroid/os/PowerManager;

    #@17c
    .line 367
    new-instance v2, Landroid/app/SystemServiceRegistry$28;

    #@17e
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    #@181
    .line 366
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@184
    .line 379
    const-string/jumbo v0, "search"

    #@187
    const-class v1, Landroid/app/SearchManager;

    #@189
    .line 380
    new-instance v2, Landroid/app/SystemServiceRegistry$29;

    #@18b
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    #@18e
    .line 379
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@191
    .line 387
    const-string/jumbo v0, "sensor"

    #@194
    const-class v1, Landroid/hardware/SensorManager;

    #@196
    .line 388
    new-instance v2, Landroid/app/SystemServiceRegistry$30;

    #@198
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    #@19b
    .line 387
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@19e
    .line 395
    const-string/jumbo v0, "statusbar"

    #@1a1
    const-class v1, Landroid/app/StatusBarManager;

    #@1a3
    .line 396
    new-instance v2, Landroid/app/SystemServiceRegistry$31;

    #@1a5
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    #@1a8
    .line 395
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1ab
    .line 402
    const-string/jumbo v0, "storage"

    #@1ae
    const-class v1, Landroid/os/storage/StorageManager;

    #@1b0
    .line 403
    new-instance v2, Landroid/app/SystemServiceRegistry$32;

    #@1b2
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    #@1b5
    .line 402
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1b8
    .line 409
    const-string/jumbo v0, "phone"

    #@1bb
    const-class v1, Landroid/telephony/TelephonyManager;

    #@1bd
    .line 410
    new-instance v2, Landroid/app/SystemServiceRegistry$33;

    #@1bf
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    #@1c2
    .line 409
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1c5
    .line 416
    const-string/jumbo v0, "telephony_subscription_service"

    #@1c8
    const-class v1, Landroid/telephony/SubscriptionManager;

    #@1ca
    .line 417
    new-instance v2, Landroid/app/SystemServiceRegistry$34;

    #@1cc
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    #@1cf
    .line 416
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1d2
    .line 423
    const-string/jumbo v0, "carrier_config"

    #@1d5
    const-class v1, Landroid/telephony/CarrierConfigManager;

    #@1d7
    .line 424
    new-instance v2, Landroid/app/SystemServiceRegistry$35;

    #@1d9
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    #@1dc
    .line 423
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1df
    .line 430
    const-string/jumbo v0, "telecom"

    #@1e2
    const-class v1, Landroid/telecom/TelecomManager;

    #@1e4
    .line 431
    new-instance v2, Landroid/app/SystemServiceRegistry$36;

    #@1e6
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    #@1e9
    .line 430
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1ec
    .line 437
    const-string/jumbo v0, "uimode"

    #@1ef
    const-class v1, Landroid/app/UiModeManager;

    #@1f1
    .line 438
    new-instance v2, Landroid/app/SystemServiceRegistry$37;

    #@1f3
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    #@1f6
    .line 437
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@1f9
    .line 444
    const-string/jumbo v0, "usb"

    #@1fc
    const-class v1, Landroid/hardware/usb/UsbManager;

    #@1fe
    .line 445
    new-instance v2, Landroid/app/SystemServiceRegistry$38;

    #@200
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    #@203
    .line 444
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@206
    .line 452
    const-string/jumbo v0, "serial"

    #@209
    const-class v1, Landroid/hardware/SerialManager;

    #@20b
    .line 453
    new-instance v2, Landroid/app/SystemServiceRegistry$39;

    #@20d
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    #@210
    .line 452
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@213
    .line 460
    const-string/jumbo v0, "vibrator"

    #@216
    const-class v1, Landroid/os/Vibrator;

    #@218
    .line 461
    new-instance v2, Landroid/app/SystemServiceRegistry$40;

    #@21a
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    #@21d
    .line 460
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@220
    .line 467
    const-string/jumbo v0, "wallpaper"

    #@223
    const-class v1, Landroid/app/WallpaperManager;

    #@225
    .line 468
    new-instance v2, Landroid/app/SystemServiceRegistry$41;

    #@227
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    #@22a
    .line 467
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@22d
    .line 475
    const-string/jumbo v0, "wifi"

    #@230
    const-class v1, Landroid/net/wifi/WifiManager;

    #@232
    .line 476
    new-instance v2, Landroid/app/SystemServiceRegistry$42;

    #@234
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    #@237
    .line 475
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@23a
    .line 484
    const-string/jumbo v0, "wifipasspoint"

    #@23d
    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointManager;

    #@23f
    .line 485
    new-instance v2, Landroid/app/SystemServiceRegistry$43;

    #@241
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    #@244
    .line 484
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@247
    .line 493
    const-string/jumbo v0, "wifip2p"

    #@24a
    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    #@24c
    .line 494
    new-instance v2, Landroid/app/SystemServiceRegistry$44;

    #@24e
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    #@251
    .line 493
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@254
    .line 502
    const-string/jumbo v0, "wifiscanner"

    #@257
    const-class v1, Landroid/net/wifi/WifiScanner;

    #@259
    .line 503
    new-instance v2, Landroid/app/SystemServiceRegistry$45;

    #@25b
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    #@25e
    .line 502
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@261
    .line 511
    const-string/jumbo v0, "rttmanager"

    #@264
    const-class v1, Landroid/net/wifi/RttManager;

    #@266
    .line 512
    new-instance v2, Landroid/app/SystemServiceRegistry$46;

    #@268
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    #@26b
    .line 511
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@26e
    .line 520
    const-string/jumbo v0, "ethernet"

    #@271
    const-class v1, Landroid/net/EthernetManager;

    #@273
    .line 521
    new-instance v2, Landroid/app/SystemServiceRegistry$47;

    #@275
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    #@278
    .line 520
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@27b
    .line 529
    const-string/jumbo v0, "window"

    #@27e
    const-class v1, Landroid/view/WindowManager;

    #@280
    .line 530
    new-instance v2, Landroid/app/SystemServiceRegistry$48;

    #@282
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    #@285
    .line 529
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@288
    .line 536
    const-string/jumbo v0, "user"

    #@28b
    const-class v1, Landroid/os/UserManager;

    #@28d
    .line 537
    new-instance v2, Landroid/app/SystemServiceRegistry$49;

    #@28f
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    #@292
    .line 536
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@295
    .line 545
    const-string/jumbo v0, "appops"

    #@298
    const-class v1, Landroid/app/AppOpsManager;

    #@29a
    .line 546
    new-instance v2, Landroid/app/SystemServiceRegistry$50;

    #@29c
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    #@29f
    .line 545
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2a2
    .line 554
    const-string/jumbo v0, "camera"

    #@2a5
    const-class v1, Landroid/hardware/camera2/CameraManager;

    #@2a7
    .line 555
    new-instance v2, Landroid/app/SystemServiceRegistry$51;

    #@2a9
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    #@2ac
    .line 554
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2af
    .line 561
    const-string/jumbo v0, "launcherapps"

    #@2b2
    const-class v1, Landroid/content/pm/LauncherApps;

    #@2b4
    .line 562
    new-instance v2, Landroid/app/SystemServiceRegistry$52;

    #@2b6
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    #@2b9
    .line 561
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2bc
    .line 570
    const-string/jumbo v0, "restrictions"

    #@2bf
    const-class v1, Landroid/content/RestrictionsManager;

    #@2c1
    .line 571
    new-instance v2, Landroid/app/SystemServiceRegistry$53;

    #@2c3
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    #@2c6
    .line 570
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2c9
    .line 579
    const-string/jumbo v0, "print"

    #@2cc
    const-class v1, Landroid/print/PrintManager;

    #@2ce
    .line 580
    new-instance v2, Landroid/app/SystemServiceRegistry$54;

    #@2d0
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    #@2d3
    .line 579
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2d6
    .line 589
    const-string/jumbo v0, "consumer_ir"

    #@2d9
    const-class v1, Landroid/hardware/ConsumerIrManager;

    #@2db
    .line 590
    new-instance v2, Landroid/app/SystemServiceRegistry$55;

    #@2dd
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    #@2e0
    .line 589
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2e3
    .line 596
    const-string/jumbo v0, "media_session"

    #@2e6
    const-class v1, Landroid/media/session/MediaSessionManager;

    #@2e8
    .line 597
    new-instance v2, Landroid/app/SystemServiceRegistry$56;

    #@2ea
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    #@2ed
    .line 596
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2f0
    .line 603
    const-string/jumbo v0, "trust"

    #@2f3
    const-class v1, Landroid/app/trust/TrustManager;

    #@2f5
    .line 604
    new-instance v2, Landroid/app/SystemServiceRegistry$57;

    #@2f7
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    #@2fa
    .line 603
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@2fd
    .line 611
    const-string/jumbo v0, "fingerprint"

    #@300
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    #@302
    .line 612
    new-instance v2, Landroid/app/SystemServiceRegistry$58;

    #@304
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    #@307
    .line 611
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@30a
    .line 620
    const-string/jumbo v0, "tv_input"

    #@30d
    const-class v1, Landroid/media/tv/TvInputManager;

    #@30f
    .line 621
    new-instance v2, Landroid/app/SystemServiceRegistry$59;

    #@311
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    #@314
    .line 620
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@317
    .line 629
    const-string/jumbo v0, "network_score"

    #@31a
    const-class v1, Landroid/net/NetworkScoreManager;

    #@31c
    .line 630
    new-instance v2, Landroid/app/SystemServiceRegistry$60;

    #@31e
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    #@321
    .line 629
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@324
    .line 636
    const-string/jumbo v0, "usagestats"

    #@327
    const-class v1, Landroid/app/usage/UsageStatsManager;

    #@329
    .line 637
    new-instance v2, Landroid/app/SystemServiceRegistry$61;

    #@32b
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    #@32e
    .line 636
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@331
    .line 645
    const-string/jumbo v0, "netstats"

    #@334
    const-class v1, Landroid/app/usage/NetworkStatsManager;

    #@336
    .line 646
    new-instance v2, Landroid/app/SystemServiceRegistry$62;

    #@338
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    #@33b
    .line 645
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@33e
    .line 652
    const-string/jumbo v0, "jobscheduler"

    #@341
    const-class v1, Landroid/app/job/JobScheduler;

    #@343
    .line 653
    new-instance v2, Landroid/app/SystemServiceRegistry$63;

    #@345
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    #@348
    .line 652
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@34b
    .line 660
    const-string/jumbo v0, "persistent_data_block"

    #@34e
    const-class v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    #@350
    .line 661
    new-instance v2, Landroid/app/SystemServiceRegistry$64;

    #@352
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    #@355
    .line 660
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@358
    .line 675
    const-string/jumbo v0, "media_projection"

    #@35b
    const-class v1, Landroid/media/projection/MediaProjectionManager;

    #@35d
    .line 676
    new-instance v2, Landroid/app/SystemServiceRegistry$65;

    #@35f
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    #@362
    .line 675
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@365
    .line 682
    const-string/jumbo v0, "appwidget"

    #@368
    const-class v1, Landroid/appwidget/AppWidgetManager;

    #@36a
    .line 683
    new-instance v2, Landroid/app/SystemServiceRegistry$66;

    #@36c
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    #@36f
    .line 682
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@372
    .line 690
    const-string/jumbo v0, "midi"

    #@375
    const-class v1, Landroid/media/midi/MidiManager;

    #@377
    .line 691
    new-instance v2, Landroid/app/SystemServiceRegistry$67;

    #@379
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    #@37c
    .line 690
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@37f
    .line 701
    const-string/jumbo v0, "radio"

    #@382
    const-class v1, Landroid/hardware/radio/RadioManager;

    #@384
    .line 702
    new-instance v2, Landroid/app/SystemServiceRegistry$68;

    #@386
    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    #@389
    .line 701
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    #@38c
    .line 126
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createServiceCache()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 713
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
    .line 720
    sget-object v2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    #@9
    .line 721
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
    .line 728
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
    .line 737
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 738
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    #@7
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 736
    return-void
.end method
