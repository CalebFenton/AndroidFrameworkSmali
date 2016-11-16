.class public Landroid/telephony/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# static fields
.field public static final ANSWERED_ELSEWHERE:I = 0x34

.field public static final BUSY:I = 0x4

.field public static final CALL_BARRED:I = 0x14

.field public static final CALL_PULLED:I = 0x33

.field public static final CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final CDMA_ACCESS_FAILURE:I = 0x20

.field public static final CDMA_ALREADY_ACTIVATED:I = 0x31

.field public static final CDMA_CALL_LOST:I = 0x29

.field public static final CDMA_DROP:I = 0x1b

.field public static final CDMA_INTERCEPT:I = 0x1c

.field public static final CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final CDMA_NOT_EMERGENCY:I = 0x22

.field public static final CDMA_PREEMPTED:I = 0x21

.field public static final CDMA_REORDER:I = 0x1d

.field public static final CDMA_RETRY_ORDER:I = 0x1f

.field public static final CDMA_SO_REJECT:I = 0x1e

.field public static final CONGESTION:I = 0x5

.field public static final CS_RESTRICTED:I = 0x16

.field public static final CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final CS_RESTRICTED_NORMAL:I = 0x17

.field public static final DATA_DISABLED:I = 0x36

.field public static final DATA_LIMIT_REACHED:I = 0x37

.field public static final DIALED_MMI:I = 0x27

.field public static final DIALED_ON_WRONG_SLOT:I = 0x38

.field public static final DIAL_MODIFIED_TO_DIAL:I = 0x30

.field public static final DIAL_MODIFIED_TO_SS:I = 0x2f

.field public static final DIAL_MODIFIED_TO_USSD:I = 0x2e

.field public static final EMERGENCY_ONLY:I = 0x25

.field public static final ERROR_UNSPECIFIED:I = 0x24

.field public static final EXITED_ECM:I = 0x2a

.field public static final FDN_BLOCKED:I = 0x15

.field public static final ICC_ERROR:I = 0x13

.field public static final IMS_MERGED_SUCCESSFULLY:I = 0x2d

.field public static final INCOMING_MISSED:I = 0x1

.field public static final INCOMING_REJECTED:I = 0x10

.field public static final INVALID_CREDENTIALS:I = 0xa

.field public static final INVALID_NUMBER:I = 0x7

.field public static final LIMIT_EXCEEDED:I = 0xf

.field public static final LOCAL:I = 0x3

.field public static final LOST_SIGNAL:I = 0xe

.field public static final MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x35

.field public static final MAXIMUM_VALID_VALUE:I = 0x38

.field public static final MINIMUM_VALID_VALUE:I = 0x0

.field public static final MMI:I = 0x6

.field public static final NORMAL:I = 0x2

.field public static final NOT_DISCONNECTED:I = 0x0

.field public static final NOT_VALID:I = -0x1

.field public static final NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final NUMBER_UNREACHABLE:I = 0x8

.field public static final OUTGOING_CANCELED:I = 0x2c

.field public static final OUTGOING_FAILURE:I = 0x2b

.field public static final OUT_OF_NETWORK:I = 0xb

.field public static final OUT_OF_SERVICE:I = 0x12

.field public static final POWER_OFF:I = 0x11

.field public static final SERVER_ERROR:I = 0xc

.field public static final SERVER_UNREACHABLE:I = 0x9

.field public static final TIMED_OUT:I = 0xd

.field public static final UNOBTAINABLE_NUMBER:I = 0x19

.field public static final VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED:I = 0x32

.field public static final VOICEMAIL_NUMBER_MISSING:I = 0x28


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "cause"    # I

    #@0
    .prologue
    .line 260
    packed-switch p0, :pswitch_data_0

    #@3
    .line 374
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "INVALID: "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 262
    :pswitch_1
    const-string/jumbo v0, "NOT_DISCONNECTED"

    #@1b
    return-object v0

    #@1c
    .line 264
    :pswitch_2
    const-string/jumbo v0, "INCOMING_MISSED"

    #@1f
    return-object v0

    #@20
    .line 266
    :pswitch_3
    const-string/jumbo v0, "NORMAL"

    #@23
    return-object v0

    #@24
    .line 268
    :pswitch_4
    const-string/jumbo v0, "LOCAL"

    #@27
    return-object v0

    #@28
    .line 270
    :pswitch_5
    const-string/jumbo v0, "BUSY"

    #@2b
    return-object v0

    #@2c
    .line 272
    :pswitch_6
    const-string/jumbo v0, "CONGESTION"

    #@2f
    return-object v0

    #@30
    .line 274
    :pswitch_7
    const-string/jumbo v0, "INVALID_NUMBER"

    #@33
    return-object v0

    #@34
    .line 276
    :pswitch_8
    const-string/jumbo v0, "NUMBER_UNREACHABLE"

    #@37
    return-object v0

    #@38
    .line 278
    :pswitch_9
    const-string/jumbo v0, "SERVER_UNREACHABLE"

    #@3b
    return-object v0

    #@3c
    .line 280
    :pswitch_a
    const-string/jumbo v0, "INVALID_CREDENTIALS"

    #@3f
    return-object v0

    #@40
    .line 282
    :pswitch_b
    const-string/jumbo v0, "OUT_OF_NETWORK"

    #@43
    return-object v0

    #@44
    .line 284
    :pswitch_c
    const-string/jumbo v0, "SERVER_ERROR"

    #@47
    return-object v0

    #@48
    .line 286
    :pswitch_d
    const-string/jumbo v0, "TIMED_OUT"

    #@4b
    return-object v0

    #@4c
    .line 288
    :pswitch_e
    const-string/jumbo v0, "LOST_SIGNAL"

    #@4f
    return-object v0

    #@50
    .line 290
    :pswitch_f
    const-string/jumbo v0, "LIMIT_EXCEEDED"

    #@53
    return-object v0

    #@54
    .line 292
    :pswitch_10
    const-string/jumbo v0, "INCOMING_REJECTED"

    #@57
    return-object v0

    #@58
    .line 294
    :pswitch_11
    const-string/jumbo v0, "POWER_OFF"

    #@5b
    return-object v0

    #@5c
    .line 296
    :pswitch_12
    const-string/jumbo v0, "OUT_OF_SERVICE"

    #@5f
    return-object v0

    #@60
    .line 298
    :pswitch_13
    const-string/jumbo v0, "ICC_ERROR"

    #@63
    return-object v0

    #@64
    .line 300
    :pswitch_14
    const-string/jumbo v0, "CALL_BARRED"

    #@67
    return-object v0

    #@68
    .line 302
    :pswitch_15
    const-string/jumbo v0, "FDN_BLOCKED"

    #@6b
    return-object v0

    #@6c
    .line 304
    :pswitch_16
    const-string/jumbo v0, "CS_RESTRICTED"

    #@6f
    return-object v0

    #@70
    .line 306
    :pswitch_17
    const-string/jumbo v0, "CS_RESTRICTED_NORMAL"

    #@73
    return-object v0

    #@74
    .line 308
    :pswitch_18
    const-string/jumbo v0, "CS_RESTRICTED_EMERGENCY"

    #@77
    return-object v0

    #@78
    .line 310
    :pswitch_19
    const-string/jumbo v0, "UNOBTAINABLE_NUMBER"

    #@7b
    return-object v0

    #@7c
    .line 312
    :pswitch_1a
    const-string/jumbo v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    #@7f
    return-object v0

    #@80
    .line 314
    :pswitch_1b
    const-string/jumbo v0, "CDMA_DROP"

    #@83
    return-object v0

    #@84
    .line 316
    :pswitch_1c
    const-string/jumbo v0, "CDMA_INTERCEPT"

    #@87
    return-object v0

    #@88
    .line 318
    :pswitch_1d
    const-string/jumbo v0, "CDMA_REORDER"

    #@8b
    return-object v0

    #@8c
    .line 320
    :pswitch_1e
    const-string/jumbo v0, "CDMA_SO_REJECT"

    #@8f
    return-object v0

    #@90
    .line 322
    :pswitch_1f
    const-string/jumbo v0, "CDMA_RETRY_ORDER"

    #@93
    return-object v0

    #@94
    .line 324
    :pswitch_20
    const-string/jumbo v0, "CDMA_ACCESS_FAILURE"

    #@97
    return-object v0

    #@98
    .line 326
    :pswitch_21
    const-string/jumbo v0, "CDMA_PREEMPTED"

    #@9b
    return-object v0

    #@9c
    .line 328
    :pswitch_22
    const-string/jumbo v0, "CDMA_NOT_EMERGENCY"

    #@9f
    return-object v0

    #@a0
    .line 330
    :pswitch_23
    const-string/jumbo v0, "CDMA_ACCESS_BLOCKED"

    #@a3
    return-object v0

    #@a4
    .line 332
    :pswitch_24
    const-string/jumbo v0, "EMERGENCY_ONLY"

    #@a7
    return-object v0

    #@a8
    .line 334
    :pswitch_25
    const-string/jumbo v0, "NO_PHONE_NUMBER_SUPPLIED"

    #@ab
    return-object v0

    #@ac
    .line 336
    :pswitch_26
    const-string/jumbo v0, "DIALED_MMI"

    #@af
    return-object v0

    #@b0
    .line 338
    :pswitch_27
    const-string/jumbo v0, "VOICEMAIL_NUMBER_MISSING"

    #@b3
    return-object v0

    #@b4
    .line 340
    :pswitch_28
    const-string/jumbo v0, "CDMA_CALL_LOST"

    #@b7
    return-object v0

    #@b8
    .line 342
    :pswitch_29
    const-string/jumbo v0, "EXITED_ECM"

    #@bb
    return-object v0

    #@bc
    .line 344
    :pswitch_2a
    const-string/jumbo v0, "DIAL_MODIFIED_TO_USSD"

    #@bf
    return-object v0

    #@c0
    .line 346
    :pswitch_2b
    const-string/jumbo v0, "DIAL_MODIFIED_TO_SS"

    #@c3
    return-object v0

    #@c4
    .line 348
    :pswitch_2c
    const-string/jumbo v0, "DIAL_MODIFIED_TO_DIAL"

    #@c7
    return-object v0

    #@c8
    .line 350
    :pswitch_2d
    const-string/jumbo v0, "ERROR_UNSPECIFIED"

    #@cb
    return-object v0

    #@cc
    .line 352
    :pswitch_2e
    const-string/jumbo v0, "OUTGOING_FAILURE"

    #@cf
    return-object v0

    #@d0
    .line 354
    :pswitch_2f
    const-string/jumbo v0, "OUTGOING_CANCELED"

    #@d3
    return-object v0

    #@d4
    .line 356
    :pswitch_30
    const-string/jumbo v0, "IMS_MERGED_SUCCESSFULLY"

    #@d7
    return-object v0

    #@d8
    .line 358
    :pswitch_31
    const-string/jumbo v0, "CDMA_ALREADY_ACTIVATED"

    #@db
    return-object v0

    #@dc
    .line 360
    :pswitch_32
    const-string/jumbo v0, "VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED"

    #@df
    return-object v0

    #@e0
    .line 362
    :pswitch_33
    const-string/jumbo v0, "CALL_PULLED"

    #@e3
    return-object v0

    #@e4
    .line 364
    :pswitch_34
    const-string/jumbo v0, "ANSWERED_ELSEWHERE"

    #@e7
    return-object v0

    #@e8
    .line 366
    :pswitch_35
    const-string/jumbo v0, "MAXIMUM_NUMER_OF_CALLS_REACHED"

    #@eb
    return-object v0

    #@ec
    .line 368
    :pswitch_36
    const-string/jumbo v0, "DATA_DISABLED"

    #@ef
    return-object v0

    #@f0
    .line 370
    :pswitch_37
    const-string/jumbo v0, "DATA_LIMIT_REACHED"

    #@f3
    return-object v0

    #@f4
    .line 372
    :pswitch_38
    const-string/jumbo v0, "DIALED_ON_WRONG_SLOT"

    #@f7
    return-object v0

    #@f8
    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_2d
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
    .end packed-switch
.end method
