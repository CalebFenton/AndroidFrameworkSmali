.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;
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

.field public static final OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"

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

.field public static final OP_GET_ACCOUNTS:I = 0x3e

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

.field public static final OP_RUN_IN_BACKGROUND:I = 0x3f

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

.field private static final RUNTIME_PERMISSIONS_OPS:[I

.field public static final _NUM_OP:I = 0x40

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

.field private static sRuntimePermToOp:Ljava/util/HashMap;
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
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/16 v8, 0x19

    #@3
    const/4 v2, 0x0

    #@4
    const/16 v7, 0x40

    #@6
    const/4 v6, 0x0

    #@7
    .line 342
    new-array v3, v8, [I

    #@9
    fill-array-data v3, :array_0

    #@c
    sput-object v3, Landroid/app/AppOpsManager;->RUNTIME_PERMISSIONS_OPS:[I

    #@e
    .line 387
    new-array v3, v7, [I

    #@10
    fill-array-data v3, :array_1

    #@13
    sput-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    #@15
    .line 458
    new-array v3, v7, [Ljava/lang/String;

    #@17
    .line 459
    const-string/jumbo v4, "android:coarse_location"

    #@1a
    aput-object v4, v3, v2

    #@1c
    .line 460
    const-string/jumbo v4, "android:fine_location"

    #@1f
    aput-object v4, v3, v9

    #@21
    .line 461
    const/4 v4, 0x2

    #@22
    aput-object v6, v3, v4

    #@24
    .line 462
    const/4 v4, 0x3

    #@25
    aput-object v6, v3, v4

    #@27
    .line 463
    const-string/jumbo v4, "android:read_contacts"

    #@2a
    const/4 v5, 0x4

    #@2b
    aput-object v4, v3, v5

    #@2d
    .line 464
    const-string/jumbo v4, "android:write_contacts"

    #@30
    const/4 v5, 0x5

    #@31
    aput-object v4, v3, v5

    #@33
    .line 465
    const-string/jumbo v4, "android:read_call_log"

    #@36
    const/4 v5, 0x6

    #@37
    aput-object v4, v3, v5

    #@39
    .line 466
    const-string/jumbo v4, "android:write_call_log"

    #@3c
    const/4 v5, 0x7

    #@3d
    aput-object v4, v3, v5

    #@3f
    .line 467
    const-string/jumbo v4, "android:read_calendar"

    #@42
    const/16 v5, 0x8

    #@44
    aput-object v4, v3, v5

    #@46
    .line 468
    const-string/jumbo v4, "android:write_calendar"

    #@49
    const/16 v5, 0x9

    #@4b
    aput-object v4, v3, v5

    #@4d
    .line 469
    const/16 v4, 0xa

    #@4f
    aput-object v6, v3, v4

    #@51
    .line 470
    const/16 v4, 0xb

    #@53
    aput-object v6, v3, v4

    #@55
    .line 471
    const/16 v4, 0xc

    #@57
    aput-object v6, v3, v4

    #@59
    .line 472
    const-string/jumbo v4, "android:call_phone"

    #@5c
    const/16 v5, 0xd

    #@5e
    aput-object v4, v3, v5

    #@60
    .line 473
    const-string/jumbo v4, "android:read_sms"

    #@63
    const/16 v5, 0xe

    #@65
    aput-object v4, v3, v5

    #@67
    .line 474
    const/16 v4, 0xf

    #@69
    aput-object v6, v3, v4

    #@6b
    .line 475
    const-string/jumbo v4, "android:receive_sms"

    #@6e
    const/16 v5, 0x10

    #@70
    aput-object v4, v3, v5

    #@72
    .line 476
    const/16 v4, 0x11

    #@74
    aput-object v6, v3, v4

    #@76
    .line 477
    const-string/jumbo v4, "android:receive_mms"

    #@79
    const/16 v5, 0x12

    #@7b
    aput-object v4, v3, v5

    #@7d
    .line 478
    const-string/jumbo v4, "android:receive_wap_push"

    #@80
    const/16 v5, 0x13

    #@82
    aput-object v4, v3, v5

    #@84
    .line 479
    const-string/jumbo v4, "android:send_sms"

    #@87
    const/16 v5, 0x14

    #@89
    aput-object v4, v3, v5

    #@8b
    .line 480
    const/16 v4, 0x15

    #@8d
    aput-object v6, v3, v4

    #@8f
    .line 481
    const/16 v4, 0x16

    #@91
    aput-object v6, v3, v4

    #@93
    .line 482
    const-string/jumbo v4, "android:write_settings"

    #@96
    const/16 v5, 0x17

    #@98
    aput-object v4, v3, v5

    #@9a
    .line 483
    const-string/jumbo v4, "android:system_alert_window"

    #@9d
    const/16 v5, 0x18

    #@9f
    aput-object v4, v3, v5

    #@a1
    .line 484
    aput-object v6, v3, v8

    #@a3
    .line 485
    const-string/jumbo v4, "android:camera"

    #@a6
    const/16 v5, 0x1a

    #@a8
    aput-object v4, v3, v5

    #@aa
    .line 486
    const-string/jumbo v4, "android:record_audio"

    #@ad
    const/16 v5, 0x1b

    #@af
    aput-object v4, v3, v5

    #@b1
    .line 487
    const/16 v4, 0x1c

    #@b3
    aput-object v6, v3, v4

    #@b5
    .line 488
    const/16 v4, 0x1d

    #@b7
    aput-object v6, v3, v4

    #@b9
    .line 489
    const/16 v4, 0x1e

    #@bb
    aput-object v6, v3, v4

    #@bd
    .line 490
    const/16 v4, 0x1f

    #@bf
    aput-object v6, v3, v4

    #@c1
    .line 491
    const/16 v4, 0x20

    #@c3
    aput-object v6, v3, v4

    #@c5
    .line 492
    const/16 v4, 0x21

    #@c7
    aput-object v6, v3, v4

    #@c9
    .line 493
    const/16 v4, 0x22

    #@cb
    aput-object v6, v3, v4

    #@cd
    .line 494
    const/16 v4, 0x23

    #@cf
    aput-object v6, v3, v4

    #@d1
    .line 495
    const/16 v4, 0x24

    #@d3
    aput-object v6, v3, v4

    #@d5
    .line 496
    const/16 v4, 0x25

    #@d7
    aput-object v6, v3, v4

    #@d9
    .line 497
    const/16 v4, 0x26

    #@db
    aput-object v6, v3, v4

    #@dd
    .line 498
    const/16 v4, 0x27

    #@df
    aput-object v6, v3, v4

    #@e1
    .line 499
    const/16 v4, 0x28

    #@e3
    aput-object v6, v3, v4

    #@e5
    .line 500
    const-string/jumbo v4, "android:monitor_location"

    #@e8
    const/16 v5, 0x29

    #@ea
    aput-object v4, v3, v5

    #@ec
    .line 501
    const-string/jumbo v4, "android:monitor_location_high_power"

    #@ef
    const/16 v5, 0x2a

    #@f1
    aput-object v4, v3, v5

    #@f3
    .line 502
    const-string/jumbo v4, "android:get_usage_stats"

    #@f6
    const/16 v5, 0x2b

    #@f8
    aput-object v4, v3, v5

    #@fa
    .line 503
    const/16 v4, 0x2c

    #@fc
    aput-object v6, v3, v4

    #@fe
    .line 504
    const/16 v4, 0x2d

    #@100
    aput-object v6, v3, v4

    #@102
    .line 505
    const/16 v4, 0x2e

    #@104
    aput-object v6, v3, v4

    #@106
    .line 506
    const-string/jumbo v4, "android:activate_vpn"

    #@109
    const/16 v5, 0x2f

    #@10b
    aput-object v4, v3, v5

    #@10d
    .line 507
    const/16 v4, 0x30

    #@10f
    aput-object v6, v3, v4

    #@111
    .line 508
    const/16 v4, 0x31

    #@113
    aput-object v6, v3, v4

    #@115
    .line 509
    const/16 v4, 0x32

    #@117
    aput-object v6, v3, v4

    #@119
    .line 510
    const-string/jumbo v4, "android:read_phone_state"

    #@11c
    const/16 v5, 0x33

    #@11e
    aput-object v4, v3, v5

    #@120
    .line 511
    const-string/jumbo v4, "android:add_voicemail"

    #@123
    const/16 v5, 0x34

    #@125
    aput-object v4, v3, v5

    #@127
    .line 512
    const-string/jumbo v4, "android:use_sip"

    #@12a
    const/16 v5, 0x35

    #@12c
    aput-object v4, v3, v5

    #@12e
    .line 513
    const/16 v4, 0x36

    #@130
    aput-object v6, v3, v4

    #@132
    .line 514
    const-string/jumbo v4, "android:use_fingerprint"

    #@135
    const/16 v5, 0x37

    #@137
    aput-object v4, v3, v5

    #@139
    .line 515
    const-string/jumbo v4, "android:body_sensors"

    #@13c
    const/16 v5, 0x38

    #@13e
    aput-object v4, v3, v5

    #@140
    .line 516
    const-string/jumbo v4, "android:read_cell_broadcasts"

    #@143
    const/16 v5, 0x39

    #@145
    aput-object v4, v3, v5

    #@147
    .line 517
    const-string/jumbo v4, "android:mock_location"

    #@14a
    const/16 v5, 0x3a

    #@14c
    aput-object v4, v3, v5

    #@14e
    .line 518
    const-string/jumbo v4, "android:read_external_storage"

    #@151
    const/16 v5, 0x3b

    #@153
    aput-object v4, v3, v5

    #@155
    .line 519
    const-string/jumbo v4, "android:write_external_storage"

    #@158
    const/16 v5, 0x3c

    #@15a
    aput-object v4, v3, v5

    #@15c
    .line 520
    const/16 v4, 0x3d

    #@15e
    aput-object v6, v3, v4

    #@160
    .line 521
    const-string/jumbo v4, "android:get_accounts"

    #@163
    const/16 v5, 0x3e

    #@165
    aput-object v4, v3, v5

    #@167
    .line 522
    const/16 v4, 0x3f

    #@169
    aput-object v6, v3, v4

    #@16b
    .line 458
    sput-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    #@16d
    .line 529
    new-array v3, v7, [Ljava/lang/String;

    #@16f
    .line 530
    const-string/jumbo v4, "COARSE_LOCATION"

    #@172
    aput-object v4, v3, v2

    #@174
    .line 531
    const-string/jumbo v4, "FINE_LOCATION"

    #@177
    aput-object v4, v3, v9

    #@179
    .line 532
    const-string/jumbo v4, "GPS"

    #@17c
    const/4 v5, 0x2

    #@17d
    aput-object v4, v3, v5

    #@17f
    .line 533
    const-string/jumbo v4, "VIBRATE"

    #@182
    const/4 v5, 0x3

    #@183
    aput-object v4, v3, v5

    #@185
    .line 534
    const-string/jumbo v4, "READ_CONTACTS"

    #@188
    const/4 v5, 0x4

    #@189
    aput-object v4, v3, v5

    #@18b
    .line 535
    const-string/jumbo v4, "WRITE_CONTACTS"

    #@18e
    const/4 v5, 0x5

    #@18f
    aput-object v4, v3, v5

    #@191
    .line 536
    const-string/jumbo v4, "READ_CALL_LOG"

    #@194
    const/4 v5, 0x6

    #@195
    aput-object v4, v3, v5

    #@197
    .line 537
    const-string/jumbo v4, "WRITE_CALL_LOG"

    #@19a
    const/4 v5, 0x7

    #@19b
    aput-object v4, v3, v5

    #@19d
    .line 538
    const-string/jumbo v4, "READ_CALENDAR"

    #@1a0
    const/16 v5, 0x8

    #@1a2
    aput-object v4, v3, v5

    #@1a4
    .line 539
    const-string/jumbo v4, "WRITE_CALENDAR"

    #@1a7
    const/16 v5, 0x9

    #@1a9
    aput-object v4, v3, v5

    #@1ab
    .line 540
    const-string/jumbo v4, "WIFI_SCAN"

    #@1ae
    const/16 v5, 0xa

    #@1b0
    aput-object v4, v3, v5

    #@1b2
    .line 541
    const-string/jumbo v4, "POST_NOTIFICATION"

    #@1b5
    const/16 v5, 0xb

    #@1b7
    aput-object v4, v3, v5

    #@1b9
    .line 542
    const-string/jumbo v4, "NEIGHBORING_CELLS"

    #@1bc
    const/16 v5, 0xc

    #@1be
    aput-object v4, v3, v5

    #@1c0
    .line 543
    const-string/jumbo v4, "CALL_PHONE"

    #@1c3
    const/16 v5, 0xd

    #@1c5
    aput-object v4, v3, v5

    #@1c7
    .line 544
    const-string/jumbo v4, "READ_SMS"

    #@1ca
    const/16 v5, 0xe

    #@1cc
    aput-object v4, v3, v5

    #@1ce
    .line 545
    const-string/jumbo v4, "WRITE_SMS"

    #@1d1
    const/16 v5, 0xf

    #@1d3
    aput-object v4, v3, v5

    #@1d5
    .line 546
    const-string/jumbo v4, "RECEIVE_SMS"

    #@1d8
    const/16 v5, 0x10

    #@1da
    aput-object v4, v3, v5

    #@1dc
    .line 547
    const-string/jumbo v4, "RECEIVE_EMERGECY_SMS"

    #@1df
    const/16 v5, 0x11

    #@1e1
    aput-object v4, v3, v5

    #@1e3
    .line 548
    const-string/jumbo v4, "RECEIVE_MMS"

    #@1e6
    const/16 v5, 0x12

    #@1e8
    aput-object v4, v3, v5

    #@1ea
    .line 549
    const-string/jumbo v4, "RECEIVE_WAP_PUSH"

    #@1ed
    const/16 v5, 0x13

    #@1ef
    aput-object v4, v3, v5

    #@1f1
    .line 550
    const-string/jumbo v4, "SEND_SMS"

    #@1f4
    const/16 v5, 0x14

    #@1f6
    aput-object v4, v3, v5

    #@1f8
    .line 551
    const-string/jumbo v4, "READ_ICC_SMS"

    #@1fb
    const/16 v5, 0x15

    #@1fd
    aput-object v4, v3, v5

    #@1ff
    .line 552
    const-string/jumbo v4, "WRITE_ICC_SMS"

    #@202
    const/16 v5, 0x16

    #@204
    aput-object v4, v3, v5

    #@206
    .line 553
    const-string/jumbo v4, "WRITE_SETTINGS"

    #@209
    const/16 v5, 0x17

    #@20b
    aput-object v4, v3, v5

    #@20d
    .line 554
    const-string/jumbo v4, "SYSTEM_ALERT_WINDOW"

    #@210
    const/16 v5, 0x18

    #@212
    aput-object v4, v3, v5

    #@214
    .line 555
    const-string/jumbo v4, "ACCESS_NOTIFICATIONS"

    #@217
    aput-object v4, v3, v8

    #@219
    .line 556
    const-string/jumbo v4, "CAMERA"

    #@21c
    const/16 v5, 0x1a

    #@21e
    aput-object v4, v3, v5

    #@220
    .line 557
    const-string/jumbo v4, "RECORD_AUDIO"

    #@223
    const/16 v5, 0x1b

    #@225
    aput-object v4, v3, v5

    #@227
    .line 558
    const-string/jumbo v4, "PLAY_AUDIO"

    #@22a
    const/16 v5, 0x1c

    #@22c
    aput-object v4, v3, v5

    #@22e
    .line 559
    const-string/jumbo v4, "READ_CLIPBOARD"

    #@231
    const/16 v5, 0x1d

    #@233
    aput-object v4, v3, v5

    #@235
    .line 560
    const-string/jumbo v4, "WRITE_CLIPBOARD"

    #@238
    const/16 v5, 0x1e

    #@23a
    aput-object v4, v3, v5

    #@23c
    .line 561
    const-string/jumbo v4, "TAKE_MEDIA_BUTTONS"

    #@23f
    const/16 v5, 0x1f

    #@241
    aput-object v4, v3, v5

    #@243
    .line 562
    const-string/jumbo v4, "TAKE_AUDIO_FOCUS"

    #@246
    const/16 v5, 0x20

    #@248
    aput-object v4, v3, v5

    #@24a
    .line 563
    const-string/jumbo v4, "AUDIO_MASTER_VOLUME"

    #@24d
    const/16 v5, 0x21

    #@24f
    aput-object v4, v3, v5

    #@251
    .line 564
    const-string/jumbo v4, "AUDIO_VOICE_VOLUME"

    #@254
    const/16 v5, 0x22

    #@256
    aput-object v4, v3, v5

    #@258
    .line 565
    const-string/jumbo v4, "AUDIO_RING_VOLUME"

    #@25b
    const/16 v5, 0x23

    #@25d
    aput-object v4, v3, v5

    #@25f
    .line 566
    const-string/jumbo v4, "AUDIO_MEDIA_VOLUME"

    #@262
    const/16 v5, 0x24

    #@264
    aput-object v4, v3, v5

    #@266
    .line 567
    const-string/jumbo v4, "AUDIO_ALARM_VOLUME"

    #@269
    const/16 v5, 0x25

    #@26b
    aput-object v4, v3, v5

    #@26d
    .line 568
    const-string/jumbo v4, "AUDIO_NOTIFICATION_VOLUME"

    #@270
    const/16 v5, 0x26

    #@272
    aput-object v4, v3, v5

    #@274
    .line 569
    const-string/jumbo v4, "AUDIO_BLUETOOTH_VOLUME"

    #@277
    const/16 v5, 0x27

    #@279
    aput-object v4, v3, v5

    #@27b
    .line 570
    const-string/jumbo v4, "WAKE_LOCK"

    #@27e
    const/16 v5, 0x28

    #@280
    aput-object v4, v3, v5

    #@282
    .line 571
    const-string/jumbo v4, "MONITOR_LOCATION"

    #@285
    const/16 v5, 0x29

    #@287
    aput-object v4, v3, v5

    #@289
    .line 572
    const-string/jumbo v4, "MONITOR_HIGH_POWER_LOCATION"

    #@28c
    const/16 v5, 0x2a

    #@28e
    aput-object v4, v3, v5

    #@290
    .line 573
    const-string/jumbo v4, "GET_USAGE_STATS"

    #@293
    const/16 v5, 0x2b

    #@295
    aput-object v4, v3, v5

    #@297
    .line 574
    const-string/jumbo v4, "MUTE_MICROPHONE"

    #@29a
    const/16 v5, 0x2c

    #@29c
    aput-object v4, v3, v5

    #@29e
    .line 575
    const-string/jumbo v4, "TOAST_WINDOW"

    #@2a1
    const/16 v5, 0x2d

    #@2a3
    aput-object v4, v3, v5

    #@2a5
    .line 576
    const-string/jumbo v4, "PROJECT_MEDIA"

    #@2a8
    const/16 v5, 0x2e

    #@2aa
    aput-object v4, v3, v5

    #@2ac
    .line 577
    const-string/jumbo v4, "ACTIVATE_VPN"

    #@2af
    const/16 v5, 0x2f

    #@2b1
    aput-object v4, v3, v5

    #@2b3
    .line 578
    const-string/jumbo v4, "WRITE_WALLPAPER"

    #@2b6
    const/16 v5, 0x30

    #@2b8
    aput-object v4, v3, v5

    #@2ba
    .line 579
    const-string/jumbo v4, "ASSIST_STRUCTURE"

    #@2bd
    const/16 v5, 0x31

    #@2bf
    aput-object v4, v3, v5

    #@2c1
    .line 580
    const-string/jumbo v4, "ASSIST_SCREENSHOT"

    #@2c4
    const/16 v5, 0x32

    #@2c6
    aput-object v4, v3, v5

    #@2c8
    .line 581
    const-string/jumbo v4, "OP_READ_PHONE_STATE"

    #@2cb
    const/16 v5, 0x33

    #@2cd
    aput-object v4, v3, v5

    #@2cf
    .line 582
    const-string/jumbo v4, "ADD_VOICEMAIL"

    #@2d2
    const/16 v5, 0x34

    #@2d4
    aput-object v4, v3, v5

    #@2d6
    .line 583
    const-string/jumbo v4, "USE_SIP"

    #@2d9
    const/16 v5, 0x35

    #@2db
    aput-object v4, v3, v5

    #@2dd
    .line 584
    const-string/jumbo v4, "PROCESS_OUTGOING_CALLS"

    #@2e0
    const/16 v5, 0x36

    #@2e2
    aput-object v4, v3, v5

    #@2e4
    .line 585
    const-string/jumbo v4, "USE_FINGERPRINT"

    #@2e7
    const/16 v5, 0x37

    #@2e9
    aput-object v4, v3, v5

    #@2eb
    .line 586
    const-string/jumbo v4, "BODY_SENSORS"

    #@2ee
    const/16 v5, 0x38

    #@2f0
    aput-object v4, v3, v5

    #@2f2
    .line 587
    const-string/jumbo v4, "READ_CELL_BROADCASTS"

    #@2f5
    const/16 v5, 0x39

    #@2f7
    aput-object v4, v3, v5

    #@2f9
    .line 588
    const-string/jumbo v4, "MOCK_LOCATION"

    #@2fc
    const/16 v5, 0x3a

    #@2fe
    aput-object v4, v3, v5

    #@300
    .line 589
    const-string/jumbo v4, "READ_EXTERNAL_STORAGE"

    #@303
    const/16 v5, 0x3b

    #@305
    aput-object v4, v3, v5

    #@307
    .line 590
    const-string/jumbo v4, "WRITE_EXTERNAL_STORAGE"

    #@30a
    const/16 v5, 0x3c

    #@30c
    aput-object v4, v3, v5

    #@30e
    .line 591
    const-string/jumbo v4, "TURN_ON_SCREEN"

    #@311
    const/16 v5, 0x3d

    #@313
    aput-object v4, v3, v5

    #@315
    .line 592
    const-string/jumbo v4, "GET_ACCOUNTS"

    #@318
    const/16 v5, 0x3e

    #@31a
    aput-object v4, v3, v5

    #@31c
    .line 593
    const-string/jumbo v4, "RUN_IN_BACKGROUND"

    #@31f
    const/16 v5, 0x3f

    #@321
    aput-object v4, v3, v5

    #@323
    .line 529
    sput-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    #@325
    .line 600
    new-array v3, v7, [Ljava/lang/String;

    #@327
    .line 601
    const-string/jumbo v4, "android.permission.ACCESS_COARSE_LOCATION"

    #@32a
    aput-object v4, v3, v2

    #@32c
    .line 602
    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    #@32f
    aput-object v4, v3, v9

    #@331
    .line 603
    const/4 v4, 0x2

    #@332
    aput-object v6, v3, v4

    #@334
    .line 604
    const-string/jumbo v4, "android.permission.VIBRATE"

    #@337
    const/4 v5, 0x3

    #@338
    aput-object v4, v3, v5

    #@33a
    .line 605
    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    #@33d
    const/4 v5, 0x4

    #@33e
    aput-object v4, v3, v5

    #@340
    .line 606
    const-string/jumbo v4, "android.permission.WRITE_CONTACTS"

    #@343
    const/4 v5, 0x5

    #@344
    aput-object v4, v3, v5

    #@346
    .line 607
    const-string/jumbo v4, "android.permission.READ_CALL_LOG"

    #@349
    const/4 v5, 0x6

    #@34a
    aput-object v4, v3, v5

    #@34c
    .line 608
    const-string/jumbo v4, "android.permission.WRITE_CALL_LOG"

    #@34f
    const/4 v5, 0x7

    #@350
    aput-object v4, v3, v5

    #@352
    .line 609
    const-string/jumbo v4, "android.permission.READ_CALENDAR"

    #@355
    const/16 v5, 0x8

    #@357
    aput-object v4, v3, v5

    #@359
    .line 610
    const-string/jumbo v4, "android.permission.WRITE_CALENDAR"

    #@35c
    const/16 v5, 0x9

    #@35e
    aput-object v4, v3, v5

    #@360
    .line 611
    const-string/jumbo v4, "android.permission.ACCESS_WIFI_STATE"

    #@363
    const/16 v5, 0xa

    #@365
    aput-object v4, v3, v5

    #@367
    .line 612
    const/16 v4, 0xb

    #@369
    aput-object v6, v3, v4

    #@36b
    .line 613
    const/16 v4, 0xc

    #@36d
    aput-object v6, v3, v4

    #@36f
    .line 614
    const-string/jumbo v4, "android.permission.CALL_PHONE"

    #@372
    const/16 v5, 0xd

    #@374
    aput-object v4, v3, v5

    #@376
    .line 615
    const-string/jumbo v4, "android.permission.READ_SMS"

    #@379
    const/16 v5, 0xe

    #@37b
    aput-object v4, v3, v5

    #@37d
    .line 616
    const/16 v4, 0xf

    #@37f
    aput-object v6, v3, v4

    #@381
    .line 617
    const-string/jumbo v4, "android.permission.RECEIVE_SMS"

    #@384
    const/16 v5, 0x10

    #@386
    aput-object v4, v3, v5

    #@388
    .line 618
    const-string/jumbo v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    #@38b
    const/16 v5, 0x11

    #@38d
    aput-object v4, v3, v5

    #@38f
    .line 619
    const-string/jumbo v4, "android.permission.RECEIVE_MMS"

    #@392
    const/16 v5, 0x12

    #@394
    aput-object v4, v3, v5

    #@396
    .line 620
    const-string/jumbo v4, "android.permission.RECEIVE_WAP_PUSH"

    #@399
    const/16 v5, 0x13

    #@39b
    aput-object v4, v3, v5

    #@39d
    .line 621
    const-string/jumbo v4, "android.permission.SEND_SMS"

    #@3a0
    const/16 v5, 0x14

    #@3a2
    aput-object v4, v3, v5

    #@3a4
    .line 622
    const-string/jumbo v4, "android.permission.READ_SMS"

    #@3a7
    const/16 v5, 0x15

    #@3a9
    aput-object v4, v3, v5

    #@3ab
    .line 623
    const/16 v4, 0x16

    #@3ad
    aput-object v6, v3, v4

    #@3af
    .line 624
    const-string/jumbo v4, "android.permission.WRITE_SETTINGS"

    #@3b2
    const/16 v5, 0x17

    #@3b4
    aput-object v4, v3, v5

    #@3b6
    .line 625
    const-string/jumbo v4, "android.permission.SYSTEM_ALERT_WINDOW"

    #@3b9
    const/16 v5, 0x18

    #@3bb
    aput-object v4, v3, v5

    #@3bd
    .line 626
    const-string/jumbo v4, "android.permission.ACCESS_NOTIFICATIONS"

    #@3c0
    aput-object v4, v3, v8

    #@3c2
    .line 627
    const-string/jumbo v4, "android.permission.CAMERA"

    #@3c5
    const/16 v5, 0x1a

    #@3c7
    aput-object v4, v3, v5

    #@3c9
    .line 628
    const-string/jumbo v4, "android.permission.RECORD_AUDIO"

    #@3cc
    const/16 v5, 0x1b

    #@3ce
    aput-object v4, v3, v5

    #@3d0
    .line 629
    const/16 v4, 0x1c

    #@3d2
    aput-object v6, v3, v4

    #@3d4
    .line 630
    const/16 v4, 0x1d

    #@3d6
    aput-object v6, v3, v4

    #@3d8
    .line 631
    const/16 v4, 0x1e

    #@3da
    aput-object v6, v3, v4

    #@3dc
    .line 632
    const/16 v4, 0x1f

    #@3de
    aput-object v6, v3, v4

    #@3e0
    .line 633
    const/16 v4, 0x20

    #@3e2
    aput-object v6, v3, v4

    #@3e4
    .line 634
    const/16 v4, 0x21

    #@3e6
    aput-object v6, v3, v4

    #@3e8
    .line 635
    const/16 v4, 0x22

    #@3ea
    aput-object v6, v3, v4

    #@3ec
    .line 636
    const/16 v4, 0x23

    #@3ee
    aput-object v6, v3, v4

    #@3f0
    .line 637
    const/16 v4, 0x24

    #@3f2
    aput-object v6, v3, v4

    #@3f4
    .line 638
    const/16 v4, 0x25

    #@3f6
    aput-object v6, v3, v4

    #@3f8
    .line 639
    const/16 v4, 0x26

    #@3fa
    aput-object v6, v3, v4

    #@3fc
    .line 640
    const/16 v4, 0x27

    #@3fe
    aput-object v6, v3, v4

    #@400
    .line 641
    const-string/jumbo v4, "android.permission.WAKE_LOCK"

    #@403
    const/16 v5, 0x28

    #@405
    aput-object v4, v3, v5

    #@407
    .line 642
    const/16 v4, 0x29

    #@409
    aput-object v6, v3, v4

    #@40b
    .line 643
    const/16 v4, 0x2a

    #@40d
    aput-object v6, v3, v4

    #@40f
    .line 644
    const-string/jumbo v4, "android.permission.PACKAGE_USAGE_STATS"

    #@412
    const/16 v5, 0x2b

    #@414
    aput-object v4, v3, v5

    #@416
    .line 645
    const/16 v4, 0x2c

    #@418
    aput-object v6, v3, v4

    #@41a
    .line 646
    const/16 v4, 0x2d

    #@41c
    aput-object v6, v3, v4

    #@41e
    .line 647
    const/16 v4, 0x2e

    #@420
    aput-object v6, v3, v4

    #@422
    .line 648
    const/16 v4, 0x2f

    #@424
    aput-object v6, v3, v4

    #@426
    .line 649
    const/16 v4, 0x30

    #@428
    aput-object v6, v3, v4

    #@42a
    .line 650
    const/16 v4, 0x31

    #@42c
    aput-object v6, v3, v4

    #@42e
    .line 651
    const/16 v4, 0x32

    #@430
    aput-object v6, v3, v4

    #@432
    .line 652
    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    #@435
    const/16 v5, 0x33

    #@437
    aput-object v4, v3, v5

    #@439
    .line 653
    const-string/jumbo v4, "com.android.voicemail.permission.ADD_VOICEMAIL"

    #@43c
    const/16 v5, 0x34

    #@43e
    aput-object v4, v3, v5

    #@440
    .line 654
    const-string/jumbo v4, "android.permission.USE_SIP"

    #@443
    const/16 v5, 0x35

    #@445
    aput-object v4, v3, v5

    #@447
    .line 655
    const-string/jumbo v4, "android.permission.PROCESS_OUTGOING_CALLS"

    #@44a
    const/16 v5, 0x36

    #@44c
    aput-object v4, v3, v5

    #@44e
    .line 656
    const-string/jumbo v4, "android.permission.USE_FINGERPRINT"

    #@451
    const/16 v5, 0x37

    #@453
    aput-object v4, v3, v5

    #@455
    .line 657
    const-string/jumbo v4, "android.permission.BODY_SENSORS"

    #@458
    const/16 v5, 0x38

    #@45a
    aput-object v4, v3, v5

    #@45c
    .line 658
    const-string/jumbo v4, "android.permission.READ_CELL_BROADCASTS"

    #@45f
    const/16 v5, 0x39

    #@461
    aput-object v4, v3, v5

    #@463
    .line 659
    const/16 v4, 0x3a

    #@465
    aput-object v6, v3, v4

    #@467
    .line 660
    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    #@46a
    const/16 v5, 0x3b

    #@46c
    aput-object v4, v3, v5

    #@46e
    .line 661
    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    #@471
    const/16 v5, 0x3c

    #@473
    aput-object v4, v3, v5

    #@475
    .line 662
    const/16 v4, 0x3d

    #@477
    aput-object v6, v3, v4

    #@479
    .line 663
    const-string/jumbo v4, "android.permission.GET_ACCOUNTS"

    #@47c
    const/16 v5, 0x3e

    #@47e
    aput-object v4, v3, v5

    #@480
    .line 664
    const/16 v4, 0x3f

    #@482
    aput-object v6, v3, v4

    #@484
    .line 600
    sput-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    #@486
    .line 672
    new-array v3, v7, [Ljava/lang/String;

    #@488
    .line 673
    const-string/jumbo v4, "no_share_location"

    #@48b
    aput-object v4, v3, v2

    #@48d
    .line 674
    const-string/jumbo v4, "no_share_location"

    #@490
    aput-object v4, v3, v9

    #@492
    .line 675
    const-string/jumbo v4, "no_share_location"

    #@495
    const/4 v5, 0x2

    #@496
    aput-object v4, v3, v5

    #@498
    .line 676
    const/4 v4, 0x3

    #@499
    aput-object v6, v3, v4

    #@49b
    .line 677
    const/4 v4, 0x4

    #@49c
    aput-object v6, v3, v4

    #@49e
    .line 678
    const/4 v4, 0x5

    #@49f
    aput-object v6, v3, v4

    #@4a1
    .line 679
    const-string/jumbo v4, "no_outgoing_calls"

    #@4a4
    const/4 v5, 0x6

    #@4a5
    aput-object v4, v3, v5

    #@4a7
    .line 680
    const-string/jumbo v4, "no_outgoing_calls"

    #@4aa
    const/4 v5, 0x7

    #@4ab
    aput-object v4, v3, v5

    #@4ad
    .line 681
    const/16 v4, 0x8

    #@4af
    aput-object v6, v3, v4

    #@4b1
    .line 682
    const/16 v4, 0x9

    #@4b3
    aput-object v6, v3, v4

    #@4b5
    .line 683
    const-string/jumbo v4, "no_share_location"

    #@4b8
    const/16 v5, 0xa

    #@4ba
    aput-object v4, v3, v5

    #@4bc
    .line 684
    const/16 v4, 0xb

    #@4be
    aput-object v6, v3, v4

    #@4c0
    .line 685
    const/16 v4, 0xc

    #@4c2
    aput-object v6, v3, v4

    #@4c4
    .line 686
    const/16 v4, 0xd

    #@4c6
    aput-object v6, v3, v4

    #@4c8
    .line 687
    const-string/jumbo v4, "no_sms"

    #@4cb
    const/16 v5, 0xe

    #@4cd
    aput-object v4, v3, v5

    #@4cf
    .line 688
    const-string/jumbo v4, "no_sms"

    #@4d2
    const/16 v5, 0xf

    #@4d4
    aput-object v4, v3, v5

    #@4d6
    .line 689
    const-string/jumbo v4, "no_sms"

    #@4d9
    const/16 v5, 0x10

    #@4db
    aput-object v4, v3, v5

    #@4dd
    .line 690
    const/16 v4, 0x11

    #@4df
    aput-object v6, v3, v4

    #@4e1
    .line 691
    const-string/jumbo v4, "no_sms"

    #@4e4
    const/16 v5, 0x12

    #@4e6
    aput-object v4, v3, v5

    #@4e8
    .line 692
    const/16 v4, 0x13

    #@4ea
    aput-object v6, v3, v4

    #@4ec
    .line 693
    const-string/jumbo v4, "no_sms"

    #@4ef
    const/16 v5, 0x14

    #@4f1
    aput-object v4, v3, v5

    #@4f3
    .line 694
    const-string/jumbo v4, "no_sms"

    #@4f6
    const/16 v5, 0x15

    #@4f8
    aput-object v4, v3, v5

    #@4fa
    .line 695
    const-string/jumbo v4, "no_sms"

    #@4fd
    const/16 v5, 0x16

    #@4ff
    aput-object v4, v3, v5

    #@501
    .line 696
    const/16 v4, 0x17

    #@503
    aput-object v6, v3, v4

    #@505
    .line 697
    const-string/jumbo v4, "no_create_windows"

    #@508
    const/16 v5, 0x18

    #@50a
    aput-object v4, v3, v5

    #@50c
    .line 698
    aput-object v6, v3, v8

    #@50e
    .line 699
    const-string/jumbo v4, "no_camera"

    #@511
    const/16 v5, 0x1a

    #@513
    aput-object v4, v3, v5

    #@515
    .line 700
    const-string/jumbo v4, "no_record_audio"

    #@518
    const/16 v5, 0x1b

    #@51a
    aput-object v4, v3, v5

    #@51c
    .line 701
    const/16 v4, 0x1c

    #@51e
    aput-object v6, v3, v4

    #@520
    .line 702
    const/16 v4, 0x1d

    #@522
    aput-object v6, v3, v4

    #@524
    .line 703
    const/16 v4, 0x1e

    #@526
    aput-object v6, v3, v4

    #@528
    .line 704
    const/16 v4, 0x1f

    #@52a
    aput-object v6, v3, v4

    #@52c
    .line 705
    const/16 v4, 0x20

    #@52e
    aput-object v6, v3, v4

    #@530
    .line 706
    const-string/jumbo v4, "no_adjust_volume"

    #@533
    const/16 v5, 0x21

    #@535
    aput-object v4, v3, v5

    #@537
    .line 707
    const-string/jumbo v4, "no_adjust_volume"

    #@53a
    const/16 v5, 0x22

    #@53c
    aput-object v4, v3, v5

    #@53e
    .line 708
    const-string/jumbo v4, "no_adjust_volume"

    #@541
    const/16 v5, 0x23

    #@543
    aput-object v4, v3, v5

    #@545
    .line 709
    const-string/jumbo v4, "no_adjust_volume"

    #@548
    const/16 v5, 0x24

    #@54a
    aput-object v4, v3, v5

    #@54c
    .line 710
    const-string/jumbo v4, "no_adjust_volume"

    #@54f
    const/16 v5, 0x25

    #@551
    aput-object v4, v3, v5

    #@553
    .line 711
    const-string/jumbo v4, "no_adjust_volume"

    #@556
    const/16 v5, 0x26

    #@558
    aput-object v4, v3, v5

    #@55a
    .line 712
    const-string/jumbo v4, "no_adjust_volume"

    #@55d
    const/16 v5, 0x27

    #@55f
    aput-object v4, v3, v5

    #@561
    .line 713
    const/16 v4, 0x28

    #@563
    aput-object v6, v3, v4

    #@565
    .line 714
    const-string/jumbo v4, "no_share_location"

    #@568
    const/16 v5, 0x29

    #@56a
    aput-object v4, v3, v5

    #@56c
    .line 715
    const-string/jumbo v4, "no_share_location"

    #@56f
    const/16 v5, 0x2a

    #@571
    aput-object v4, v3, v5

    #@573
    .line 716
    const/16 v4, 0x2b

    #@575
    aput-object v6, v3, v4

    #@577
    .line 717
    const-string/jumbo v4, "no_unmute_microphone"

    #@57a
    const/16 v5, 0x2c

    #@57c
    aput-object v4, v3, v5

    #@57e
    .line 718
    const-string/jumbo v4, "no_create_windows"

    #@581
    const/16 v5, 0x2d

    #@583
    aput-object v4, v3, v5

    #@585
    .line 719
    const/16 v4, 0x2e

    #@587
    aput-object v6, v3, v4

    #@589
    .line 720
    const/16 v4, 0x2f

    #@58b
    aput-object v6, v3, v4

    #@58d
    .line 721
    const-string/jumbo v4, "no_wallpaper"

    #@590
    const/16 v5, 0x30

    #@592
    aput-object v4, v3, v5

    #@594
    .line 722
    const/16 v4, 0x31

    #@596
    aput-object v6, v3, v4

    #@598
    .line 723
    const/16 v4, 0x32

    #@59a
    aput-object v6, v3, v4

    #@59c
    .line 724
    const/16 v4, 0x33

    #@59e
    aput-object v6, v3, v4

    #@5a0
    .line 725
    const/16 v4, 0x34

    #@5a2
    aput-object v6, v3, v4

    #@5a4
    .line 726
    const/16 v4, 0x35

    #@5a6
    aput-object v6, v3, v4

    #@5a8
    .line 727
    const/16 v4, 0x36

    #@5aa
    aput-object v6, v3, v4

    #@5ac
    .line 728
    const/16 v4, 0x37

    #@5ae
    aput-object v6, v3, v4

    #@5b0
    .line 729
    const/16 v4, 0x38

    #@5b2
    aput-object v6, v3, v4

    #@5b4
    .line 730
    const/16 v4, 0x39

    #@5b6
    aput-object v6, v3, v4

    #@5b8
    .line 731
    const/16 v4, 0x3a

    #@5ba
    aput-object v6, v3, v4

    #@5bc
    .line 732
    const/16 v4, 0x3b

    #@5be
    aput-object v6, v3, v4

    #@5c0
    .line 733
    const/16 v4, 0x3c

    #@5c2
    aput-object v6, v3, v4

    #@5c4
    .line 734
    const/16 v4, 0x3d

    #@5c6
    aput-object v6, v3, v4

    #@5c8
    .line 735
    const/16 v4, 0x3e

    #@5ca
    aput-object v6, v3, v4

    #@5cc
    .line 736
    const/16 v4, 0x3f

    #@5ce
    aput-object v6, v3, v4

    #@5d0
    .line 672
    sput-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    #@5d2
    .line 743
    new-array v3, v7, [Z

    #@5d4
    fill-array-data v3, :array_2

    #@5d7
    sput-object v3, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    #@5d9
    .line 813
    new-array v3, v7, [I

    #@5db
    fill-array-data v3, :array_3

    #@5de
    sput-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    #@5e0
    .line 887
    new-array v3, v7, [Z

    #@5e2
    fill-array-data v3, :array_4

    #@5e5
    sput-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    #@5e7
    .line 957
    new-instance v3, Ljava/util/HashMap;

    #@5e9
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@5ec
    sput-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    #@5ee
    .line 962
    new-instance v3, Ljava/util/HashMap;

    #@5f0
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@5f3
    sput-object v3, Landroid/app/AppOpsManager;->sRuntimePermToOp:Ljava/util/HashMap;

    #@5f5
    .line 965
    sget-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    #@5f7
    array-length v3, v3

    #@5f8
    if-eq v3, v7, :cond_0

    #@5fa
    .line 966
    new-instance v2, Ljava/lang/IllegalStateException;

    #@5fc
    new-instance v3, Ljava/lang/StringBuilder;

    #@5fe
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@601
    const-string/jumbo v4, "sOpToSwitch length "

    #@604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@607
    move-result-object v3

    #@608
    sget-object v4, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    #@60a
    array-length v4, v4

    #@60b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60e
    move-result-object v3

    #@60f
    .line 967
    const-string/jumbo v4, " should be "

    #@612
    .line 966
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@615
    move-result-object v3

    #@616
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@619
    move-result-object v3

    #@61a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61d
    move-result-object v3

    #@61e
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@621
    throw v2

    #@622
    .line 969
    :cond_0
    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    #@624
    array-length v3, v3

    #@625
    if-eq v3, v7, :cond_1

    #@627
    .line 970
    new-instance v2, Ljava/lang/IllegalStateException;

    #@629
    new-instance v3, Ljava/lang/StringBuilder;

    #@62b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@62e
    const-string/jumbo v4, "sOpToString length "

    #@631
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@634
    move-result-object v3

    #@635
    sget-object v4, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    #@637
    array-length v4, v4

    #@638
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63b
    move-result-object v3

    #@63c
    .line 971
    const-string/jumbo v4, " should be "

    #@63f
    .line 970
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@642
    move-result-object v3

    #@643
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@646
    move-result-object v3

    #@647
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64a
    move-result-object v3

    #@64b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@64e
    throw v2

    #@64f
    .line 973
    :cond_1
    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    #@651
    array-length v3, v3

    #@652
    if-eq v3, v7, :cond_2

    #@654
    .line 974
    new-instance v2, Ljava/lang/IllegalStateException;

    #@656
    new-instance v3, Ljava/lang/StringBuilder;

    #@658
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@65b
    const-string/jumbo v4, "sOpNames length "

    #@65e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@661
    move-result-object v3

    #@662
    sget-object v4, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    #@664
    array-length v4, v4

    #@665
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@668
    move-result-object v3

    #@669
    .line 975
    const-string/jumbo v4, " should be "

    #@66c
    .line 974
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66f
    move-result-object v3

    #@670
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@673
    move-result-object v3

    #@674
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@677
    move-result-object v3

    #@678
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@67b
    throw v2

    #@67c
    .line 977
    :cond_2
    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    #@67e
    array-length v3, v3

    #@67f
    if-eq v3, v7, :cond_3

    #@681
    .line 978
    new-instance v2, Ljava/lang/IllegalStateException;

    #@683
    new-instance v3, Ljava/lang/StringBuilder;

    #@685
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@688
    const-string/jumbo v4, "sOpPerms length "

    #@68b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68e
    move-result-object v3

    #@68f
    sget-object v4, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    #@691
    array-length v4, v4

    #@692
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@695
    move-result-object v3

    #@696
    .line 979
    const-string/jumbo v4, " should be "

    #@699
    .line 978
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69c
    move-result-object v3

    #@69d
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a0
    move-result-object v3

    #@6a1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a4
    move-result-object v3

    #@6a5
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6a8
    throw v2

    #@6a9
    .line 981
    :cond_3
    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    #@6ab
    array-length v3, v3

    #@6ac
    if-eq v3, v7, :cond_4

    #@6ae
    .line 982
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6b0
    new-instance v3, Ljava/lang/StringBuilder;

    #@6b2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6b5
    const-string/jumbo v4, "sOpDefaultMode length "

    #@6b8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6bb
    move-result-object v3

    #@6bc
    sget-object v4, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    #@6be
    array-length v4, v4

    #@6bf
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c2
    move-result-object v3

    #@6c3
    .line 983
    const-string/jumbo v4, " should be "

    #@6c6
    .line 982
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c9
    move-result-object v3

    #@6ca
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6cd
    move-result-object v3

    #@6ce
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d1
    move-result-object v3

    #@6d2
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6d5
    throw v2

    #@6d6
    .line 985
    :cond_4
    sget-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    #@6d8
    array-length v3, v3

    #@6d9
    if-eq v3, v7, :cond_5

    #@6db
    .line 986
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6dd
    new-instance v3, Ljava/lang/StringBuilder;

    #@6df
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6e2
    const-string/jumbo v4, "sOpDisableReset length "

    #@6e5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e8
    move-result-object v3

    #@6e9
    sget-object v4, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    #@6eb
    array-length v4, v4

    #@6ec
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6ef
    move-result-object v3

    #@6f0
    .line 987
    const-string/jumbo v4, " should be "

    #@6f3
    .line 986
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f6
    move-result-object v3

    #@6f7
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6fa
    move-result-object v3

    #@6fb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6fe
    move-result-object v3

    #@6ff
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@702
    throw v2

    #@703
    .line 989
    :cond_5
    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    #@705
    array-length v3, v3

    #@706
    if-eq v3, v7, :cond_6

    #@708
    .line 990
    new-instance v2, Ljava/lang/IllegalStateException;

    #@70a
    new-instance v3, Ljava/lang/StringBuilder;

    #@70c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@70f
    const-string/jumbo v4, "sOpRestrictions length "

    #@712
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@715
    move-result-object v3

    #@716
    sget-object v4, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    #@718
    array-length v4, v4

    #@719
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71c
    move-result-object v3

    #@71d
    .line 991
    const-string/jumbo v4, " should be "

    #@720
    .line 990
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@723
    move-result-object v3

    #@724
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@727
    move-result-object v3

    #@728
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72b
    move-result-object v3

    #@72c
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@72f
    throw v2

    #@730
    .line 993
    :cond_6
    sget-object v3, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    #@732
    array-length v3, v3

    #@733
    if-eq v3, v7, :cond_7

    #@735
    .line 994
    new-instance v2, Ljava/lang/IllegalStateException;

    #@737
    new-instance v3, Ljava/lang/StringBuilder;

    #@739
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@73c
    const-string/jumbo v4, "sOpAllowSYstemRestrictionsBypass length "

    #@73f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@742
    move-result-object v3

    #@743
    .line 995
    sget-object v4, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    #@745
    array-length v4, v4

    #@746
    .line 994
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@749
    move-result-object v3

    #@74a
    .line 995
    const-string/jumbo v4, " should be "

    #@74d
    .line 994
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@750
    move-result-object v3

    #@751
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@754
    move-result-object v3

    #@755
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@758
    move-result-object v3

    #@759
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@75c
    throw v2

    #@75d
    .line 997
    :cond_7
    const/4 v0, 0x0

    #@75e
    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_9

    #@760
    .line 998
    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    #@762
    aget-object v3, v3, v0

    #@764
    if-eqz v3, :cond_8

    #@766
    .line 999
    sget-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    #@768
    sget-object v4, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    #@76a
    aget-object v4, v4, v0

    #@76c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@76f
    move-result-object v5

    #@770
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@773
    .line 997
    :cond_8
    add-int/lit8 v0, v0, 0x1

    #@775
    goto :goto_0

    #@776
    .line 1002
    :cond_9
    sget-object v3, Landroid/app/AppOpsManager;->RUNTIME_PERMISSIONS_OPS:[I

    #@778
    array-length v4, v3

    #@779
    :goto_1
    if-ge v2, v4, :cond_b

    #@77b
    aget v1, v3, v2

    #@77d
    .line 1003
    .local v1, "op":I
    sget-object v5, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    #@77f
    aget-object v5, v5, v1

    #@781
    if-eqz v5, :cond_a

    #@783
    .line 1004
    sget-object v5, Landroid/app/AppOpsManager;->sRuntimePermToOp:Ljava/util/HashMap;

    #@785
    sget-object v6, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    #@787
    aget-object v6, v6, v1

    #@789
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78c
    move-result-object v7

    #@78d
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@790
    .line 1002
    :cond_a
    add-int/lit8 v2, v2, 0x1

    #@792
    goto :goto_1

    #@793
    .line 49
    .end local v1    # "op":I
    :cond_b
    return-void

    #@794
    .line 342
    :array_0
    .array-data 4
        0x4
        0x5
        0x3e
        0x8
        0x9
        0x14
        0x10
        0xe
        0x13
        0x12
        0x39
        0x3b
        0x3c
        0x0
        0x1
        0x33
        0xd
        0x6
        0x7
        0x34
        0x35
        0x36
        0x1b
        0x1a
        0x38
    .end array-data

    #@7ca
    .line 387
    :array_1
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
        0x3e
        0x3f
    .end array-data

    #@84e
    .line 743
    :array_2
    .array-data 1
        0x1t
        0x1t
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
        0x0t
        0x0t
    .end array-data

    #@872
    .line 813
    :array_3
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
        0x0
        0x0
    .end array-data

    #@8f6
    .line 887
    :array_4
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
    .line 1263
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
    .line 1264
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    #@c
    .line 1265
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@e
    .line 1263
    return-void
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1473
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
    .line 1784
    const-class v2, Landroid/app/AppOpsManager;

    #@2
    monitor-enter v2

    #@3
    .line 1785
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1786
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v2

    #@a
    return-object v1

    #@b
    .line 1789
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
    .line 1793
    :try_start_2
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@18
    monitor-exit v2

    #@19
    return-object v1

    #@1a
    .line 1790
    :catch_0
    move-exception v0

    #@1b
    .line 1791
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1e
    move-result-object v1

    #@1f
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@20
    .line 1784
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method public static opAllowSystemBypassRestriction(I)Z
    .locals 1
    .param p0, "op"    # I

    #@0
    .prologue
    .line 1071
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
    .line 1087
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
    .line 1079
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
    .line 1022
    const/4 v0, -0x1

    #@1
    if-ne p0, v0, :cond_0

    #@3
    const-string/jumbo v0, "NONE"

    #@6
    return-object v0

    #@7
    .line 1023
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
    .line 1043
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
    .line 1051
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
    .line 1014
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
    .line 1406
    sget-object v1, Landroid/app/AppOpsManager;->sRuntimePermToOp:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/Integer;

    #@9
    .line 1407
    .local v0, "opCode":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@b
    .line 1408
    return-object v2

    #@c
    .line 1410
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
    .line 1061
    sget-object v1, Landroid/app/AppOpsManager;->sRuntimePermToOp:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 1062
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
    .line 1030
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
    .line 1031
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
    .line 1032
    return v0

    #@11
    .line 1030
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1035
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
    .line 1480
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 1481
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@a
    .line 1482
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
    .line 1484
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
    .line 1671
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    #@5
    move-result v1

    #@6
    .line 1672
    .local v1, "mode":I
    const/4 v2, 0x2

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 1673
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
    .line 1676
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    #@14
    .line 1677
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@17
    move-result-object v2

    #@18
    throw v2

    #@19
    .line 1675
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
    .line 1688
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
    .line 1689
    :catch_0
    move-exception v0

    #@8
    .line 1690
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1625
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    #@5
    move-result v1

    #@6
    .line 1626
    .local v1, "mode":I
    const/4 v2, 0x2

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 1627
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
    .line 1630
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    #@14
    .line 1631
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@17
    move-result-object v2

    #@18
    throw v2

    #@19
    .line 1629
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
    .line 1504
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
    .line 1642
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
    .line 1643
    :catch_0
    move-exception v0

    #@8
    .line 1644
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1512
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
    .line 1656
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1657
    new-instance v1, Ljava/lang/SecurityException;

    #@a
    .line 1658
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
    .line 1657
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 1660
    :catch_0
    move-exception v0

    #@2e
    .line 1661
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@31
    move-result-object v1

    #@32
    throw v1

    #@33
    .line 1654
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public finishOp(I)V
    .locals 2
    .param p1, "op"    # I

    #@0
    .prologue
    .line 1861
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
    .line 1860
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1853
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
    .line 1851
    return-void

    #@c
    .line 1854
    :catch_0
    move-exception v0

    #@d
    .line 1855
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1603
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    #@7
    .line 1602
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
    .line 1292
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
    .line 1293
    :catch_0
    move-exception v0

    #@8
    .line 1294
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
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
    .line 1276
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
    .line 1277
    :catch_0
    move-exception v0

    #@8
    .line 1278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public noteOp(I)I
    .locals 2
    .param p1, "op"    # I

    #@0
    .prologue
    .line 1779
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
    .line 1711
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    #@5
    move-result v1

    #@6
    .line 1712
    .local v1, "mode":I
    const/4 v2, 0x2

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 1713
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
    .line 1716
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    #@14
    .line 1717
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@17
    move-result-object v2

    #@18
    throw v2

    #@19
    .line 1715
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
    .line 1530
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
    .line 1771
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
    .line 1772
    :catch_0
    move-exception v0

    #@8
    .line 1773
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1538
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
    .line 1740
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 1741
    .local v0, "mode":I
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 1742
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
    .line 1743
    const-string/jumbo v3, " from uid "

    #@22
    .line 1742
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 1743
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@29
    move-result v3

    #@2a
    .line 1742
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 1743
    const-string/jumbo v3, " or calling package "

    #@31
    .line 1742
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    .line 1744
    const-string/jumbo v3, " from uid "

    #@3c
    .line 1742
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    .line 1744
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@43
    move-result v3

    #@44
    .line 1742
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 1745
    const-string/jumbo v3, " not allowed to perform "

    #@4b
    .line 1742
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 1745
    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    #@51
    aget-object v3, v3, p1

    #@53
    .line 1742
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
    .line 1747
    :cond_0
    return v0
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1557
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
    .line 1757
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 1758
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v3

    #@c
    .line 1757
    invoke-interface {v1, p1, v2, v3, p2}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 1759
    :catch_0
    move-exception v0

    #@12
    .line 1760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1565
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
    .line 1389
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
    .line 1387
    return-void

    #@b
    .line 1390
    :catch_0
    move-exception v0

    #@c
    .line 1391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    #@0
    .prologue
    .line 1359
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1357
    return-void

    #@6
    .line 1360
    :catch_0
    move-exception v0

    #@7
    .line 1361
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1379
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    .line 1380
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
    .line 1377
    return-void

    #@e
    .line 1381
    .end local v3    # "uid":I
    :catch_0
    move-exception v6

    #@f
    .line 1382
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@12
    move-result-object v0

    #@13
    throw v0
.end method

.method public setUidMode(III)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    #@0
    .prologue
    .line 1310
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1308
    return-void

    #@6
    .line 1311
    :catch_0
    move-exception v0

    #@7
    .line 1312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setUidMode(Ljava/lang/String;II)V
    .locals 3
    .param p1, "appOp"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    #@0
    .prologue
    .line 1329
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1327
    return-void

    #@a
    .line 1330
    :catch_0
    move-exception v0

    #@b
    .line 1331
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1337
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;[Ljava/lang/String;)V

    #@4
    .line 1336
    return-void
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;[Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1343
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    #@5
    move-result v5

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move-object v3, p3

    #@a
    move-object v4, p4

    #@b
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    #@e
    .line 1342
    return-void
.end method

.method public setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "exceptionPackages"    # [Ljava/lang/String;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 1350
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p5

    #@6
    move-object v5, p4

    #@7
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1348
    return-void

    #@b
    .line 1351
    :catch_0
    move-exception v6

    #@c
    .line 1352
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v0

    #@10
    throw v0
.end method

.method public startOp(I)I
    .locals 2
    .param p1, "op"    # I

    #@0
    .prologue
    .line 1841
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
    .line 1816
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
    .line 1817
    .local v1, "mode":I
    const/4 v2, 0x2

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 1818
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
    .line 1821
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    #@1a
    .line 1822
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1d
    move-result-object v2

    #@1e
    throw v2

    #@1f
    .line 1820
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
    .line 1585
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
    .line 1833
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
    .line 1834
    :catch_0
    move-exception v0

    #@e
    .line 1835
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1593
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
    .line 1432
    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    #@2
    monitor-enter v3

    #@3
    .line 1433
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    #@b
    .line 1434
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v0, :cond_0

    #@d
    .line 1435
    new-instance v0, Landroid/app/AppOpsManager$1;

    #@f
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    #@12
    .line 1445
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v2, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 1448
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@19
    invoke-interface {v2, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v3

    #@1d
    .line 1431
    return-void

    #@1e
    .line 1449
    :catch_0
    move-exception v1

    #@1f
    .line 1450
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@22
    move-result-object v2

    #@23
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    .line 1432
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    #@0
    .prologue
    .line 1421
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    #@7
    .line 1420
    return-void
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    #@0
    .prologue
    .line 1460
    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    #@2
    monitor-enter v3

    #@3
    .line 1461
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
    .line 1462
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v0, :cond_0

    #@d
    .line 1464
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    #@f
    invoke-interface {v2, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    :cond_0
    monitor-exit v3

    #@13
    .line 1459
    return-void

    #@14
    .line 1465
    :catch_0
    move-exception v1

    #@15
    .line 1466
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@18
    move-result-object v2

    #@19
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    .line 1460
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit v3

    #@1c
    throw v2
.end method
