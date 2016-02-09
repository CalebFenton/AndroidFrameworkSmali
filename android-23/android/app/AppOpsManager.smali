.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$PackageOps;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;
    }
.end annotation


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"

.field public static final OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field public static final OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field public static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field public static final OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field public static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field public static final OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field public static final OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field public static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field public static final OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field public static final OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field public static final OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_ACTIVATE_VPN:I = 0x2f

.field public static final OP_ADD_VOICEMAIL:I = 0x34

.field public static final OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final OP_ASSIST_STRUCTURE:I = 0x31

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_BODY_SENSORS:I = 0x38

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GET_USAGE_STATS:I = 0x2b

.field public static final OP_GPS:I = 0x2

.field public static final OP_MOCK_LOCATION:I = 0x3a

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x2c

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NONE:I = -0x1

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final OP_PROJECT_MEDIA:I = 0x2e

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_PHONE_STATE:I = 0x33

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_TOAST_WINDOW:I = 0x2d

.field public static final OP_TURN_SCREEN_ON:I = 0x3d

.field public static final OP_USE_FINGERPRINT:I = 0x37

.field public static final OP_USE_SIP:I = 0x35

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final OP_WRITE_WALLPAPER:I = 0x30

.field public static final _NUM_OP:I = 0x3e

.field private static sOpAllowSystemRestrictionBypass:[Z

.field private static sOpDefaultMode:[I

.field private static sOpDisableReset:[Z

.field private static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpRestrictions:[Ljava/lang/String;

.field private static sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpToString:[Ljava/lang/String;

.field private static sOpToSwitch:[I

.field private static sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sToken:Landroid/os/IBinder;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    const/16 v5, 0x3e

    #@5
    const/4 v4, 0x0

    #@6
    .line 343
    new-array v1, v5, [I

    #@8
    fill-array-data v1, :array_0

    #@b
    sput-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    #@d
    .line 412
    new-array v1, v5, [Ljava/lang/String;

    #@f
    .line 413
    const-string/jumbo v2, "android:coarse_location"

    #@12
    aput-object v2, v1, v6

    #@14
    .line 414
    const-string/jumbo v2, "android:fine_location"

    #@17
    aput-object v2, v1, v7

    #@19
    .line 415
    aput-object v4, v1, v8

    #@1b
    .line 416
    const/4 v2, 0x3

    #@1c
    aput-object v4, v1, v2

    #@1e
    .line 417
    const-string/jumbo v2, "android:read_contacts"

    #@21
    const/4 v3, 0x4

    #@22
    aput-object v2, v1, v3

    #@24
    .line 418
    const-string/jumbo v2, "android:write_contacts"

    #@27
    const/4 v3, 0x5

    #@28
    aput-object v2, v1, v3

    #@2a
    .line 419
    const-string/jumbo v2, "android:read_call_log"

    #@2d
    const/4 v3, 0x6

    #@2e
    aput-object v2, v1, v3

    #@30
    .line 420
    const-string/jumbo v2, "android:write_call_log"

    #@33
    const/4 v3, 0x7

    #@34
    aput-object v2, v1, v3

    #@36
    .line 421
    const-string/jumbo v2, "android:read_calendar"

    #@39
    const/16 v3, 0x8

    #@3b
    aput-object v2, v1, v3

    #@3d
    .line 422
    const-string/jumbo v2, "android:write_calendar"

    #@40
    const/16 v3, 0x9

    #@42
    aput-object v2, v1, v3

    #@44
    .line 423
    const/16 v2, 0xa

    #@46
    aput-object v4, v1, v2

    #@48
    .line 424
    const/16 v2, 0xb

    #@4a
    aput-object v4, v1, v2

    #@4c
    .line 425
    const/16 v2, 0xc

    #@4e
    aput-object v4, v1, v2

    #@50
    .line 426
    const-string/jumbo v2, "android:call_phone"

    #@53
    const/16 v3, 0xd

    #@55
    aput-object v2, v1, v3

    #@57
    .line 427
    const-string/jumbo v2, "android:read_sms"

    #@5a
    const/16 v3, 0xe

    #@5c
    aput-object v2, v1, v3

    #@5e
    .line 428
    const/16 v2, 0xf

    #@60
    aput-object v4, v1, v2

    #@62
    .line 429
    const-string/jumbo v2, "android:receive_sms"

    #@65
    const/16 v3, 0x10

    #@67
    aput-object v2, v1, v3

    #@69
    .line 430
    const/16 v2, 0x11

    #@6b
    aput-object v4, v1, v2

    #@6d
    .line 431
    const-string/jumbo v2, "android:receive_mms"

    #@70
    const/16 v3, 0x12

    #@72
    aput-object v2, v1, v3

    #@74
    .line 432
    const-string/jumbo v2, "android:receive_wap_push"

    #@77
    const/16 v3, 0x13

    #@79
    aput-object v2, v1, v3

    #@7b
    .line 433
    const-string/jumbo v2, "android:send_sms"

    #@7e
    const/16 v3, 0x14

    #@80
    aput-object v2, v1, v3

    #@82
    .line 434
    const/16 v2, 0x15

    #@84
    aput-object v4, v1, v2

    #@86
    .line 435
    const/16 v2, 0x16

    #@88
    aput-object v4, v1, v2

    #@8a
    .line 436
    const-string/jumbo v2, "android:write_settings"

    #@8d
    const/16 v3, 0x17

    #@8f
    aput-object v2, v1, v3

    #@91
    .line 437
    const-string/jumbo v2, "android:system_alert_window"

    #@94
    const/16 v3, 0x18

    #@96
    aput-object v2, v1, v3

    #@98
    .line 438
    const/16 v2, 0x19

    #@9a
    aput-object v4, v1, v2

    #@9c
    .line 439
    const-string/jumbo v2, "android:camera"

    #@9f
    const/16 v3, 0x1a

    #@a1
    aput-object v2, v1, v3

    #@a3
    .line 440
    const-string/jumbo v2, "android:record_audio"

    #@a6
    const/16 v3, 0x1b

    #@a8
    aput-object v2, v1, v3

    #@aa
    .line 441
    const/16 v2, 0x1c

    #@ac
    aput-object v4, v1, v2

    #@ae
    .line 442
    const/16 v2, 0x1d

    #@b0
    aput-object v4, v1, v2

    #@b2
    .line 443
    const/16 v2, 0x1e

    #@b4
    aput-object v4, v1, v2

    #@b6
    .line 444
    const/16 v2, 0x1f

    #@b8
    aput-object v4, v1, v2

    #@ba
    .line 445
    const/16 v2, 0x20

    #@bc
    aput-object v4, v1, v2

    #@be
    .line 446
    const/16 v2, 0x21

    #@c0
    aput-object v4, v1, v2

    #@c2
    .line 447
    const/16 v2, 0x22

    #@c4
    aput-object v4, v1, v2

    #@c6
    .line 448
    const/16 v2, 0x23

    #@c8
    aput-object v4, v1, v2

    #@ca
    .line 449
    const/16 v2, 0x24

    #@cc
    aput-object v4, v1, v2

    #@ce
    .line 450
    const/16 v2, 0x25

    #@d0
    aput-object v4, v1, v2

    #@d2
    .line 451
    const/16 v2, 0x26

    #@d4
    aput-object v4, v1, v2

    #@d6
    .line 452
    const/16 v2, 0x27

    #@d8
    aput-object v4, v1, v2

    #@da
    .line 453
    const/16 v2, 0x28

    #@dc
    aput-object v4, v1, v2

    #@de
    .line 454
    const-string/jumbo v2, "android:monitor_location"

    #@e1
    const/16 v3, 0x29

    #@e3
    aput-object v2, v1, v3

    #@e5
    .line 455
    const-string/jumbo v2, "android:monitor_location_high_power"

    #@e8
    const/16 v3, 0x2a

    #@ea
    aput-object v2, v1, v3

    #@ec
    .line 456
    const-string/jumbo v2, "android:get_usage_stats"

    #@ef
    const/16 v3, 0x2b

    #@f1
    aput-object v2, v1, v3

    #@f3
    .line 457
    const/16 v2, 0x2c

    #@f5
    aput-object v4, v1, v2

    #@f7
    .line 458
    const/16 v2, 0x2d

    #@f9
    aput-object v4, v1, v2

    #@fb
    .line 459
    const/16 v2, 0x2e

    #@fd
    aput-object v4, v1, v2

    #@ff
    .line 460
    const-string/jumbo v2, "android:activate_vpn"

    #@102
    const/16 v3, 0x2f

    #@104
    aput-object v2, v1, v3

    #@106
    .line 461
    const/16 v2, 0x30

    #@108
    aput-object v4, v1, v2

    #@10a
    .line 462
    const/16 v2, 0x31

    #@10c
    aput-object v4, v1, v2

    #@10e
    .line 463
    const/16 v2, 0x32

    #@110
    aput-object v4, v1, v2

    #@112
    .line 464
    const-string/jumbo v2, "android:read_phone_state"

    #@115
    const/16 v3, 0x33

    #@117
    aput-object v2, v1, v3

    #@119
    .line 465
    const-string/jumbo v2, "android:add_voicemail"

    #@11c
    const/16 v3, 0x34

    #@11e
    aput-object v2, v1, v3

    #@120
    .line 466
    const-string/jumbo v2, "android:use_sip"

    #@123
    const/16 v3, 0x35

    #@125
    aput-object v2, v1, v3

    #@127
    .line 467
    const/16 v2, 0x36

    #@129
    aput-object v4, v1, v2

    #@12b
    .line 468
    const-string/jumbo v2, "android:use_fingerprint"

    #@12e
    const/16 v3, 0x37

    #@130
    aput-object v2, v1, v3

    #@132
    .line 469
    const-string/jumbo v2, "android:body_sensors"

    #@135
    const/16 v3, 0x38

    #@137
    aput-object v2, v1, v3

    #@139
    .line 470
    const-string/jumbo v2, "android:read_cell_broadcasts"

    #@13c
    const/16 v3, 0x39

    #@13e
    aput-object v2, v1, v3

    #@140
    .line 471
    const-string/jumbo v2, "android:mock_location"

    #@143
    const/16 v3, 0x3a

    #@145
    aput-object v2, v1, v3

    #@147
    .line 472
    const-string/jumbo v2, "android:read_external_storage"

    #@14a
    const/16 v3, 0x3b

    #@14c
    aput-object v2, v1, v3

    #@14e
    .line 473
    const-string/jumbo v2, "android:write_external_storage"

    #@151
    const/16 v3, 0x3c

    #@153
    aput-object v2, v1, v3

    #@155
    .line 474
    const/16 v2, 0x3d

    #@157
    aput-object v4, v1, v2

    #@159
    .line 412
    sput-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    #@15b
    .line 481
    new-array v1, v5, [Ljava/lang/String;

    #@15d
    .line 482
    const-string/jumbo v2, "COARSE_LOCATION"

    #@160
    aput-object v2, v1, v6

    #@162
    .line 483
    const-string/jumbo v2, "FINE_LOCATION"

    #@165
    aput-object v2, v1, v7

    #@167
    .line 484
    const-string/jumbo v2, "GPS"

    #@16a
    aput-object v2, v1, v8

    #@16c
    .line 485
    const-string/jumbo v2, "VIBRATE"

    #@16f
    const/4 v3, 0x3

    #@170
    aput-object v2, v1, v3

    #@172
    .line 486
    const-string/jumbo v2, "READ_CONTACTS"

    #@175
    const/4 v3, 0x4

    #@176
    aput-object v2, v1, v3

    #@178
    .line 487
    const-string/jumbo v2, "WRITE_CONTACTS"

    #@17b
    const/4 v3, 0x5

    #@17c
    aput-object v2, v1, v3

    #@17e
    .line 488
    const-string/jumbo v2, "READ_CALL_LOG"

    #@181
    const/4 v3, 0x6

    #@182
    aput-object v2, v1, v3

    #@184
    .line 489
    const-string/jumbo v2, "WRITE_CALL_LOG"

    #@187
    const/4 v3, 0x7

    #@188
    aput-object v2, v1, v3

    #@18a
    .line 490
    const-string/jumbo v2, "READ_CALENDAR"

    #@18d
    const/16 v3, 0x8

    #@18f
    aput-object v2, v1, v3

    #@191
    .line 491
    const-string/jumbo v2, "WRITE_CALENDAR"

    #@194
    const/16 v3, 0x9

    #@196
    aput-object v2, v1, v3

    #@198
    .line 492
    const-string/jumbo v2, "WIFI_SCAN"

    #@19b
    const/16 v3, 0xa

    #@19d
    aput-object v2, v1, v3

    #@19f
    .line 493
    const-string/jumbo v2, "POST_NOTIFICATION"

    #@1a2
    const/16 v3, 0xb

    #@1a4
    aput-object v2, v1, v3

    #@1a6
    .line 494
    const-string/jumbo v2, "NEIGHBORING_CELLS"

    #@1a9
    const/16 v3, 0xc

    #@1ab
    aput-object v2, v1, v3

    #@1ad
    .line 495
    const-string/jumbo v2, "CALL_PHONE"

    #@1b0
    const/16 v3, 0xd

    #@1b2
    aput-object v2, v1, v3

    #@1b4
    .line 496
    const-string/jumbo v2, "READ_SMS"

    #@1b7
    const/16 v3, 0xe

    #@1b9
    aput-object v2, v1, v3

    #@1bb
    .line 497
    const-string/jumbo v2, "WRITE_SMS"

    #@1be
    const/16 v3, 0xf

    #@1c0
    aput-object v2, v1, v3

    #@1c2
    .line 498
    const-string/jumbo v2, "RECEIVE_SMS"

    #@1c5
    const/16 v3, 0x10

    #@1c7
    aput-object v2, v1, v3

    #@1c9
    .line 499
    const-string/jumbo v2, "RECEIVE_EMERGECY_SMS"

    #@1cc
    const/16 v3, 0x11

    #@1ce
    aput-object v2, v1, v3

    #@1d0
    .line 500
    const-string/jumbo v2, "RECEIVE_MMS"

    #@1d3
    const/16 v3, 0x12

    #@1d5
    aput-object v2, v1, v3

    #@1d7
    .line 501
    const-string/jumbo v2, "RECEIVE_WAP_PUSH"

    #@1da
    const/16 v3, 0x13

    #@1dc
    aput-object v2, v1, v3

    #@1de
    .line 502
    const-string/jumbo v2, "SEND_SMS"

    #@1e1
    const/16 v3, 0x14

    #@1e3
    aput-object v2, v1, v3

    #@1e5
    .line 503
    const-string/jumbo v2, "READ_ICC_SMS"

    #@1e8
    const/16 v3, 0x15

    #@1ea
    aput-object v2, v1, v3

    #@1ec
    .line 504
    const-string/jumbo v2, "WRITE_ICC_SMS"

    #@1ef
    const/16 v3, 0x16

    #@1f1
    aput-object v2, v1, v3

    #@1f3
    .line 505
    const-string/jumbo v2, "WRITE_SETTINGS"

    #@1f6
    const/16 v3, 0x17

    #@1f8
    aput-object v2, v1, v3

    #@1fa
    .line 506
    const-string/jumbo v2, "SYSTEM_ALERT_WINDOW"

    #@1fd
    const/16 v3, 0x18

    #@1ff
    aput-object v2, v1, v3

    #@201
    .line 507
    const-string/jumbo v2, "ACCESS_NOTIFICATIONS"

    #@204
    const/16 v3, 0x19

    #@206
    aput-object v2, v1, v3

    #@208
    .line 508
    const-string/jumbo v2, "CAMERA"

    #@20b
    const/16 v3, 0x1a

    #@20d
    aput-object v2, v1, v3

    #@20f
    .line 509
    const-string/jumbo v2, "RECORD_AUDIO"

    #@212
    const/16 v3, 0x1b

    #@214
    aput-object v2, v1, v3

    #@216
    .line 510
    const-string/jumbo v2, "PLAY_AUDIO"

    #@219
    const/16 v3, 0x1c

    #@21b
    aput-object v2, v1, v3

    #@21d
    .line 511
    const-string/jumbo v2, "READ_CLIPBOARD"

    #@220
    const/16 v3, 0x1d

    #@222
    aput-object v2, v1, v3

    #@224
    .line 512
    const-string/jumbo v2, "WRITE_CLIPBOARD"

    #@227
    const/16 v3, 0x1e

    #@229
    aput-object v2, v1, v3

    #@22b
    .line 513
    const-string/jumbo v2, "TAKE_MEDIA_BUTTONS"

    #@22e
    const/16 v3, 0x1f

    #@230
    aput-object v2, v1, v3

    #@232
    .line 514
    const-string/jumbo v2, "TAKE_AUDIO_FOCUS"

    #@235
    const/16 v3, 0x20

    #@237
    aput-object v2, v1, v3

    #@239
    .line 515
    const-string/jumbo v2, "AUDIO_MASTER_VOLUME"

    #@23c
    const/16 v3, 0x21

    #@23e
    aput-object v2, v1, v3

    #@240
    .line 516
    const-string/jumbo v2, "AUDIO_VOICE_VOLUME"

    #@243
    const/16 v3, 0x22

    #@245
    aput-object v2, v1, v3

    #@247
    .line 517
    const-string/jumbo v2, "AUDIO_RING_VOLUME"

    #@24a
    const/16 v3, 0x23

    #@24c
    aput-object v2, v1, v3

    #@24e
    .line 518
    const-string/jumbo v2, "AUDIO_MEDIA_VOLUME"

    #@251
    const/16 v3, 0x24

    #@253
    aput-object v2, v1, v3

    #@255
    .line 519
    const-string/jumbo v2, "AUDIO_ALARM_VOLUME"

    #@258
    const/16 v3, 0x25

    #@25a
    aput-object v2, v1, v3

    #@25c
    .line 520
    const-string/jumbo v2, "AUDIO_NOTIFICATION_VOLUME"

    #@25f
    const/16 v3, 0x26

    #@261
    aput-object v2, v1, v3

    #@263
    .line 521
    const-string/jumbo v2, "AUDIO_BLUETOOTH_VOLUME"

    #@266
    const/16 v3, 0x27

    #@268
    aput-object v2, v1, v3

    #@26a
    .line 522
    const-string/jumbo v2, "WAKE_LOCK"

    #@26d
    const/16 v3, 0x28

    #@26f
    aput-object v2, v1, v3

    #@271
    .line 523
    const-string/jumbo v2, "MONITOR_LOCATION"

    #@274
    const/16 v3, 0x29

    #@276
    aput-object v2, v1, v3

    #@278
    .line 524
    const-string/jumbo v2, "MONITOR_HIGH_POWER_LOCATION"

    #@27b
    const/16 v3, 0x2a

    #@27d
    aput-object v2, v1, v3

    #@27f
    .line 525
    const-string/jumbo v2, "GET_USAGE_STATS"

    #@282
    const/16 v3, 0x2b

    #@284
    aput-object v2, v1, v3

    #@286
    .line 526
    const-string/jumbo v2, "MUTE_MICROPHONE"

    #@289
    const/16 v3, 0x2c

    #@28b
    aput-object v2, v1, v3

    #@28d
    .line 527
    const-string/jumbo v2, "TOAST_WINDOW"

    #@290
    const/16 v3, 0x2d

    #@292
    aput-object v2, v1, v3

    #@294
    .line 528
    const-string/jumbo v2, "PROJECT_MEDIA"

    #@297
    const/16 v3, 0x2e

    #@299
    aput-object v2, v1, v3

    #@29b
    .line 529
    const-string/jumbo v2, "ACTIVATE_VPN"

    #@29e
    const/16 v3, 0x2f

    #@2a0
    aput-object v2, v1, v3

    #@2a2
    .line 530
    const-string/jumbo v2, "WRITE_WALLPAPER"

    #@2a5
    const/16 v3, 0x30

    #@2a7
    aput-object v2, v1, v3

    #@2a9
    .line 531
    const-string/jumbo v2, "ASSIST_STRUCTURE"

    #@2ac
    const/16 v3, 0x31

    #@2ae
    aput-object v2, v1, v3

    #@2b0
    .line 532
    const-string/jumbo v2, "ASSIST_SCREENSHOT"

    #@2b3
    const/16 v3, 0x32

    #@2b5
    aput-object v2, v1, v3

    #@2b7
    .line 533
    const-string/jumbo v2, "OP_READ_PHONE_STATE"

    #@2ba
    const/16 v3, 0x33

    #@2bc
    aput-object v2, v1, v3

    #@2be
    .line 534
    const-string/jumbo v2, "ADD_VOICEMAIL"

    #@2c1
    const/16 v3, 0x34

    #@2c3
    aput-object v2, v1, v3

    #@2c5
    .line 535
    const-string/jumbo v2, "USE_SIP"

    #@2c8
    const/16 v3, 0x35

    #@2ca
    aput-object v2, v1, v3

    #@2cc
    .line 536
    const-string/jumbo v2, "PROCESS_OUTGOING_CALLS"

    #@2cf
    const/16 v3, 0x36

    #@2d1
    aput-object v2, v1, v3

    #@2d3
    .line 537
    const-string/jumbo v2, "USE_FINGERPRINT"

    #@2d6
    const/16 v3, 0x37

    #@2d8
    aput-object v2, v1, v3

    #@2da
    .line 538
    const-string/jumbo v2, "BODY_SENSORS"

    #@2dd
    const/16 v3, 0x38

    #@2df
    aput-object v2, v1, v3

    #@2e1
    .line 539
    const-string/jumbo v2, "READ_CELL_BROADCASTS"

    #@2e4
    const/16 v3, 0x39

    #@2e6
    aput-object v2, v1, v3

    #@2e8
    .line 540
    const-string/jumbo v2, "MOCK_LOCATION"

    #@2eb
    const/16 v3, 0x3a

    #@2ed
    aput-object v2, v1, v3

    #@2ef
    .line 541
    const-string/jumbo v2, "READ_EXTERNAL_STORAGE"

    #@2f2
    const/16 v3, 0x3b

    #@2f4
    aput-object v2, v1, v3

    #@2f6
    .line 542
    const-string/jumbo v2, "WRITE_EXTERNAL_STORAGE"

    #@2f9
    const/16 v3, 0x3c

    #@2fb
    aput-object v2, v1, v3

    #@2fd
    .line 543
    const-string/jumbo v2, "TURN_ON_SCREEN"

    #@300
    const/16 v3, 0x3d

    #@302
    aput-object v2, v1, v3

    #@304
    .line 481
    sput-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    #@306
    .line 550
    new-array v1, v5, [Ljava/lang/String;

    #@308
    .line 551
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    #@30b
    aput-object v2, v1, v6

    #@30d
    .line 552
    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    #@310
    aput-object v2, v1, v7

    #@312
    .line 553
    aput-object v4, v1, v8

    #@314
    .line 554
    const-string/jumbo v2, "android.permission.VIBRATE"

    #@317
    const/4 v3, 0x3

    #@318
    aput-object v2, v1, v3

    #@31a
    .line 555
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    #@31d
    const/4 v3, 0x4

    #@31e
    aput-object v2, v1, v3

    #@320
    .line 556
    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    #@323
    const/4 v3, 0x5

    #@324
    aput-object v2, v1, v3

    #@326
    .line 557
    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    #@329
    const/4 v3, 0x6

    #@32a
    aput-object v2, v1, v3

    #@32c
    .line 558
    const-string/jumbo v2, "android.permission.WRITE_CALL_LOG"

    #@32f
    const/4 v3, 0x7

    #@330
    aput-object v2, v1, v3

    #@332
    .line 559
    const-string/jumbo v2, "android.permission.READ_CALENDAR"

    #@335
    const/16 v3, 0x8

    #@337
    aput-object v2, v1, v3

    #@339
    .line 560
    const-string/jumbo v2, "android.permission.WRITE_CALENDAR"

    #@33c
    const/16 v3, 0x9

    #@33e
    aput-object v2, v1, v3

    #@340
    .line 561
    const-string/jumbo v2, "android.permission.ACCESS_WIFI_STATE"

    #@343
    const/16 v3, 0xa

    #@345
    aput-object v2, v1, v3

    #@347
    .line 562
    const/16 v2, 0xb

    #@349
    aput-object v4, v1, v2

    #@34b
    .line 563
    const/16 v2, 0xc

    #@34d
    aput-object v4, v1, v2

    #@34f
    .line 564
    const-string/jumbo v2, "android.permission.CALL_PHONE"

    #@352
    const/16 v3, 0xd

    #@354
    aput-object v2, v1, v3

    #@356
    .line 565
    const-string/jumbo v2, "android.permission.READ_SMS"

    #@359
    const/16 v3, 0xe

    #@35b
    aput-object v2, v1, v3

    #@35d
    .line 566
    const/16 v2, 0xf

    #@35f
    aput-object v4, v1, v2

    #@361
    .line 567
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    #@364
    const/16 v3, 0x10

    #@366
    aput-object v2, v1, v3

    #@368
    .line 568
    const-string/jumbo v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    #@36b
    const/16 v3, 0x11

    #@36d
    aput-object v2, v1, v3

    #@36f
    .line 569
    const-string/jumbo v2, "android.permission.RECEIVE_MMS"

    #@372
    const/16 v3, 0x12

    #@374
    aput-object v2, v1, v3

    #@376
    .line 570
    const-string/jumbo v2, "android.permission.RECEIVE_WAP_PUSH"

    #@379
    const/16 v3, 0x13

    #@37b
    aput-object v2, v1, v3

    #@37d
    .line 571
    const-string/jumbo v2, "android.permission.SEND_SMS"

    #@380
    const/16 v3, 0x14

    #@382
    aput-object v2, v1, v3

    #@384
    .line 572
    const-string/jumbo v2, "android.permission.READ_SMS"

    #@387
    const/16 v3, 0x15

    #@389
    aput-object v2, v1, v3

    #@38b
    .line 573
    const/16 v2, 0x16

    #@38d
    aput-object v4, v1, v2

    #@38f
    .line 574
    const-string/jumbo v2, "android.permission.WRITE_SETTINGS"

    #@392
    const/16 v3, 0x17

    #@394
    aput-object v2, v1, v3

    #@396
    .line 575
    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    #@399
    const/16 v3, 0x18

    #@39b
    aput-object v2, v1, v3

    #@39d
    .line 576
    const-string/jumbo v2, "android.permission.ACCESS_NOTIFICATIONS"

    #@3a0
    const/16 v3, 0x19

    #@3a2
    aput-object v2, v1, v3

    #@3a4
    .line 577
    const-string/jumbo v2, "android.permission.CAMERA"

    #@3a7
    const/16 v3, 0x1a

    #@3a9
    aput-object v2, v1, v3

    #@3ab
    .line 578
    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    #@3ae
    const/16 v3, 0x1b

    #@3b0
    aput-object v2, v1, v3

    #@3b2
    .line 579
    const/16 v2, 0x1c

    #@3b4
    aput-object v4, v1, v2

    #@3b6
    .line 580
    const/16 v2, 0x1d

    #@3b8
    aput-object v4, v1, v2

    #@3ba
    .line 581
    const/16 v2, 0x1e

    #@3bc
    aput-object v4, v1, v2

    #@3be
    .line 582
    const/16 v2, 0x1f

    #@3c0
    aput-object v4, v1, v2

    #@3c2
    .line 583
    const/16 v2, 0x20

    #@3c4
    aput-object v4, v1, v2

    #@3c6
    .line 584
    const/16 v2, 0x21

    #@3c8
    aput-object v4, v1, v2

    #@3ca
    .line 585
    const/16 v2, 0x22

    #@3cc
    aput-object v4, v1, v2

    #@3ce
    .line 586
    const/16 v2, 0x23

    #@3d0
    aput-object v4, v1, v2

    #@3d2
    .line 587
    const/16 v2, 0x24

    #@3d4
    aput-object v4, v1, v2

    #@3d6
    .line 588
    const/16 v2, 0x25

    #@3d8
    aput-object v4, v1, v2

    #@3da
    .line 589
    const/16 v2, 0x26

    #@3dc
    aput-object v4, v1, v2

    #@3de
    .line 590
    const/16 v2, 0x27

    #@3e0
    aput-object v4, v1, v2

    #@3e2
    .line 591
    const-string/jumbo v2, "android.permission.WAKE_LOCK"

    #@3e5
    const/16 v3, 0x28

    #@3e7
    aput-object v2, v1, v3

    #@3e9
    .line 592
    const/16 v2, 0x29

    #@3eb
    aput-object v4, v1, v2

    #@3ed
    .line 593
    const/16 v2, 0x2a

    #@3ef
    aput-object v4, v1, v2

    #@3f1
    .line 594
    const-string/jumbo v2, "android.permission.PACKAGE_USAGE_STATS"

    #@3f4
    const/16 v3, 0x2b

    #@3f6
    aput-object v2, v1, v3

    #@3f8
    .line 595
    const/16 v2, 0x2c

    #@3fa
    aput-object v4, v1, v2

    #@3fc
    .line 596
    const/16 v2, 0x2d

    #@3fe
    aput-object v4, v1, v2

    #@400
    .line 597
    const/16 v2, 0x2e

    #@402
    aput-object v4, v1, v2

    #@404
    .line 598
    const/16 v2, 0x2f

    #@406
    aput-object v4, v1, v2

    #@408
    .line 599
    const/16 v2, 0x30

    #@40a
    aput-object v4, v1, v2

    #@40c
    .line 600
    const/16 v2, 0x31

    #@40e
    aput-object v4, v1, v2

    #@410
    .line 601
    const/16 v2, 0x32

    #@412
    aput-object v4, v1, v2

    #@414
    .line 602
    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    #@417
    const/16 v3, 0x33

    #@419
    aput-object v2, v1, v3

    #@41b
    .line 603
    const-string/jumbo v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    #@41e
    const/16 v3, 0x34

    #@420
    aput-object v2, v1, v3

    #@422
    .line 604
    const-string/jumbo v2, "android.permission.USE_SIP"

    #@425
    const/16 v3, 0x35

    #@427
    aput-object v2, v1, v3

    #@429
    .line 605
    const-string/jumbo v2, "android.permission.PROCESS_OUTGOING_CALLS"

    #@42c
    const/16 v3, 0x36

    #@42e
    aput-object v2, v1, v3

    #@430
    .line 606
    const-string/jumbo v2, "android.permission.USE_FINGERPRINT"

    #@433
    const/16 v3, 0x37

    #@435
    aput-object v2, v1, v3

    #@437
    .line 607
    const-string/jumbo v2, "android.permission.BODY_SENSORS"

    #@43a
    const/16 v3, 0x38

    #@43c
    aput-object v2, v1, v3

    #@43e
    .line 608
    const-string/jumbo v2, "android.permission.READ_CELL_BROADCASTS"

    #@441
    const/16 v3, 0x39

    #@443
    aput-object v2, v1, v3

    #@445
    .line 609
    const/16 v2, 0x3a

    #@447
    aput-object v4, v1, v2

    #@449
    .line 610
    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    #@44c
    const/16 v3, 0x3b

    #@44e
    aput-object v2, v1, v3

    #@450
    .line 611
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    #@453
    const/16 v3, 0x3c

    #@455
    aput-object v2, v1, v3

    #@457
    .line 612
    const/16 v2, 0x3d

    #@459
    aput-object v4, v1, v2

    #@45b
    .line 550
    sput-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    #@45d
    .line 620
    new-array v1, v5, [Ljava/lang/String;

    #@45f
    .line 621
    const-string/jumbo v2, "no_share_location"

    #@462
    aput-object v2, v1, v6

    #@464
    .line 622
    const-string/jumbo v2, "no_share_location"

    #@467
    aput-object v2, v1, v7

    #@469
    .line 623
    const-string/jumbo v2, "no_share_location"

    #@46c
    aput-object v2, v1, v8

    #@46e
    .line 624
    const/4 v2, 0x3

    #@46f
    aput-object v4, v1, v2

    #@471
    .line 625
    const/4 v2, 0x4

    #@472
    aput-object v4, v1, v2

    #@474
    .line 626
    const/4 v2, 0x5

    #@475
    aput-object v4, v1, v2

    #@477
    .line 627
    const-string/jumbo v2, "no_outgoing_calls"

    #@47a
    const/4 v3, 0x6

    #@47b
    aput-object v2, v1, v3

    #@47d
    .line 628
    const-string/jumbo v2, "no_outgoing_calls"

    #@480
    const/4 v3, 0x7

    #@481
    aput-object v2, v1, v3

    #@483
    .line 629
    const/16 v2, 0x8

    #@485
    aput-object v4, v1, v2

    #@487
    .line 630
    const/16 v2, 0x9

    #@489
    aput-object v4, v1, v2

    #@48b
    .line 631
    const-string/jumbo v2, "no_share_location"

    #@48e
    const/16 v3, 0xa

    #@490
    aput-object v2, v1, v3

    #@492
    .line 632
    const/16 v2, 0xb

    #@494
    aput-object v4, v1, v2

    #@496
    .line 633
    const/16 v2, 0xc

    #@498
    aput-object v4, v1, v2

    #@49a
    .line 634
    const/16 v2, 0xd

    #@49c
    aput-object v4, v1, v2

    #@49e
    .line 635
    const-string/jumbo v2, "no_sms"

    #@4a1
    const/16 v3, 0xe

    #@4a3
    aput-object v2, v1, v3

    #@4a5
    .line 636
    const-string/jumbo v2, "no_sms"

    #@4a8
    const/16 v3, 0xf

    #@4aa
    aput-object v2, v1, v3

    #@4ac
    .line 637
    const-string/jumbo v2, "no_sms"

    #@4af
    const/16 v3, 0x10

    #@4b1
    aput-object v2, v1, v3

    #@4b3
    .line 638
    const/16 v2, 0x11

    #@4b5
    aput-object v4, v1, v2

    #@4b7
    .line 639
    const-string/jumbo v2, "no_sms"

    #@4ba
    const/16 v3, 0x12

    #@4bc
    aput-object v2, v1, v3

    #@4be
    .line 640
    const/16 v2, 0x13

    #@4c0
    aput-object v4, v1, v2

    #@4c2
    .line 641
    const-string/jumbo v2, "no_sms"

    #@4c5
    const/16 v3, 0x14

    #@4c7
    aput-object v2, v1, v3

    #@4c9
    .line 642
    const-string/jumbo v2, "no_sms"

    #@4cc
    const/16 v3, 0x15

    #@4ce
    aput-object v2, v1, v3

    #@4d0
    .line 643
    const-string/jumbo v2, "no_sms"

    #@4d3
    const/16 v3, 0x16

    #@4d5
    aput-object v2, v1, v3

    #@4d7
    .line 644
    const/16 v2, 0x17

    #@4d9
    aput-object v4, v1, v2

    #@4db
    .line 645
    const-string/jumbo v2, "no_create_windows"

    #@4de
    const/16 v3, 0x18

    #@4e0
    aput-object v2, v1, v3

    #@4e2
    .line 646
    const/16 v2, 0x19

    #@4e4
    aput-object v4, v1, v2

    #@4e6
    .line 647
    const/16 v2, 0x1a

    #@4e8
    aput-object v4, v1, v2

    #@4ea
    .line 648
    const-string/jumbo v2, "no_record_audio"

    #@4ed
    const/16 v3, 0x1b

    #@4ef
    aput-object v2, v1, v3

    #@4f1
    .line 649
    const/16 v2, 0x1c

    #@4f3
    aput-object v4, v1, v2

    #@4f5
    .line 650
    const/16 v2, 0x1d

    #@4f7
    aput-object v4, v1, v2

    #@4f9
    .line 651
    const/16 v2, 0x1e

    #@4fb
    aput-object v4, v1, v2

    #@4fd
    .line 652
    const/16 v2, 0x1f

    #@4ff
    aput-object v4, v1, v2

    #@501
    .line 653
    const/16 v2, 0x20

    #@503
    aput-object v4, v1, v2

    #@505
    .line 654
    const-string/jumbo v2, "no_adjust_volume"

    #@508
    const/16 v3, 0x21

    #@50a
    aput-object v2, v1, v3

    #@50c
    .line 655
    const-string/jumbo v2, "no_adjust_volume"

    #@50f
    const/16 v3, 0x22

    #@511
    aput-object v2, v1, v3

    #@513
    .line 656
    const-string/jumbo v2, "no_adjust_volume"

    #@516
    const/16 v3, 0x23

    #@518
    aput-object v2, v1, v3

    #@51a
    .line 657
    const-string/jumbo v2, "no_adjust_volume"

    #@51d
    const/16 v3, 0x24

    #@51f
    aput-object v2, v1, v3

    #@521
    .line 658
    const-string/jumbo v2, "no_adjust_volume"

    #@524
    const/16 v3, 0x25

    #@526
    aput-object v2, v1, v3

    #@528
    .line 659
    const-string/jumbo v2, "no_adjust_volume"

    #@52b
    const/16 v3, 0x26

    #@52d
    aput-object v2, v1, v3

    #@52f
    .line 660
    const-string/jumbo v2, "no_adjust_volume"

    #@532
    const/16 v3, 0x27

    #@534
    aput-object v2, v1, v3

    #@536
    .line 661
    const/16 v2, 0x28

    #@538
    aput-object v4, v1, v2

    #@53a
    .line 662
    const-string/jumbo v2, "no_share_location"

    #@53d
    const/16 v3, 0x29

    #@53f
    aput-object v2, v1, v3

    #@541
    .line 663
    const-string/jumbo v2, "no_share_location"

    #@544
    const/16 v3, 0x2a

    #@546
    aput-object v2, v1, v3

    #@548
    .line 664
    const/16 v2, 0x2b

    #@54a
    aput-object v4, v1, v2

    #@54c
    .line 665
    const-string/jumbo v2, "no_unmute_microphone"

    #@54f
    const/16 v3, 0x2c

    #@551
    aput-object v2, v1, v3

    #@553
    .line 666
    const-string/jumbo v2, "no_create_windows"

    #@556
    const/16 v3, 0x2d

    #@558
    aput-object v2, v1, v3

    #@55a
    .line 667
    const/16 v2, 0x2e

    #@55c
    aput-object v4, v1, v2

    #@55e
    .line 668
    const-string/jumbo v2, "no_config_vpn"

    #@561
    const/16 v3, 0x2f

    #@563
    aput-object v2, v1, v3

    #@565
    .line 669
    const-string/jumbo v2, "no_wallpaper"

    #@568
    const/16 v3, 0x30

    #@56a
    aput-object v2, v1, v3

    #@56c
    .line 670
    const/16 v2, 0x31

    #@56e
    aput-object v4, v1, v2

    #@570
    .line 671
    const/16 v2, 0x32

    #@572
    aput-object v4, v1, v2

    #@574
    .line 672
    const/16 v2, 0x33

    #@576
    aput-object v4, v1, v2

    #@578
    .line 673
    const/16 v2, 0x34

    #@57a
    aput-object v4, v1, v2

    #@57c
    .line 674
    const/16 v2, 0x35

    #@57e
    aput-object v4, v1, v2

    #@580
    .line 675
    const/16 v2, 0x36

    #@582
    aput-object v4, v1, v2

    #@584
    .line 676
    const/16 v2, 0x37

    #@586
    aput-object v4, v1, v2

    #@588
    .line 677
    const/16 v2, 0x38

    #@58a
    aput-object v4, v1, v2

    #@58c
    .line 678
    const/16 v2, 0x39

    #@58e
    aput-object v4, v1, v2

    #@590
    .line 679
    const/16 v2, 0x3a

    #@592
    aput-object v4, v1, v2

    #@594
    .line 680
    const/16 v2, 0x3b

    #@596
    aput-object v4, v1, v2

    #@598
    .line 681
    const/16 v2, 0x3c

    #@59a
    aput-object v4, v1, v2

    #@59c
    .line 682
    const/16 v2, 0x3d

    #@59e
    aput-object v4, v1, v2

    #@5a0
    .line 620
    sput-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    #@5a2
    .line 689
    new-array v1, v5, [Z

    #@5a4
    fill-array-data v1, :array_1

    #@5a7
    sput-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    #@5a9
    .line 757
    new-array v1, v5, [I

    #@5ab
    fill-array-data v1, :array_2

    #@5ae
    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    #@5b0
    .line 829
    new-array v1, v5, [Z

    #@5b2
    fill-array-data v1, :array_3

    #@5b5
    sput-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    #@5b7
    .line 897
    new-instance v1, Ljava/util/HashMap;

    #@5b9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5bc
    sput-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    #@5be
    .line 902
    new-instance v1, Ljava/util/HashMap;

    #@5c0
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5c3
    sput-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    #@5c5
    .line 905
    sget-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    #@5c7
    array-length v1, v1

    #@5c8
    if-eq v1, v5, :cond_0

    #@5ca
    .line 906
    new-instance v1, Ljava/lang/IllegalStateException;

    #@5cc
    new-instance v2, Ljava/lang/StringBuilder;

    #@5ce
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d1
    const-string/jumbo v3, "sOpToSwitch length "

    #@5d4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d7
    move-result-object v2

    #@5d8
    sget-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    #@5da
    array-length v3, v3

    #@5db
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5de
    move-result-object v2

    #@5df
    .line 907
    const-string/jumbo v3, " should be "

    #@5e2
    .line 906
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e5
    move-result-object v2

    #@5e6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e9
    move-result-object v2

    #@5ea
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ed
    move-result-object v2

    #@5ee
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5f1
    throw v1

    #@5f2
    .line 909
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    #@5f4
    array-length v1, v1

    #@5f5
    if-eq v1, v5, :cond_1

    #@5f7
    .line 910
    new-instance v1, Ljava/lang/IllegalStateException;

    #@5f9
    new-instance v2, Ljava/lang/StringBuilder;

    #@5fb
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5fe
    const-string/jumbo v3, "sOpToString length "

    #@601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@604
    move-result-object v2

    #@605
    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    #@607
    array-length v3, v3

    #@608
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60b
    move-result-object v2

    #@60c
    .line 911
    const-string/jumbo v3, " should be "

    #@60f
    .line 910
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@612
    move-result-object v2

    #@613
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@616
    move-result-object v2

    #@617
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61a
    move-result-object v2

    #@61b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@61e
    throw v1

    #@61f
    .line 913
    :cond_1
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    #@621
    array-length v1, v1

    #@622
    if-eq v1, v5, :cond_2

    #@624
    .line 914
    new-instance v1, Ljava/lang/IllegalStateException;

    #@626
    new-instance v2, Ljava/lang/StringBuilder;

    #@628
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@62b
    const-string/jumbo v3, "sOpNames length "

    #@62e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@631
    move-result-object v2

    #@632
    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    #@634
    array-length v3, v3

    #@635
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@638
    move-result-object v2

    #@639
    .line 915
    const-string/jumbo v3, " should be "

    #@63c
    .line 914
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63f
    move-result-object v2

    #@640
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@643
    move-result-object v2

    #@644
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@647
    move-result-object v2

    #@648
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@64b
    throw v1

    #@64c
    .line 917
    :cond_2
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    #@64e
    array-length v1, v1

    #@64f
    if-eq v1, v5, :cond_3

    #@651
    .line 918
    new-instance v1, Ljava/lang/IllegalStateException;

    #@653
    new-instance v2, Ljava/lang/StringBuilder;

    #@655
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@658
    const-string/jumbo v3, "sOpPerms length "

    #@65b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65e
    move-result-object v2

    #@65f
    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    #@661
    array-length v3, v3

    #@662
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@665
    move-result-object v2

    #@666
    .line 919
    const-string/jumbo v3, " should be "

    #@669
    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66c
    move-result-object v2

    #@66d
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@670
    move-result-object v2

    #@671
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@674
    move-result-object v2

    #@675
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@678
    throw v1

    #@679
    .line 921
    :cond_3
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    #@67b
    array-length v1, v1

    #@67c
    if-eq v1, v5, :cond_4

    #@67e
    .line 922
    new-instance v1, Ljava/lang/IllegalStateException;

    #@680
    new-instance v2, Ljava/lang/StringBuilder;

    #@682
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@685
    const-string/jumbo v3, "sOpDefaultMode length "

    #@688
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68b
    move-result-object v2

    #@68c
    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    #@68e
    array-length v3, v3

    #@68f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@692
    move-result-object v2

    #@693
    .line 923
    const-string/jumbo v3, " should be "

    #@696
    .line 922
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@699
    move-result-object v2

    #@69a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69d
    move-result-object v2

    #@69e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a1
    move-result-object v2

    #@6a2
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6a5
    throw v1

    #@6a6
    .line 925
    :cond_4
    sget-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    #@6a8
    array-length v1, v1

    #@6a9
    if-eq v1, v5, :cond_5

    #@6ab
    .line 926
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6ad
    new-instance v2, Ljava/lang/StringBuilder;

    #@6af
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6b2
    const-string/jumbo v3, "sOpDisableReset length "

    #@6b5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b8
    move-result-object v2

    #@6b9
    sget-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    #@6bb
    array-length v3, v3

    #@6bc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6bf
    move-result-object v2

    #@6c0
    .line 927
    const-string/jumbo v3, " should be "

    #@6c3
    .line 926
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c6
    move-result-object v2

    #@6c7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6ca
    move-result-object v2

    #@6cb
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6ce
    move-result-object v2

    #@6cf
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6d2
    throw v1

    #@6d3
    .line 929
    :cond_5
    sget-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    #@6d5
    array-length v1, v1

    #@6d6
    if-eq v1, v5, :cond_6

    #@6d8
    .line 930
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6da
    new-instance v2, Ljava/lang/StringBuilder;

    #@6dc
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6df
    const-string/jumbo v3, "sOpRestrictions length "

    #@6e2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e5
    move-result-object v2

    #@6e6
    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    #@6e8
    array-length v3, v3

    #@6e9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6ec
    move-result-object v2

    #@6ed
    .line 931
    const-string/jumbo v3, " should be "

    #@6f0
    .line 930
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f3
    move-result-object v2

    #@6f4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f7
    move-result-object v2

    #@6f8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6fb
    move-result-object v2

    #@6fc
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6ff
    throw v1

    #@700
    .line 933
    :cond_6
    sget-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    #@702
    array-length v1, v1

    #@703
    if-eq v1, v5, :cond_7

    #@705
    .line 934
    new-instance v1, Ljava/lang/IllegalStateException;

    #@707
    new-instance v2, Ljava/lang/StringBuilder;

    #@709
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@70c
    const-string/jumbo v3, "sOpAllowSYstemRestrictionsBypass length "

    #@70f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@712
    move-result-object v2

    #@713
    .line 935
    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    #@715
    array-length v3, v3

    #@716
    .line 934
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@719
    move-result-object v2

    #@71a
    .line 935
    const-string/jumbo v3, " should be "

    #@71d
    .line 934
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@720
    move-result-object v2

    #@721
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@724
    move-result-object v2

    #@725
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@728
    move-result-object v2

    #@729
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@72c
    throw v1

    #@72d
    .line 937
    :cond_7
    const/4 v0, 0x0

    #@72e
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_9

    #@730
    .line 938
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    #@732
    aget-object v1, v1, v0

    #@734
    if-eqz v1, :cond_8

    #@736
    .line 939
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    #@738
    sget-object v2, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    #@73a
    aget-object v2, v2, v0

    #@73c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73f
    move-result-object v3

    #@740
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@743
    .line 937
    :cond_8
    add-int/lit8 v0, v0, 0x1

    #@745
    goto :goto_0

    #@746
    .line 942
    :cond_9
    const/4 v0, 0x0

    #@747
    :goto_1
    if-ge v0, v5, :cond_b

    #@749
    .line 943
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    #@74b
    aget-object v1, v1, v0

    #@74d
    if-eqz v1, :cond_a

    #@74f
    .line 944
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    #@751
    sget-object v2, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    #@753
    aget-object v2, v2, v0

    #@755
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@758
    move-result-object v3

    #@759
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75c
    .line 942
    :cond_a
    add-int/lit8 v0, v0, 0x1

    #@75e
    goto :goto_1

    #@75f
    .line 49
    :cond_b
    return-void

    #@760
    .line 343
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0xb
        0x0
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x14
        0xe
        0xf
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x0
        0x0
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
    .end array-data

    #@7e0
    .line 689
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@803
    .line 757
    nop

    #@804
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
    .end array-data

    #@884
    .line 829
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    #@0
    .prologue
    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 74
    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    #@a
    .line 1202
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    #@c
    .line 1203
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@e
    .line 1201
    return-void
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, " from uid "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, " not allowed to perform "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    #@1d
    aget-object v1, v1, p1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .locals 3
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;

    #@0
    .prologue
    .line 1665
    const-class v2, Landroid/app/AppOpsManager;

    #@2
    monitor-enter v2

    #@3
    .line 1666
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1667
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v2

    #@a
    return-object v1

    #@b
    .line 1670
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Binder;

    #@d
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    #@10
    invoke-interface {p0, v1}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    sput-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 1674
    :goto_0
    :try_start_2
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@18
    monitor-exit v2

    #@19
    return-object v1

    #@1a
    .line 1665
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1

    #@1d
    .line 1671
    :catch_0
    move-exception v0

    #@1e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static opAllowSystemBypassRestriction(I)Z
    .locals 1
    .param p0, "op"    # I

    #@0
    .prologue
    .line 1009
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    #@2
    aget-boolean v0, v0, p0

    #@4
    return v0
.end method

.method public static opAllowsReset(I)Z
    .locals 1
    .param p0, "op"    # I

    #@0
    .prologue
    .line 1025
    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    #@2
    aget-boolean v0, v0, p0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public static opToDefaultMode(I)I
    .locals 1
    .param p0, "op"    # I

    #@0
    .prologue
    .line 1017
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    #@2
    aget v0, v0, p0

    #@4
    return v0
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "op"    # I

    #@0
    .prologue
    .line 962
    const/4 v0, -0x1

    #@1
    if-ne p0, v0, :cond_0

    #@3
    const-string/jumbo v0, "NONE"

    #@6
    return-object v0

    #@7
    .line 963
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    #@9
    array-length v0, v0

    #@a
    if-ge p0, v0, :cond_1

    #@c
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    #@e
    aget-object v0, v0, p0

    #@10
    :goto_0
    return-object v0

    #@11
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v1, "Unknown("

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, ")"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    goto :goto_0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    #@0
    .prologue
    .line 983
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p0

    #@4
    return-object v0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    #@0
    .prologue
    .line 991
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p0

    #@4
    return-object v0
.end method

.method public static opToSwitch(I)I
    .locals 1
    .param p0, "op"    # I

    #@0
    .prologue
    .line 954
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    #@2
    aget v0, v0, p0

    #@4
    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1289
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/Integer;

    #@9
    .line 1290
    .local v0, "opCode":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@b
    .line 1291
    return-object v2

    #@c
    .line 1293
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    #@e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@11
    move-result v2

    #@12
    aget-object v1, v1, v2

    #@14
    return-object v1
.end method

.method public static permissionToOpCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 999
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 1000
    .local v0, "boxedOpCode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v1

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, -0x1

    #@10
    goto :goto_0
.end method

.method public static strDebugOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    #@0
    .prologue
    .line 970
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 971
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 972
    return v0

    #@11
    .line 970
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 975
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Unknown operation string: "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1
.end method

.method public static strOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1361
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 1362
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@a
    .line 1363
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Unknown operation string: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 1365
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@27
    move-result v1

    #@28
    return v1
.end method


# virtual methods
.method public checkAudioOp(IIILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1552
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    #@5
    move-result v1

    #@6
    .line 1553
    .local v1, "mode":I
    const/4 v2, 0x2

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 1554
    new-instance v2, Ljava/lang/SecurityException;

    #@b
    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1557
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    #@14
    .line 1559
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 1556
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1569
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1570
    :catch_0
    move-exception v0

    #@8
    .line 1572
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    #@9
    return v1
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1506
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    #@5
    move-result v1

    #@6
    .line 1507
    .local v1, "mode":I
    const/4 v2, 0x2

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 1508
    new-instance v2, Ljava/lang/SecurityException;

    #@b
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1511
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    #@14
    .line 1513
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 1510
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1385
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1523
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1524
    :catch_0
    move-exception v0

    #@8
    .line 1526
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    #@9
    return v1
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1393
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public checkPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1537
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1538
    new-instance v1, Ljava/lang/SecurityException;

    #@a
    .line 1539
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Package "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, " does not belong to "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 1538
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 1541
    :catch_0
    move-exception v0

    #@2e
    .line 1542
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    #@30
    const-string/jumbo v2, "Unable to verify package ownership"

    #@33
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@36
    throw v1

    #@37
    .line 1535
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public finishOp(I)V
    .locals 2
    .param p1, "op"    # I

    #@0
    .prologue
    .line 1741
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    #@d
    .line 1740
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1734
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@4
    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1732
    :goto_0
    return-void

    #@c
    .line 1735
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1484
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    #@7
    .line 1483
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1230
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1231
    :catch_0
    move-exception v0

    #@8
    .line 1233
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 2
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1214
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1215
    :catch_0
    move-exception v0

    #@8
    .line 1217
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public noteOp(I)I
    .locals 2
    .param p1, "op"    # I

    #@0
    .prologue
    .line 1660
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1592
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    #@5
    move-result v1

    #@6
    .line 1593
    .local v1, "mode":I
    const/4 v2, 0x2

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 1594
    new-instance v2, Ljava/lang/SecurityException;

    #@b
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1597
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    #@14
    .line 1599
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 1596
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1411
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1652
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1653
    :catch_0
    move-exception v0

    #@8
    .line 1655
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    #@9
    return v1
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1419
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public noteProxyOp(ILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1621
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 1622
    .local v0, "mode":I
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 1623
    new-instance v1, Ljava/lang/SecurityException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Proxy package "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 1624
    const-string/jumbo v3, " from uid "

    #@22
    .line 1623
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 1624
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@29
    move-result v3

    #@2a
    .line 1623
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 1624
    const-string/jumbo v3, " or calling package "

    #@31
    .line 1623
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    .line 1625
    const-string/jumbo v3, " from uid "

    #@3c
    .line 1623
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    .line 1625
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@43
    move-result v3

    #@44
    .line 1623
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 1626
    const-string/jumbo v3, " not allowed to perform "

    #@4b
    .line 1623
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 1626
    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    #@51
    aget-object v3, v3, p1

    #@53
    .line 1623
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v1

    #@5f
    .line 1628
    :cond_0
    return v0
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1438
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public noteProxyOpNoThrow(ILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1638
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 1639
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v3

    #@c
    .line 1638
    invoke-interface {v1, p1, v2, v3, p2}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 1640
    :catch_0
    move-exception v0

    #@12
    .line 1642
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    #@13
    return v1
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1446
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public resetAllModes()V
    .locals 4

    #@0
    .prologue
    .line 1275
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v2

    #@6
    const/4 v3, 0x0

    #@7
    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1273
    :goto_0
    return-void

    #@b
    .line 1276
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    #@0
    .prologue
    .line 1247
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1245
    :goto_0
    return-void

    #@6
    .line 1248
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1266
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    .line 1267
    .local v3, "uid":I
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@6
    move v1, p1

    #@7
    move v2, p2

    #@8
    move v4, p3

    #@9
    move-object v5, p4

    #@a
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1264
    .end local v3    # "uid":I
    :goto_0
    return-void

    #@e
    .line 1268
    :catch_0
    move-exception v6

    #@f
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setUidMode(III)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    #@0
    .prologue
    .line 1239
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1237
    :goto_0
    return-void

    #@6
    .line 1240
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startOp(I)I
    .locals 2
    .param p1, "op"    # I

    #@0
    .prologue
    .line 1722
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1697
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    iget-object v3, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@4
    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    invoke-interface {v2, v3, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    #@b
    move-result v1

    #@c
    .line 1698
    .local v1, "mode":I
    const/4 v2, 0x2

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 1699
    new-instance v2, Ljava/lang/SecurityException;

    #@11
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 1702
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    #@1a
    .line 1704
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    #@1b
    return v2

    #@1c
    .line 1701
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1466
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1714
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@4
    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1715
    :catch_0
    move-exception v0

    #@e
    .line 1717
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    #@f
    return v1
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1474
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    #@0
    .prologue
    .line 1315
    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    #@2
    monitor-enter v3

    #@3
    .line 1316
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    #@b
    .line 1317
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v0, :cond_0

    #@d
    .line 1318
    new-instance v0, Landroid/app/AppOpsManager$1;

    #@f
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    #@12
    .line 1328
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v2, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 1331
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@19
    invoke-interface {v2, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    :goto_0
    monitor-exit v3

    #@1d
    .line 1314
    return-void

    #@1e
    .line 1315
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit v3

    #@20
    throw v2

    #@21
    .line 1332
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    #@22
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    #@0
    .prologue
    .line 1304
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    #@7
    .line 1303
    return-void
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    #@0
    .prologue
    .line 1342
    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    #@2
    monitor-enter v3

    #@3
    .line 1343
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 1344
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v0, :cond_0

    #@d
    .line 1346
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@f
    invoke-interface {v2, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    :cond_0
    :goto_0
    monitor-exit v3

    #@13
    .line 1341
    return-void

    #@14
    .line 1342
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v2

    #@15
    monitor-exit v3

    #@16
    throw v2

    #@17
    .line 1347
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    #@18
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
