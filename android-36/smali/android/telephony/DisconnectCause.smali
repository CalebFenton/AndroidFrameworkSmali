.class public final Landroid/telephony/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# static fields
.field public static final whitelist ALREADY_DIALING:I = 0x48

.field public static final whitelist ANSWERED_ELSEWHERE:I = 0x34

.field public static final whitelist BUSY:I = 0x4

.field public static final whitelist CALLING_DISABLED:I = 0x4a

.field public static final whitelist CALL_BARRED:I = 0x14

.field public static final whitelist CALL_PULLED:I = 0x33

.field public static final whitelist CANT_CALL_WHILE_RINGING:I = 0x49

.field public static final whitelist CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final whitelist CDMA_ACCESS_FAILURE:I = 0x20

.field public static final whitelist CDMA_ALREADY_ACTIVATED:I = 0x31

.field public static final greylist-max-o CDMA_CALL_LOST:I = 0x29

.field public static final whitelist CDMA_DROP:I = 0x1b

.field public static final whitelist CDMA_INTERCEPT:I = 0x1c

.field public static final whitelist CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final whitelist CDMA_NOT_EMERGENCY:I = 0x22

.field public static final whitelist CDMA_PREEMPTED:I = 0x21

.field public static final whitelist CDMA_REORDER:I = 0x1d

.field public static final whitelist CDMA_RETRY_ORDER:I = 0x1f

.field public static final whitelist CDMA_SO_REJECT:I = 0x1e

.field public static final whitelist CONGESTION:I = 0x5

.field public static final whitelist CS_RESTRICTED:I = 0x16

.field public static final whitelist CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final whitelist CS_RESTRICTED_NORMAL:I = 0x17

.field public static final whitelist DATA_DISABLED:I = 0x36

.field public static final whitelist DATA_LIMIT_REACHED:I = 0x37

.field public static final whitelist DIALED_CALL_FORWARDING_WHILE_ROAMING:I = 0x39

.field public static final whitelist DIALED_MMI:I = 0x27

.field public static final whitelist DIAL_LOW_BATTERY:I = 0x3e

.field public static final whitelist DIAL_MODIFIED_TO_DIAL:I = 0x30

.field public static final whitelist DIAL_MODIFIED_TO_DIAL_VIDEO:I = 0x42

.field public static final whitelist DIAL_MODIFIED_TO_SS:I = 0x2f

.field public static final whitelist DIAL_MODIFIED_TO_USSD:I = 0x2e

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_DIAL:I = 0x45

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO:I = 0x46

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_SS:I = 0x43

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_USSD:I = 0x44

.field public static final whitelist EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE:I = 0x4e

.field public static final greylist-max-o EMERGENCY_ONLY:I = 0x25

.field public static final whitelist EMERGENCY_PERM_FAILURE:I = 0x40

.field public static final whitelist EMERGENCY_TEMP_FAILURE:I = 0x3f

.field public static final whitelist ERROR_UNSPECIFIED:I = 0x24

.field public static final greylist-max-o EXITED_ECM:I = 0x2a

.field public static final whitelist FDN_BLOCKED:I = 0x15

.field public static final whitelist ICC_ERROR:I = 0x13

.field public static final whitelist IMEI_NOT_ACCEPTED:I = 0x3a

.field public static final whitelist IMS_ACCESS_BLOCKED:I = 0x3c

.field public static final whitelist IMS_MERGED_SUCCESSFULLY:I = 0x2d

.field public static final whitelist IMS_SIP_ALTERNATE_EMERGENCY_CALL:I = 0x47

.field public static final whitelist INCOMING_AUTO_REJECTED:I = 0x51

.field public static final whitelist INCOMING_MISSED:I = 0x1

.field public static final whitelist INCOMING_REJECTED:I = 0x10

.field public static final whitelist INVALID_CREDENTIALS:I = 0xa

.field public static final whitelist INVALID_NUMBER:I = 0x7

.field public static final whitelist LIMIT_EXCEEDED:I = 0xf

.field public static final whitelist LOCAL:I = 0x3

.field public static final whitelist LOST_SIGNAL:I = 0xe

.field public static final whitelist LOW_BATTERY:I = 0x3d

.field public static final whitelist MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x35

.field public static final whitelist MEDIA_TIMEOUT:I = 0x4d

.field public static final whitelist MMI:I = 0x6

.field public static final whitelist NORMAL:I = 0x2

.field public static final whitelist NORMAL_UNSPECIFIED:I = 0x41

.field public static final whitelist NOT_DISCONNECTED:I = 0x0

.field public static final whitelist NOT_VALID:I = -0x1

.field public static final whitelist NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final whitelist NUMBER_UNREACHABLE:I = 0x8

.field public static final whitelist OTASP_PROVISIONING_IN_PROCESS:I = 0x4c

.field public static final whitelist OUTGOING_CANCELED:I = 0x2c

.field public static final whitelist OUTGOING_EMERGENCY_CALL_PLACED:I = 0x50

.field public static final whitelist OUTGOING_FAILURE:I = 0x2b

.field public static final whitelist OUT_OF_NETWORK:I = 0xb

.field public static final whitelist OUT_OF_SERVICE:I = 0x12

.field public static final whitelist POWER_OFF:I = 0x11

.field public static final whitelist SATELLITE_ENABLED:I = 0x52

.field public static final whitelist SERVER_ERROR:I = 0xc

.field public static final whitelist SERVER_UNREACHABLE:I = 0x9

.field public static final whitelist TIMED_OUT:I = 0xd

.field public static final whitelist TOO_MANY_ONGOING_CALLS:I = 0x4b

.field public static final whitelist UNOBTAINABLE_NUMBER:I = 0x19

.field public static final whitelist VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED:I = 0x32

.field public static final whitelist VOICEMAIL_NUMBER_MISSING:I = 0x28

.field public static final whitelist WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION:I = 0x4f

.field public static final whitelist WIFI_LOST:I = 0x3b


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    return-void
.end method

.method public static greylist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "cause"    # I

    .line 388
    packed-switch p0, :pswitch_data_10a

    .line 552
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 550
    :pswitch_17
    const-string v0, "SATELLITE_ENABLED"

    return-object v0

    .line 548
    :pswitch_1a
    const-string v0, "INCOMING_AUTO_REJECTED"

    return-object v0

    .line 546
    :pswitch_1d
    const-string v0, "OUTGOING_EMERGENCY_CALL_PLACED"

    return-object v0

    .line 544
    :pswitch_20
    const-string v0, "WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION"

    return-object v0

    .line 542
    :pswitch_23
    const-string v0, "EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE"

    return-object v0

    .line 540
    :pswitch_26
    const-string v0, "MEDIA_TIMEOUT"

    return-object v0

    .line 538
    :pswitch_29
    const-string v0, "OTASP_PROVISIONING_IN_PROCESS"

    return-object v0

    .line 536
    :pswitch_2c
    const-string v0, "TOO_MANY_ONGOING_CALLS"

    return-object v0

    .line 534
    :pswitch_2f
    const-string v0, "CALLING_DISABLED"

    return-object v0

    .line 532
    :pswitch_32
    const-string v0, "CANT_CALL_WHILE_RINGING"

    return-object v0

    .line 530
    :pswitch_35
    const-string v0, "ALREADY_DIALING"

    return-object v0

    .line 528
    :pswitch_38
    const-string v0, "IMS_SIP_ALTERNATE_EMERGENCY_CALL"

    return-object v0

    .line 486
    :pswitch_3b
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 484
    :pswitch_3e
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL"

    return-object v0

    .line 482
    :pswitch_41
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_USSD"

    return-object v0

    .line 480
    :pswitch_44
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_SS"

    return-object v0

    .line 478
    :pswitch_47
    const-string v0, "DIAL_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 526
    :pswitch_4a
    const-string v0, "NORMAL_UNSPECIFIED"

    return-object v0

    .line 524
    :pswitch_4d
    const-string v0, "EMERGENCY_PERM_FAILURE"

    return-object v0

    .line 522
    :pswitch_50
    const-string v0, "EMERGENCY_TEMP_FAILURE"

    return-object v0

    .line 520
    :pswitch_53
    const-string v0, "DIAL_LOW_BATTERY"

    return-object v0

    .line 518
    :pswitch_56
    const-string v0, "LOW_BATTERY"

    return-object v0

    .line 516
    :pswitch_59
    const-string v0, "IMS_ACCESS_BLOCKED"

    return-object v0

    .line 514
    :pswitch_5c
    const-string v0, "WIFI_LOST"

    return-object v0

    .line 512
    :pswitch_5f
    const-string v0, "IMEI_NOT_ACCEPTED"

    return-object v0

    .line 510
    :pswitch_62
    const-string v0, "DIALED_CALL_FORWARDING_WHILE_ROAMING"

    return-object v0

    .line 508
    :pswitch_65
    const-string v0, "DATA_LIMIT_REACHED"

    return-object v0

    .line 506
    :pswitch_68
    const-string v0, "DATA_DISABLED"

    return-object v0

    .line 504
    :pswitch_6b
    const-string v0, "MAXIMUM_NUMER_OF_CALLS_REACHED"

    return-object v0

    .line 502
    :pswitch_6e
    const-string v0, "ANSWERED_ELSEWHERE"

    return-object v0

    .line 500
    :pswitch_71
    const-string v0, "CALL_PULLED"

    return-object v0

    .line 498
    :pswitch_74
    const-string v0, "VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED"

    return-object v0

    .line 496
    :pswitch_77
    const-string v0, "CDMA_ALREADY_ACTIVATED"

    return-object v0

    .line 476
    :pswitch_7a
    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    .line 474
    :pswitch_7d
    const-string v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    .line 472
    :pswitch_80
    const-string v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    .line 494
    :pswitch_83
    const-string v0, "IMS_MERGED_SUCCESSFULLY"

    return-object v0

    .line 492
    :pswitch_86
    const-string v0, "OUTGOING_CANCELED"

    return-object v0

    .line 490
    :pswitch_89
    const-string v0, "OUTGOING_FAILURE"

    return-object v0

    .line 470
    :pswitch_8c
    const-string v0, "EXITED_ECM"

    return-object v0

    .line 468
    :pswitch_8f
    const-string v0, "CDMA_CALL_LOST"

    return-object v0

    .line 466
    :pswitch_92
    const-string v0, "VOICEMAIL_NUMBER_MISSING"

    return-object v0

    .line 464
    :pswitch_95
    const-string v0, "DIALED_MMI"

    return-object v0

    .line 462
    :pswitch_98
    const-string v0, "NO_PHONE_NUMBER_SUPPLIED"

    return-object v0

    .line 460
    :pswitch_9b
    const-string v0, "EMERGENCY_ONLY"

    return-object v0

    .line 488
    :pswitch_9e
    const-string v0, "ERROR_UNSPECIFIED"

    return-object v0

    .line 458
    :pswitch_a1
    const-string v0, "CDMA_ACCESS_BLOCKED"

    return-object v0

    .line 456
    :pswitch_a4
    const-string v0, "CDMA_NOT_EMERGENCY"

    return-object v0

    .line 454
    :pswitch_a7
    const-string v0, "CDMA_PREEMPTED"

    return-object v0

    .line 452
    :pswitch_aa
    const-string v0, "CDMA_ACCESS_FAILURE"

    return-object v0

    .line 450
    :pswitch_ad
    const-string v0, "CDMA_RETRY_ORDER"

    return-object v0

    .line 448
    :pswitch_b0
    const-string v0, "CDMA_SO_REJECT"

    return-object v0

    .line 446
    :pswitch_b3
    const-string v0, "CDMA_REORDER"

    return-object v0

    .line 444
    :pswitch_b6
    const-string v0, "CDMA_INTERCEPT"

    return-object v0

    .line 442
    :pswitch_b9
    const-string v0, "CDMA_DROP"

    return-object v0

    .line 440
    :pswitch_bc
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    return-object v0

    .line 438
    :pswitch_bf
    const-string v0, "UNOBTAINABLE_NUMBER"

    return-object v0

    .line 436
    :pswitch_c2
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    return-object v0

    .line 434
    :pswitch_c5
    const-string v0, "CS_RESTRICTED_NORMAL"

    return-object v0

    .line 432
    :pswitch_c8
    const-string v0, "CS_RESTRICTED"

    return-object v0

    .line 430
    :pswitch_cb
    const-string v0, "FDN_BLOCKED"

    return-object v0

    .line 428
    :pswitch_ce
    const-string v0, "CALL_BARRED"

    return-object v0

    .line 426
    :pswitch_d1
    const-string v0, "ICC_ERROR"

    return-object v0

    .line 424
    :pswitch_d4
    const-string v0, "OUT_OF_SERVICE"

    return-object v0

    .line 422
    :pswitch_d7
    const-string v0, "POWER_OFF"

    return-object v0

    .line 420
    :pswitch_da
    const-string v0, "INCOMING_REJECTED"

    return-object v0

    .line 418
    :pswitch_dd
    const-string v0, "LIMIT_EXCEEDED"

    return-object v0

    .line 416
    :pswitch_e0
    const-string v0, "LOST_SIGNAL"

    return-object v0

    .line 414
    :pswitch_e3
    const-string v0, "TIMED_OUT"

    return-object v0

    .line 412
    :pswitch_e6
    const-string v0, "SERVER_ERROR"

    return-object v0

    .line 410
    :pswitch_e9
    const-string v0, "OUT_OF_NETWORK"

    return-object v0

    .line 408
    :pswitch_ec
    const-string v0, "INVALID_CREDENTIALS"

    return-object v0

    .line 406
    :pswitch_ef
    const-string v0, "SERVER_UNREACHABLE"

    return-object v0

    .line 404
    :pswitch_f2
    const-string v0, "NUMBER_UNREACHABLE"

    return-object v0

    .line 402
    :pswitch_f5
    const-string v0, "INVALID_NUMBER"

    return-object v0

    .line 400
    :pswitch_f8
    const-string v0, "CONGESTION"

    return-object v0

    .line 398
    :pswitch_fb
    const-string v0, "BUSY"

    return-object v0

    .line 396
    :pswitch_fe
    const-string v0, "LOCAL"

    return-object v0

    .line 394
    :pswitch_101
    const-string v0, "NORMAL"

    return-object v0

    .line 392
    :pswitch_104
    const-string v0, "INCOMING_MISSED"

    return-object v0

    .line 390
    :pswitch_107
    const-string v0, "NOT_DISCONNECTED"

    return-object v0

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_3
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_3
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method
